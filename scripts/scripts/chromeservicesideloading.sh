cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -chengdu -Dbuild.scope=ChromeService -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /system/framework/tomtom_sdk.jar
adb uninstall com.tomtom.ui.chrome
adb install /home/wouters/perforce/personal/Android/Common/Services/UserInterface/ChromeService/bin/chromeservice-debug.apk
adb reboot
