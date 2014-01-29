cd ~/perforce/personal/CrossPlatform/Build
./build.sh -buildThreads=6 ARMV7 debug -cmakeParams=-mtune=cortex-a8 ttn
echo "Build Finished"
adb push /home/wouters/perforce/personal/CrossPlatform/Build/CMakeBuildOutput/ARMV7-Android/Debug/TTN/libttn.so /system/lib
if [ $? -eq 1 ]; then
echo "Try again...."
adb push /home/wouters/perforce/personal/CrossPlatform/Build/CMakeBuildOutput/ARMV7-Android/Debug/TTN/libttn.so /system/lib
fi
adb shell pkill navigation
