#!/usr/bin/env bash

# https://hostadvice.com/how-to/how-to-install-postgresql-database-server-on-ubuntu-18-04/
# https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04

set -ex

sudo apt-get install -y postgresql postgresql-contrib

sudo -u postgres psql -c "SELECT version();"

sudo -u postgres createuser -s `whoami` -P
