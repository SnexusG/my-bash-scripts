#!/usr/bin/bash

cat > script.py << 'END_SCRIPT'
import os
path = os.path.abspath(os.getcwd()) + "/Downloads"
curr_dir = os.listdir(path)

if len(curr_dir) == 0:
	print("directory is empty")
else:
	print("directory not empty")
END_SCRIPT

python3 script.py
rm script.py
