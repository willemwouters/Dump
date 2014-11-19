cd /home/wouters/perforce/personal/Android/Build
./build-all.sh clean compile movinand -stuttgart -debug -Dbuild.maxThreads=12 -Dbuild.nativeThreads=12 -nop4; notify-send "Build process" "The Build is Successful" -i /usr/share/pixmaps/gnome-term.png -t 5000
nautilus ./target/stuttgart/movinand_image
