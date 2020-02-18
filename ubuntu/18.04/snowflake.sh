#!/usr/bin/env bash

set -eux

curl https://cli-assets.heroku.com/install.sh | sh
curl https://sfc-repo.snowflakecomputing.com/odbc/linux/2.20.1/snowflake-odbc-2.20.1.x86_64.deb --output drivers/snowflake-odbc-2.20.1.x86_64.deb
sudo apt-get install -y -f ./drivers/snowflake-odbc-2.20.1.x86_64.deb
