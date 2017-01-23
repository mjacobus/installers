#!/usr/bin/env bash

set -e

user=_DEPLOY_USER_
githubUser=_GITHUB_USER_

homeFolder=/home/$user
sshFolder=$homeFolder/.ssh
keysFile=$sshFolder/authorized_keys
tmpFile=$sshFolder/authorized_keys.tmp

# create folder and files, case they do not exist
mkdir -p $sshFolder
touch $keysFile
touch $tmpFile

# adds github keys
curl https://github.com/$githubUser.keys >> $keysFile
cat $keysFile | sort -u > $tmpFile
cat $tmpFile > $tmpFile

# fix permissions
chown deploy $sshFolder $homeFolder $keysFile $tmpFile
chmod 700 $sshFolder
chmod 600 $keysFile $tmpFile

ls -lhs $keysFile $tmpFile
