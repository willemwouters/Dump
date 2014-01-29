cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -stuttgart -Dbuild.scope=ChromeService -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.ui.chrome
adb install /home/wouters/perforce/personal/Android/Common/Services/UserInterface/ChromeService/bin/chromeservice-debug.apk
