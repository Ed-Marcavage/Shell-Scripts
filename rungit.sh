#!/usr/bin/env bash

git add .

read -p 'commit message: ' message
git commit -m $message

while true; do
    read -p "Push to Main? " yn
    case $yn in
        [Yy]* ) git push origin main; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

read -p 'branch: ' branch
git push origin $branch

osascript -e 'display notification "pushed to remote"'
