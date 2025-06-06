#!/usr/bin/env bash

set -e
source "`dirname $0`/config.sh"
alias echo='mecho'

user=$DEPLOY_USER

homeFolder=/home/$user
sshFolder=$home/.ssh
keysFile=$sshFolder/authorized_keys
tmpFile=$sshFolder/authorized_keys.tmp

echo "Creating user '$user'"

adduser --system \
   --shell /bin/bash \
   --gecos "Deploy user" \
   --group \
   --home $homeFolder \
   $user

adduser $user sudo

cronFile=/etc/cron.hourly/add-deploy-user-keys.sh
echo "Generating $cronfile"
template $cronFile

echo "Executing $cronFile"
/etc/cron.hourly/./add-deploy-user-keys.sh
