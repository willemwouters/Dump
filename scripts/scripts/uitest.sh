cd /home/wouters/perforce/personal/Android/Build
./build-all.sh compile -ctdev  -strasbourg -Dbuild.scope=UITest -debug -nop4 -Dbuild.maxThreads=6 -Dbuild.nativeThreads=6; notify-send --urgency=normal -i echo "Build Finished"
adb uninstall com.tomtom.uitest
adb install /home/wouters/perforce/personal/Android/AddOns/Examples/UITest/bin/UITest-debug.apk
