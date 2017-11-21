set -e

date_today=$(date +%A\,\ %B\ %d\ %Y)

file_today="CLASS_NAME_NOTE_FOR_$(date +%F).md"

if [ -f $file_today ]
then
    echo "File exists opening in vim"
else
    touch $file_today
    echo -e "---\ndate: $date_today\n---" >> $file_today
fi

vim $file_today
