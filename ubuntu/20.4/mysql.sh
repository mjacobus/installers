#!/usr/bin/env bash

set -ex

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server

echo '[client]' > ~/.my.cnf
echo 'user=root' >> ~/.my.cnf
echo 'password=root' >> ~/.my.cnf
