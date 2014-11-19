#!/bin/bash

if test "$1" = ""; then
  echo "usage: analyseLog.sh [file|folder]"
  exit 0
fi

if [ -e "$1" ]
then
  if [ -d "$1" ]
  then    
    echo "analysing $1/logcat-main*"
    cat $1/logcat-main* > $1/tmp_logcat.txt
    log_file=$1/tmp_logcat.txt
  else
    echo "analysing $1"
    log_file=$1
  fi
else
  echo "$1 does not exist"
  echo "usage: analyseLog.sh [file|folder]"
  exit 0
fi

#Kernel stuff
i=0
string[$i]="wakeup (3->0)";				description[$i]="Resume" ; let "i = $i + 1"
string[$i]="sleep (0->3)";				description[$i]="Suspend"; let "i = $i + 1"
string[$i]="Linux version";				description[$i]="Cold boot"; let "i = $i + 1"
string[$i]="SYSTEM_OFF Timer expired";  		description[$i]="Suspend Watchdog triggered"; let "i = $i + 1"
string[$i]="Kernel panic"; let "i = $i + 1"
string[$i]="Internal error: Oops"; let "i = $i + 1"
string[$i]="signal 11"; let "i = $i + 1"
string[$i]="Backtrace"; let "i = $i + 1"
string[$i]="HWRecoveryResetSGX"; let "i = $i + 1"

printf "%-7s," "hits"
printf "%-60s," "grep -c string"
printf "%-7s\n" "description"

for (( i = 0 ; i < ${#string[@]} ; i++ ))
do
  val=$(grep -c "${string[$i]}" ${log_file})
  if [ $i -le 3 -o $val -gt 0 ]
  then
    printf "%-7s," ${val}
    printf "%-60s," "${string[$i]}"
    printf "%s\n" "${description[$i]}"
  fi
done

#logcat stuff
i=0
mystring[$i]="FATAL EXCEPTION";           			mydescription[$i]="Fatal Exception"; let "i = $i + 1"
mystring[$i]="DEBUG.*>>> .* <<<";	                        mydescription[$i]="Tombstones"; let "i = $i + 1"
mystring[$i]="ANR in";						mydescription[$i]="ANR traces"; let "i = $i + 1"
mystring[$i]="Watchdog_N: dumpKernelStacks";  		        mydescription[$i]="Watchdog timeout"; let "i = $i + 1"
mystring[$i]="WATCHDOG TRIGGERED BY PROCESS"                    mydescription[$i]="Watchdog timeout"; let "i = $i + 1"
mystring[$i]="spin on suspend";					mydescription[$i]="spin on suspend"; let "i = $i + 1"
mystring[$i]="ActivityManager.*Kill";                     	mydescription[$i]="Activity manager killing process"; let "i = $i + 1"
mystring[$i]="sigkill";						mydescription[$i]="Process killed by android"; let "i = $i + 1"
mystring[$i]="Sending signal";			 		mydescription[$i]="Process sending signal"; let "i = $i + 1"
mystring[$i]="Sending SIGHUP";                            	mydescription[$i]="Process sending SIGHUP"; let "i = $i + 1"
mystring[$i]="Process .* has died";                       	mydescription[$i]="Process has died"; let "i = $i + 1"
mystring[$i]="Process com.tomtom.navigation .* has died";       mydescription[$i]="Process navigation has died"; let "i = $i + 1"
mystring[$i]="E/ActivityThread(\|E ActivityThread("		mydescription[$i]="Activity in not unregistering from a service"; let "i = $i + 1"
mystring[$i]="System memory is running low"               	mydescription[$i]="System memory is running low"; let "i = $i + 1"
mystring[$i]="ERROR: failed to suspend the VehicleDaemon"	mydescription[$i]="ERROR: failed to suspend the VehicleDaemon"; let "i = $i + 1"
mystring[$i]="ERROR: Could not unwind"	                        mydescription[$i]="ERROR: Could not unwind the gadgetstack! Resetting now!"; let "i = $i + 1"
mystring[$i]="Remount retValue(0)"; 				mydescription[$i]="re-load map ok"; let "i = $i + 1"
mystring[$i]="Remount retValue(-1)"; 			        mydescription[$i]="re-load map not ok"; let "i = $i + 1"
mystring[$i]="Adding gadget CBrowseMaps"; 		 	mydescription[$i]="BrowseMap gadget started"; let "i = $i + 1"
mystring[$i]="Adding gadget CLoadMap";				mydescription[$i]="LoadMap gadget started"; let "i = $i + 1"
mystring[$i]="CLoadMap::OnMapLoaded";				mydescription[$i]="LoadMap gadget loaded map"; let "i = $i + 1"
mystring[$i]="no maps found"; 					mydescription[$i]="no maps found"; let "i = $i + 1"
mystring[$i]="OnSuspend enter iMapLoaded(0)"; 		        mydescription[$i]="map not loaded"; let "i = $i + 1"
mystring[$i]="OnSuspend enter iMapLoaded(1)"; 		        mydescription[$i]="map loaded"; let "i = $i + 1"
#vehicledaemon stuff:
mystring[$i]="SUSPEND_RESUME: Sus"; let "i = $i + 1"
mystring[$i]="SUSPEND_RESUME: res"; let "i = $i + 1"  			
#system state
mystring[$i]="Entering state: USER_PERCEIVED_OFF"; let "i = $i + 1"
mystring[$i]="Leaving state: USER_PERCEIVED_OFF"; let "i = $i + 1"
mystring[$i]="Entering state: USER_ON"; let "i = $i + 1"
mystring[$i]="Leaving state: USER_ON"; let "i = $i + 1"
mystring[$i]="Entering state: SPLASH_SCREEN"; let "i = $i + 1"
mystring[$i]="Leaving state: SPLASH_SCREEN"; let "i = $i + 1"
mystring[$i]="Entering state: USER_WELCOME"; let "i = $i + 1"
mystring[$i]="Leaving state: USER_WELCOME"; let "i = $i + 1"

printf "================================================================================================\n"

for (( i = 0 ; i < ${#mystring[@]} ; i++ ))
do
  val=$(grep -c "${mystring[$i]}" ${log_file})  
  if [ $i -le 2 -o $val -gt 0 ]
  then
    printf "%-7s," ${val}
    printf "%-60s," "${mystring[$i]}"
    printf "%s\n" "${mydescription[$i]}"
  fi
done

echo "-------------------------------------------------------------------------------------------------"
echo "List Tombstones:"
grep "DEBUG.*>>> .* <<<" ${log_file}
echo "-------------------------------------------------------------------------------------------------"
echo "List Android runtime problems, i.e. FATAL EXCEPTIONS:"
grep "E/AndroidRuntime\|E AndroidRuntime" ${log_file}
echo "-------------------------------------------------------------------------------------------------"
echo "List ANR problems:"
grep "ANR in\|ActivityManager: Reason:" ${log_file}
echo "-------------------------------------------------------------------------------------------------"
echo "List IntentReceiverLeaked problems:"
grep "E/ActivityThread\|E ActivityThread" ${log_file}
echo "-------------------------------------------------------------------------------------------------"

if [ -e "$1/tmp_logcat.txt" ]
then
  rm $1/tmp_logcat.txt
fi


