cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -strasbourg -Dbuild.scope=KeyboardService -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /data/sideloading/tomtom_sdk.jar
adb uninstall com.tomtom.apparch.keyboard
adb install /home/wouters/perforce/personal/Android/Common/Services/UserInterface/KeyboardService/bin/KeyboardService-debug.apk
adb reboot
