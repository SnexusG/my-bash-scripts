#!/usr/bin/bash
arg1=$1
if [[ "$arg1" == "-h" || "$arg1" == "-help" ]];
then echo 'Launches vscode in the go workspace'; exit 0;
fi;
cd; cd go/src/github.com/swapnil-gore/; 
code . && "Vscode launched in go workspace"