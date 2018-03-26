#!/bin/bash

git add .bashrc
git add /etc/profile
git add ~/scripts/*
git add ~/README.md
git add ~/Makefile
git add ~/.mozilla/firefox/667zehud.default/chrome/userChrome.css
git add ~/.mozilla/firefox/667zehud.default/browser-extension-data/vim-vixen@i-beam.org/storage.js

staged=$(git diff --staged)

if [ ${#staged} == "0" ]
then
	echo "Nothing to commit"
else
	git commit --untracked-files=no -m "auto commit"
fi
