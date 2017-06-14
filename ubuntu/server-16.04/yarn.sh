#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

install yarn

# node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
install nodejs

