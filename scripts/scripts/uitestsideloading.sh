cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -strasbourg -Dbuild.scope=UITest -debug -nop4 -Dbuild.maxThreads=6 -Dbuild.nativeThreads=6; notify-send --urgency=normal -i echo "Build Finished"
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /data/sideloading/tomtom_sdk.jar
adb uninstall com.tomtom.uitest
adb install /home/wouters/perforce/personal/Android/AddOns/Examples/UITest/bin/UITest-debug.apk
adb reboot
