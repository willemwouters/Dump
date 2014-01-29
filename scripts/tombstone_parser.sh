#!/bin/bash
# 
# tombstone_parser.sh <stripped_or_unstripped_binary>
# tombstone_parser.sh <stripped_binary> <unstripped_binary>
#
# Allows user to paste an Android stacktrace and outputs addr2line information 
# 
# With one file as an argument, the script uses the addresses from the stack trace
# and simply calls addr2line on the file.
#
# With two arguments, the script will take the function address and the offset of the
# individual stacktrace entries in the stripped binary and apply these to the
# unstripped binary in order to get line information.
#
# Needed: wcalc or bc (for hex arithmetic), sed, awk

# Enable VERBOSE to also print addresses 
VERBOSE=0	
TMP_FILE="$HOME/_tombstone_parser.tmpfile"

print_usage()
{
	echo ""
	echo "Usage: $0 <original binary> [debug binary]"
	echo "  In case you specify two binaries, symbols from the second binary will be used to"
	echo "  find line number information, using the offset of the function in the original."
	echo "  Make sure your debug binary is as close to the original as possible so you're"
	echo "  relatively sure that the files haven't changed."
	echo ""
	echo "  This script can also be used with a single binary, if you happen to have the"
	echo "  unstripped version of the binary that was used, or if only getting the function"
	echo "  name suffices."
}

die()
{
	exit $@
}

ctrl_c()
{
	if [ -e $TMP_FILE ]; then
		rm $TMP_FILE
	fi

	echo "Exiting.."
	exit 0
}

assert_file()
{
	if [ ! -e $@ ]; then
		echo "File doesn't exist ($@)"
		print_usage
		die 2
	fi

	file $@ |grep "ELF" > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "File doesn't seem to be an ELF binary ($@)"
		print_usage
		die 2
	fi
}

check_for_necessary_programs()
{
	# Test for bc or wcalc
	wcalc --version > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		bc --version > /dev/null 2>/dev/null
		if [ $? -ne 0 ]; then
			echo 
			echo "You need either 'bc' or 'wcalc' in order to use this script"
			echo "(aptitude install bc, apt-get install bc, emerge bc, etc.)"
			echo "(aptitude install wcalc, apt-get install wcalc, emerge wcalc, etc.)"
			echo 
			die 2
		fi
		CALC="bc"
	else
		CALC="wcalc"
	fi

	# Test for `file'
	file --help > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		echo 
		echo "You need 'file' in order to use this script"
		echo "(aptitude install file, apt-get install file, emerge file, etc.)"
		echo 
		die 2
	fi

	# Test for `sed'
	sed --version > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		echo 
		echo "You need 'sed' in order to use this script"
		echo "(aptitude install sed, apt-get install sed, emerge sed, etc.)"
		echo 
		die 2
	fi

	# Test for awk
	awk --version > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		echo 
		echo "You need 'awk' (probably in the 'gawk' package) in order to use this script"
		echo "(aptitude install gawk, apt-get install gawk, emerge gawk, etc.)"
		echo 
		die 2
	fi

	# Test for toolchain
	arm-linux-androideabi-objdump --version > /dev/null 2>/dev/null
	if [ $? -ne 0 ]; then
		# Test for toolchain in CT_DEVENV
		$CT_DEVENV_HOME/Linux/Android/ndk6/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/arm-linux-androideabi-objdump --version > /dev/null 2>/dev/null
		if [ $? -ne 0 ]; then
			echo 
			echo "Couldn't find arm-linux-androideabi toolchain and CT_DEVENV_HOME. Please make sure your toolchain is"
			echo "added to your path or your CT_DEVENV_HOME variable is properly set."
			echo
			echo "The toolchain can be found in:"
			echo "<path-to-mfd-devenv>/Linux/Android/ndk6/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/"
			echo 
			die 2
		else
			# Found toolchain in CT_DEVENV_HOME, add it to path
			echo "Found toolchain in CT_DEVENV_HOME"
			set PATH=$PATH:$CT_DEVENV_HOME/Linux/Android/ndk6/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/
		fi
	fi
}

process_line()
{
	if [ $MODE -eq 1 ]; then
		process_line_single "$@"
	elif [ $MODE -eq 2 ]; then
		process_line_double "$@"
	else
		# Shouldn't happen
		echo "No mode set!"
		die 22
	fi
}
process_line_single()
{
	ORIG_ADDR=`echo $1 | sed "s/.*#[0-9]* *pc *\([0-9a-f]*\).*/\1/g"`

	if [ "$ORIG_ADDR" = "$*" ]; then
		#echo Skipped: $*
		return
	fi

	echo "-------------------------------------------------------------------------------------------------------------"
	arm-linux-androideabi-addr2line -i -f -C -e $LIBFILEDEBUG $ORIG_ADDR
}


