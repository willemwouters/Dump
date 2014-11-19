DIR=~/
PROJECT=MFD
cd $DIR
#displayon
FILENAME=$(adb shell dumpsys window windows | grep -E 'mFocusedApp' | sed -r 's/^.+\/(.+)}}/\1/g')
echo -n $FILENAME | grep "^\."
if [ $? -eq 0 ]; then
  FILENAME=$(adb shell dumpsys window windows | grep -E 'mFocusedApp' | sed -r 's/^.+ (.+)\/(.+)}}/\1\2/g')
fi

echo "Making screenshot"
LOCALE=$(adb shell getprop persist.sys.language)
adb shell am broadcast -a com.tomtom.ui.TITLE_EVENT -n com.tomtom.ui.chrome/.TitleIntentReceiver -f 666 > /dev/null
TITLE=$(adb shell /system/bin/logcat -d | grep TitleIntentReceiver | tail -n 1 | sed -r 's/^.*title:(.*)$/\1/g' |  tr -d '\r' | tr -d '\n' )
TITLE=${TITLE// /_}

TITLE=$( echo "$TITLE" | iconv -c -f utf8 -t ascii )
TITLE=$( echo "$TITLE" | sed "s/'//g" )


FILENAME=$(echo -n $FILENAME| sed -r 's/\./_/g'  |  tr -d '\r' | tr -d '\n' )


 control_c()
# run if user hits control-c
{
  echo -en "\n*** Ouch! Exiting ***\n"
  pkill feh
  rm OUD
  rm $FULLNAME
  exit $?
}
# trap keyboard interrupt (control-c)
trap control_c SIGINT


EXT=".png"

HMI=$(adb shell getprop ro.product.assets | sed -r 's/framework-*(.*)-res.apk/\1/g'  |  tr -d '\r' | tr -d '\n' )
FULLNAME=${DIR}${FILENAME}_${TITLE}${EXT}
NAME=${FILENAME}_${TITLE}${EXT}
cd $DIR


screenshot.jar -d $FULLNAME



#smbclient '\\wouters-deb-links\samba' -U guest password -c "cd $PROJECT; mkdir $HMI; chmod 777 $HMI; cd $HMI; mkdir $LOCALE; chmod 777 $LOCALE; cd $LOCALE; put $NAME; chmod 777 $NAME"

#rm $FULLNAME
cd $DIR
