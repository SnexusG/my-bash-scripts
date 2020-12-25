#!/usr/bin/bash
arg1=$1
if [[ "$arg1" == "-h" || "$arg1" == "-help" ]];
then echo 'Launches vscode, runs clear.py (optional), opens codeforces.com on browser' 
echo '-1 to skip clear.py'
echo '-h for help'
exit 0;
fi;	
echo 'Running script...'
code && echo "Launched vscode succesffully" >&2;
if [[ "$arg1" -ne -1 ]];	
then cd; cd Competitive\ Coding/; cd Competitive-Coding-Resources/; cd contest/; 
( python3 clear.py && echo "Cleared unnecessary files from folder" >&2 ) || echo "clear.py failed to start" >&2;
fi;
( firefox https://codeforces.com/ & disown firefox && echo "Codeforces open on firefox window now" >&2; ) || echo "Failed to start codeforces on browser" >&2;
