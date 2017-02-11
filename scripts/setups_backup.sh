#!/bin/sh
#
# Commits updates to selected config/settings, scheduled via crontab
#
# How-to:
#- setup github with ssh
#- https://www.youtube.com/watch?v=UlVqobmcPuM
#- http://alvinalexander.com/linux/unix-linux-crontab-every-minute-hour-day-syntax
#- chmod +x this file
#- sudo vim /etc/crontab and add a entry to this
#- For hourly I added:
#- 59 *    * * *   leo     /home/leo/scripts/setups_backup.sh

tree -L 2 /home/leo/.vim/ > /home/leo/.vim/dir_struct.txt

cd /home/leo/
git add -u .
git commit -m "auto commit @ `date +%s`"
if [ $? -eq 0 ]
then
    git push -u origin master
fi

cd /home/leo/.vim/
git add .
git commit -m "auto commit @ `date +%s`"
if [ $? -eq 0 ]
then
    git push -u origin master
fi

exit 0
