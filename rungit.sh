#!/usr/bin/env bash

git add .

read -p 'commit message: ' message
git commit -m $message

while true; do
    read -p "Push to Main? " yn
    case $yn in
        [Yy]* ) git push origin main; break;;
        [Nn]* ) read -p 'branch: ' branch; git push origin $branch; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


osascript -e 'display notification "pushed to remote!"'
