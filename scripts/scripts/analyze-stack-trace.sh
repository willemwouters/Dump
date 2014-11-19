#! /bin/sh

if [ -z $1 ]; then
    printf "\033[31;1mScript to parse Android tombstones.\033[0m\n"
    printf "\033[31;1mRequires 2 parameters: \033[0m\n"
    printf "\033[33;1m  <path_to_library>\033[0m: Path to library that has crashed. \n"
    printf "\033[33;1m  [path to tombstone]\033[0m: Path to tombstone file or logcat report containing core dump.\n"
    printf "\033[0m      If none tombstone will be specified, script will wait for user to paste logcat data to console. \n"   
    printf "\033[0m\n" 
    printf "\033[0m         Please note that this script will parse all core dumps from file. \n"
    printf "\033[0m\n"
    
    exit 1
fi

if [ -z $2 ]; then

    echo "Please paste logcat data now and input end mark (Linux: Ctr+D, Windows: Ctr+Z)."
    while read line
    do
        echo $line >> logcat.txt 
    done
    echo "Analysing tombstone"
    echo ""
    echo ""
    python parse_stack.py $1 logcat.txt 
    rm logcat.txt
else
    echo "Analysing tombstone"
    python parse_stack.py $1 $2
fi
