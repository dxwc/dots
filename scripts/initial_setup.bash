#!/bin/bash

set -x

notify-send "NEED PASSWORD(maybe)" "in initial_setup.bash"
sudo eopkg upgrade --yes

notify-send "NEED PASSWORD(maybe)" "in initial_setup.bash"
sudo eopkg install vim neovim git gnome-tweak-tool ufw --yes

notify-send "NEED PASSWORD" "in initial_setup.bash"
sudo ufw enable

git config --global core.editor "vim"

notify-send "NEED PASSWORD" "in initial_setup.bash"
sudo eopkg it -c system.devel --yes

notify-send "NEED PASSWORD" "in initial_setup.bash"
sudo eopkg install vscode mpv tilix vlc kdenlive gimp simplescreenrecorder guvcview gitg taskwarrior calcurse liferea simple-scan hplip hplip-drivers postgresql sqlite3 mongodb pandoc firefox opera-stable cdrtools iftop zeal gnuplot nasc strace audacity dia macchanger texlive texlive-fonts-extra newsbeuter recoll okular gource gsmartcontrol qgis inkscape ffmpegthumbs ffmpegthumbnailer powerline-fonts --yes


notify-send "NEED PASSWORD" "in initial_setup.bash"
# see: https://getsol.us//articles/software/third-party/en/#microsoft-core-fonts
# If doesn't work, see also:
# https://getsol.us/forums/viewtopic.php?t=1733
# https://github.com/caarlos0-graveyard/msfonts
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/getsolus/3rd-party/master/desktop/font/mscorefonts/pspec.xml
sudo eopkg it mscorefonts*.eopkg;sudo rm mscorefonts*.eopkg

notify-send "NEED PASSWORD" "in initial_setup.bash"
sudo wget https://raw.githubusercontent.com/dxwc/note/master/note.js -O /usr/local/bin/note
sudo wget https://raw.githubusercontent.com/dxwc/note/master/gen-pdf.js -O /usr/local/bin/gen-pdf

notify-send "NEED PASSWORD" "in initial_setup.bash"
sudo chmod +x /usr/local/bin/note
