cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -stuttgart -Dbuild.scope=ServicesApp -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.services
adb install /home/wouters/perforce/personal/Android/Common/Apps/ServicesApp/bin/servicesapp-debug.apk
