cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -stuttgart -Dbuild.scope=MediaApp -debug -nop4; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.media
adb install /home/wouters/perforce/personal/Android/Common/Apps/MediaApp/bin/mediaapp-debug.apk
