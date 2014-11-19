cd /home/wouters/perforce/kz/Android/Build
./build-all.sh clean compile movinand -ctdev  -chengdu -release -nop4 -Dbuild.maxThreads=6 -Dbuild.nativeThreads=6; notify-send "Build process" "The Build is Successful" -i /usr/share/pixmaps/gnome-term.png -t 5000
nautilus ./target/strasbourg/movinand_image
