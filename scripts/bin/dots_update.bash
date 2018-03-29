#!/bin/bash

git add -f \
$HOME/.gitignore \
$HOME/.bashrc \
$HOME/.vimrc \
$HOME/scripts/ \
$HOME/README.md \
$HOME/.mozilla/firefox/*.default/chrome/userChrome.css \
$HOME/.mozilla/firefox/*.default/browser-extension-data/vim-vixen@i-beam.org/storage.js

git reset $HOME/*.swp $HOME/*~ $HOME/.*

staged=$(git diff --staged)

if [ ${#staged} == "0" ]
then
	echo "Nothing to commit"
else
	git commit --untracked-files=no -m "auto commit"
fi
