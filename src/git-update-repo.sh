#!/usr/bin/bash

function git_update_fun {
git add .
git commit -m "new changes"
git push origin main
}

function update_my_scripts_fun {
printf '\nmy_scripts repo : \n\n'
cd; cd my_scripts
if [[ `git status --porcelain` ]]; then
  # Changes
  printf 'changes in local repo : \n\n'
  git status	
  read -p 'add, commit and push to main? (Y/N) ' confirm && [[ $confirm == [yY] ]]
  if [[ "$confirm" == [yY] ]]; then
  git_update_fun
  clear
  printf '\n------------\nUpdate complete for my_scripts repo\n\n'
  else echo 'git update cancelled for my_scripts repo'
  fi	
else
  # No changes
  echo 'no changes in local repo'
fi

}

function update_comp_coding_res_fun {
printf '\nCompetitive-Coding-Resource repo : \n\n'
cd; cd Competitive\ Coding/; cd Competitive-Coding-Resources/;
if [[ `git status --porcelain` ]]; then
# Changes
printf 'changes in local repo : \n\n'
git status	
read -p 'add, commit and push to main? (Y/N) ' confirm && [[ $confirm == [yY] ]]
if [[ "$confirm" == [yY] ]]; then
git add .
git commit -m "new changes"
git push origin master && printf '\n------------\nUpdate complete for Competitive-Coding-Resources repo\n\n'
else echo 'git update cancelled for Competitive-Coding-Resources repo'
fi
else 
# No Changes
echo 'no changes in local repo'
fi
}

update_my_scripts_fun
update_comp_coding_res_fun