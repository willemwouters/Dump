

for i in `cat listlang`; do
LANG=$( echo $i | cut -d';' -f1 )
COUNTRY=$( echo $i | cut -d';' -f2 )
    echo "Changing the languages to: $LANG"
    echo ""
    echo ""
displayon
	adb shell "setprop persist.sys.language $LANG; setprop persist.sys.country $COUNTRY; stop; sleep 5; start"
	adb wait-for-device
	sleep 40
	TT_CANbusControl_test uudt 0x58f 0x8002000000000000
	sleep 20
    displayon
    for i in `cat list`; do
		ACT=""
		INTENT=""
		ACT=$( echo $i | cut -d';' -f1 )
		INTENT=$( echo $i | cut -d';' -f2 )
		if [ "${INTENT}" != "${ACT}" ]; then
		    adb shell am start -a $INTENT -n $ACT
		else
		    adb shell am start -n $ACT
		fi
	    sleep 3
	    screenshot.sh
        sleep 3
	done

done