process_line_double()
{
	ORIG_ADDR=`echo $1 | sed "s/.*#[0-9]* *pc *\([0-9a-f]*\).*/\1/g"`

	if [ "$ORIG_ADDR" = "$*" ]; then
		#echo Skipped: $*
		return
	fi
	echo "-------------------------------------------------------------------------------------------------------------"

	LINERAW=`arm-linux-androideabi-addr2line -i -f -e $LIBFILE $ORIG_ADDR |head -1`

	# Escape '*' character as objdump/grep can't handle 'em
	LINE=`echo $LINERAW | sed 's/\*/\\\*/g'`

	if [ -z "$LINE" ]; then
		echo "Can't find function of address 0x$ORIG_ADDR; skipped"
		return
	fi

	ORIG_FUNCADDR=`arm-linux-androideabi-objdump -T $LIBFILE |awk '{ print \$1 " " \$6}' | grep "[0-9a-z] \\<$LINE\\>" |awk '{ print $1 }'`

	if [ ${#ORIG_FUNCADDR[@]} -gt 1 ]; then
		echo "Ambiguous result; multiple symbol addresses defined for $LINE:"
		echo $ORIG_FUNCADDR
		return
	elif [ ${#ORIG_FUNCADDR} -eq 0 ]; then
		echo "Function not found; wrong symbol file? ($@)"
		return
	fi

	if [ "x$CALC" = "xwcalc" ]; then
		OFFSET=`wcalc -q -h "0x$ORIG_ADDR - 0x$ORIG_FUNCADDR"`
	elif [ "x$CALC" = "xbc" ]; then
		STUPID_BC_UPPERCASE_LINE=`echo "$ORIG_ADDR - $ORIG_FUNCADDR" | tr '[a-f]' '[A-F]'`
		OFFSET=`echo "obase=16; ibase=16; $STUPID_BC_UPPERCASE_LINE"| bc -q`
	else
		echo "No calculator set!"
		die 22
	fi

	DEBUG_FUNCADDR=`arm-linux-androideabi-objdump -T $LIBFILEDEBUG |awk '{ print $1 " " $6}' | grep "\\<$LINE\\>" |awk '{ print $1 }'`

	if [ "x$CALC" = "xwcalc" ]; then
		DEBUG_ADDR=`wcalc -q -h "0x$DEBUG_FUNCADDR + $OFFSET"`
	elif [ "x$CALC" = "xbc" ]; then
		STUPID_BC_UPPERCASE_LINE=`echo "${DEBUG_FUNCADDR} + ${OFFSET}" | tr '[a-f]' '[A-F]'`
		DEBUG_ADDR=`echo "obase=16; ibase=16; $STUPID_BC_UPPERCASE_LINE"| bc -q`
	else
		echo "No calculator set!"
		die 22
	fi

	if [ "x$VERBOSE" = "x1" ]; then
		echo " > Function $LINERAW, original address: 0x$ORIG_ADDR (0x${ORIG_FUNCADDR,,}+${OFFSET,,}), debug function address: 0x$DEBUG_FUNCADDR"
	fi
	arm-linux-androideabi-addr2line -i -f -C -e $LIBFILEDEBUG ${DEBUG_ADDR,,}
}

#---------------------------- Start of script ----------------------------

check_for_necessary_programs

trap ctrl_c INT

if [ $# -eq 2 ]; then
	assert_file $1
	assert_file $2
	LIBFILE=$1
	LIBFILEDEBUG=$2

	if [ "x`file $2 | grep \"not stripped\"`" = "x" ]; then
		echo "File doesn't seem to be unstripped ($2)"
		print_usage
		die 22
	fi

	MODE=2
	echo "Using two-file mode"

elif [ $# -eq 1 ]; then
	assert_file $1
	LIBFILEDEBUG=$1

	if [ "x`file $1 | grep \"not stripped\"`" = "x" ]; then
		echo "File ($1) doesn't seem to be unstripped; full line information will not be available."
		echo "Consider finding an unstripped binary (it doesn't need to be from the same build, only roughly the same changelist)."
	fi
	
	MODE=1
	echo "Using single file mode"

else
	print_usage
	die 22
fi

echo "Paste tombstone and confirm with CTRL-D or exit with CTRL-C:"

while true
do
	echo > $TMP_FILE

	# Read until CTRL-D
	while read line
	do
		echo $line >> $TMP_FILE
	done

	echo "Analyzing.."
	echo ""
	cat $TMP_FILE | while read line
	do
		process_line "$line"
	done

	echo "-------------------------------------------------------------------------------------------------------------"
	echo "Done."
	rm $TMP_FILE
done

