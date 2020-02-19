#!/usr/bin/env bash

# https://hostadvice.com/how-to/how-to-install-postgresql-database-server-on-ubuntu-18-04/

set -ex

sudo apt-get install -y postgresql postgresql-contrib

sudo -u postgres psql -c "SELECT version();"
