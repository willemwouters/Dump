cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -strasbourg -Dbuild.scope=HandsfreeApp -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /data/sideloading/tomtom_sdk.jar
adb uninstall com.tomtom.app.handsfree
adb install  /home/wouters/perforce/personal/Android/Common/Apps/HandsfreeApp/bin/HandsfreeApp-debug.apk
adb reboot
