cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -stuttgart -Dbuild.scope=KeyboardService -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.apparch.keyboard
adb install /home/wouters/perforce/personal/Android/Common/Services/UserInterface/KeyboardService/bin/KeyboardService-debug.apk
adb reboot
