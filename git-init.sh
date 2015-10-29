#!/bin/bash
#Ben's git-init script to create remote repository
USER="benmatheja"
REPO=$1
#Perform Repo Creation using Curl
curl -u $USER https://api.github.com/user/repos -d "{"\""name"\"": "\""$REPO"\""}"
git remote add origin git@github.com:$USER/$REPO.git
echo "Repository has been created"
