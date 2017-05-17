#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

if [[ $# < 1 ]]; then
  echo "you need to provide a domain"
  exit 1
fi

appsFolder=/var/www/apps
domain=$1
targetFile=/etc/nginx/sites-available/$domain

template /etc/nginx/sites-available/app-template $targetFile
ln -sf /etc/nginx/sites-available/$domain /etc/nginx/sites-enabled/$domain

sed -i "s/_DOMAIN_/$domain/g" $targetFile

cat $targetFile

if [ ! -d "$appsFolder" ]; then
  mkdir $appsFolder
  chown deploy:www-data $appsFolder
  chmod g+s appsFolder
fi
