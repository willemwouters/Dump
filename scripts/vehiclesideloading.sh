cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -stuttgart -Dbuild.scope=VehicleApps -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /system/framework/tomtom_sdk.jar
adb uninstall com.tomtom.vehicle.apps
adb install /home/wouters/perforce/personal/Android/Automotive/Apps/VehicleApps/bin/vehicleapps-debug.apk
adb reboot
