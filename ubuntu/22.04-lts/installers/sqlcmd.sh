#!/usr/bin/env bash

sudo apt update
sudo apt install -y curl gnupg apt-transport-https
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo add-apt-repository "$(curl -sSL https://packages.microsoft.com/config/ubuntu/20.04/prod.list)"

sudo apt update
sudo apt install -y mssql-tools unixodbc-dev

# echo 'export PATH=$PATH:/opt/mssql-tools/bin' >>~/.bashrc
ln -s /opt/mssql-tools/bin/sqlcmd ~/.bin
