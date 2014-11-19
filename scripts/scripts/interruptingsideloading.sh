cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile -ctdev  -strasbourg -Dbuild.scope=InterruptingEventsService -debug -nop4 -Dbuild.maxThreads=6 -Dbuild.nativeThreads=6; notify-send "Build process" "The Build is Successful" -i /usr/share/pixmaps/gnome-term.png -t 5000
adb push ../Common/Libraries/TomTomSideLoading/bin/dex/tomtom_sdk.jar /data/sideloading/tomtom_sdk.jar
adb uninstall com.tomtom.ui.ie.service
adb install  /home/wouters/perforce/personal/Android/Common/Services/UserInterface/InterruptingEventsService/bin/InterruptingEvents_Service-debug.apk
adb reboot
