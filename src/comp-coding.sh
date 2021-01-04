#!/usr/bin/bash
arg1=$1
if [[ "$arg1" == "-h" || "$arg1" == "-help" ]];
then echo 'Launches vscode, runs clear.py (optional), opens codeforces.com on browser' 
echo '-1 to skip clear.py'
echo '-h for help'
exit 0;
fi;	
echo 'Running script...'
if [[ "$arg1" -ne -1 ]];	
then cd; cd Competitive\ Coding/; cd Competitive-Coding-Resources/; cd contest/; 
code . && echo "Launched vscode succesffully" >&2;
numFiles=$(ls -a | wc -l)
if [[ "$numFiles" > 2 ]]; then
echo "Clearing unnecessary files"
for i in $(ls -a); do
if [[ "$i" != 'template.cpp' && "$i" != 'clear.py' && "$i" != '.' && "$i" != '..' ]]; then
rm -r "$i"
fi;
done
fi;
fi;
( firefox https://codeforces.com/ & disown firefox && echo "Codeforces open on firefox window now" >&2; ) || echo "Failed to start codeforces on browser" >&2;
