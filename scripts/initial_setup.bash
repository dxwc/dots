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
sudo eopkg install vscode vlc kdenlive gimp simplescreenrecorder guvcview gitg taskwarrior calcurse liferea simple-scan hplip-drivers postgresql sqlite3 mongodb pandoc firefox opera-stable cdrtools iftop zeal gnuplot nasc strace audacity dia macchanger texlive texlive-fonts-extra newsbeuter --yes
