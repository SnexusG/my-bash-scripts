#!/usr/bin/bash

function update_my_scripts {
printf '\nmy_scripts repo : \n\n'
cd 
cd my_scripts
if [[ `git status --porcelain` ]]; then
  # Changes
  printf 'changes in local repo : \n\n'
  git status	
  read -p 'add, commit and push to main?' confirm && [[ $confirm == [yY] ]]
  if [[ "$confirm" == [yY] ]]; then
  git add .
  git commit -m "new changes"
  git push origin main
  printf '\n------------\nUpdate complete\n\n'
  else echo 'git update cancelled for my_scripts repo'
  fi	
else
  # No changes
  echo 'no changes in local repo'
fi

}

update_my_scripts

