#!/usr/bin/bash 


dpkg -s $l &> /dev/null

if [ $? -eq 0 ]; then
    echo "Package $1 is installed!"
else
    echo "Package $1 is NOT installed!"
    sudo apt install youtube-dl
fi

echo "1. If you want to download video"
echo "2. If you want to download audio/music"

read var 

echo "copy the url if you want to proceed with the downloading"
read url

if [[ $var=="1" ]];then
    youtube-dl $url
elif [[ $var=="2" ]];then
    youtube-dl -x --audio-format mp3 $url
else 
    echo error occured .
fi

echo done
