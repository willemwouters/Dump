cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -strasbourg -Dbuild.scope=SpeechDialogClient -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.speechdialog.client
adb install /home/wouters/perforce/personal/Android/Common/Apps/SpeechDialogClient/bin/SpechbachClient-debug.apk
adb shell am startservice -a com.tomtom.speechdialog.START_SERVICE
speechtest.sh
