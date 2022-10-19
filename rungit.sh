#!/usr/bin/env bash

git add .

read -p 'commit message: ' message
git commit -m $message

read -p 'branch: ' branch
git push origin $branch
