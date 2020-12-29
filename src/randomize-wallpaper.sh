#!/usr/bin/bash

DIR="/home/swapnil-gore/others/wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"

