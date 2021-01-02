#!/usr/bin/bash


function check_empty_fun {
clear;
numFiles=$(ls | wc -l)
if [[ "$numFiles" -ne 0 ]]; then
ls
read -p "Delete the following files from $(pwd) ? (Y/N) " confirm
if [[ "$confirm" == [yY] ]]; then
rm -rf *
fi
fi
}

function delete_fun {
echo 'Deleting from downloads,pictures,videos and trash...';	
#delete all files from downloads dir
cd; cd Downloads; 
check_empty_fun
rm -rf *;

#delete all files from Pictures dir
cd; cd Pictures;
check_empty_fun;
#delete all videos from Videos dir
cd; cd Videos; 
check_empty_fun;
#empty trash
rm -rf ~/.local/share/Trash/*
#empty temp
cd; cd temp; 
check_empty_fun;
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
