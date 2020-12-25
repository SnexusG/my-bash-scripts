#!/usr/bin/bash

function delete_fun {
echo 'Deleting from downloads,pictures,videos and trash...';	
#delete all files from downloads dir
cd; cd Downloads; rm -rf *;
#delete all files from Pictures dir
cd; cd Pictures; rm -rf *;
#delete all videos from Videos dir
cd; cd Videos; rm -rf *;
#empty trash
rm -rf ~/.local/share/Trash/*
}

arg1=$1
if [[ "$arg1" == "-h" || "$arg1" == "-help" ]];
then echo 'Running this script deletes all files from Downloads, Pictures, Videos and trash foldder'
echo '-f deletes without warning'
echo '-h for help'
exit 0
fi; 

if [[ "$arg1" == "-f" ]];
then delete_fun
echo 'done'
else read -p "Are you sure you want to empty trash, Downloads, videos and pictures dir? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
delete_fun
echo 'done'
fi;
