#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
install mysql-server

echo '[client]' > ~/.my.cnf
echo 'user=root' >> ~/.my.cnf
echo 'password=root' >> ~/.my.cnf
