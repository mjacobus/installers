#!/usr/bin/env bash

# https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04

set -ex

wget -c https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.19-1ubuntu18.04_amd64.deb
sudo apt-get install -y ./mysql-workbench-community_8.0.19-1ubuntu18.04_amd64.deb
