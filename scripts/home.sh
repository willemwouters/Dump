cd /home/wouters/perforce/personal/Android/Build
./build-all.sh  compile -ctdev  -stuttgart -Dbuild.scope=FocusClientApp -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.focus.client
adb install  /home/wouters/perforce/personal/Android/Common/Apps/FocusClientApp/bin/FocusClientApp-debug.apk
adb shell pkill com
