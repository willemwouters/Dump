#!/bin/bash

if test "$1" = ""; then
  echo "usage: analyseLog.sh [folder]"
  exit 0
fi

if [ -d "$1" ]
then
	printf "================================================================================================\n"
	printf "Analyzing dropbox files in $1\n"

	#dropbox stuff:
	number_of_crash_in_dropbox=`find $1 -name *crash@* | wc -l`
	number_of_tombstone_in_dropbox=`find $1 -name *TOMBSTONE@* | wc -l`
        number_of_anr_in_dropbox=`find $1 -name *anr@* | wc -l`
	number_of_wtf_in_dropbox=`find $1 -name *wtf@* | wc -l`
        number_of_watchdog_in_dropbox=`find $1 -name *watchdog@* | wc -l`
        number_of_boot_in_dropbox=`find $1 -name *BOOT@* | wc -l`
	printf "%-7s," ${number_of_crash_in_dropbox}
	printf "%-60s\n" "Number of crashes in dropbox"
	printf "%-7s," ${number_of_tombstone_in_dropbox}
	printf "%-60s\n" "Number of TOMBSTONEs in dropbox"
	printf "%-7s," ${number_of_anr_in_dropbox}
	printf "%-60s\n" "Number of ANRs in dropbox"
	printf "%-7s," ${number_of_wtf_in_dropbox}
	printf "%-60s\n" "Number of WTFs in dropbox"
	printf "%-7s," ${number_of_watchdog_in_dropbox}
	printf "%-60s\n" "Number of WATCHDOGs in dropbox"
	printf "%-7s," ${number_of_boot_in_dropbox}
	printf "%-60s\n" "Number of BOOTs in dropbox"

	echo "-------------------------------------------------------------------------------------------------"
	find $1 -name dropbox -exec ls -l {} \;

	if [ $number_of_crash_in_dropbox -gt 0 ]
	then
		echo "-------------------------------------------------------------------------------------------------"
		echo "Analyzing crahes in dropbox:"
		for crash_gz in `find $1 -name *crash@*.gz`
		do
		  gunzip -c ${crash_gz}
		done
		for crash_txt in `find $1 -name *crash@*.txt`
		do
		  cat ${crash_txt}
		done
	fi

	if [ $number_of_tombstone_in_dropbox -gt 0 ]
	then
		echo "-------------------------------------------------------------------------------------------------"
		echo "Analyzing TOMBSTONEs in dropbox:"
		for tombstone_gz in `find $1 -name *TOMBSTONE@*.gz`
		do
		  gunzip -c ${tombstone_gz} |  grep ">>>.*<<<"
		done
		for tombstone_txt in `find $1 -name *TOMBSTONE@*.txt`
		do
		  cat ${tombstone_txt} | grep ">>>.*<<<"
		done
	fi

	if [ $number_of_anr_in_dropbox -gt 0 ]
	then
		echo "-------------------------------------------------------------------------------------------------"
		echo "Analyzing ANRs in dropbox:"
		for anr_trace_gz in `find $1 -name *anr@*.gz`
		do
		  gunzip -c ${anr_trace_gz} | grep -B1 Subject
		done
		for anr_trace_txt in `find $1 -name *anr@*.txt`
		do
		  cat ${anr_trace_txt} | grep -B1 Subject
		done
	fi

	if [ $number_of_wtf_in_dropbox -gt 0 ]
	then
		echo "-------------------------------------------------------------------------------------------------"
		echo "Analyzing WTF (TerribleFailure) in dropbox:"
		for wtf_gz in `find $1 -name *wtf@*.gz`
		do
		  gunzip -c ${wtf_gz}
		done
		for wtf in `find $1 -name *wtf@*.txt`
		do
		  cat ${wtf}
		done
	fi
else
  echo "$1 does not exist"
  echo "usage: analyseDropbox.sh [folder]"
  exit 0
fi

