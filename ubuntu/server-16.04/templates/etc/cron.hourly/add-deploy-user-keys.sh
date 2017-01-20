#!/usr/bin/env bash

set -e

user=deploy
githubUser=mjacobus

keysFile=/home/$user/.ssh/authorized_keys
tmpFile=/home/$user/.ssh/authorized_keys

# adds github keys
curl https://github.com/$githubUser.keys >> $keysFile
cat $keysFile | sort -u > $tmpFile
cat $tmpFile > $tmpFile

# fix permissions
chmod o-a,g-a $keysFile
chmod u+rw $keysFile
