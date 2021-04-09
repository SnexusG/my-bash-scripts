#!/usr/bin/bash

while true;
do	
DIR="/home/swapnil-gore/others/wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
read -n1 -t300 < wakemeup 
done

