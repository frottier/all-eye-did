#!/bin/bash

# set location of script as destination
dest="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "writing to"
echo $dest
echo 

cp "$dest"/history_as_we_know_it "$dest"/tmp_old_history
cat ~/.bash_history > "$dest"/tmp_recent_history

sort -u "$dest"/tmp_old_history "$dest"/tmp_recent_history > "$dest"/history_as_we_know_it

rm "$dest"/tmp_*

echo "Do not read your history. Just grep it."

