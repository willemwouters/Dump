cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -strasbourg -Dbuild.scope=SpeechDialogClient -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.speechdialog.client
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /data/sideloading/tomtom_sdk.jar
adb install /home/wouters/perforce/personal/Android/Common/Apps/SpeechDialogClient/bin/SpechbachClient-debug.apk
adb reboot
