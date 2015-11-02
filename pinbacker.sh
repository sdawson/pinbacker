#!/bin/sh
# A short script to backup all pinboard bookmarks

backup_dir="$HOME/bkup/pinboard"
username="username goes here"
auth_token="auth token goes here"

echo -n "Backing up Pinboard bookmarks...."

curl -s -g "https://api.pinboard.in/v1/posts/all?format=json&auth_token=$username:$auth_token" \
  -o "$backup_dir/pinboard-bookmarks-`date "+%Y%m%d%H%M"`.json"

echo "Done."
