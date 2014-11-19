cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -strasbourg -Dbuild.scope=HandsfreeApp -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.app.handsfree
adb install  /home/wouters/perforce/personal/Android/Common/Apps/HandsfreeApp/bin/HandsfreeApp-debug.apk
