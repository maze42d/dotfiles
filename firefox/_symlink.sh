#!/bin/bash
echo "to do later" && exit

PROFILE=$USER
#echo $PROFILE
firefox -CreateProfile "$PROFILE"

cd
cd .mozilla/firefox/$USERPROFILE/chrome
ln -sr /home/maze/dotfiles.git/firefox/userChrome.css userChrome.css
ln -sr /home/maze/dotfiles.git/firefox/userContent.css userContent.css

