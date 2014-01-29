cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -chengdu -Dbuild.scope=VehicleApps -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.vehicle.apps
adb install /home/wouters/perforce/personal/Android/Automotive/Apps/VehicleApps/bin/vehicleapps-debug.apk
