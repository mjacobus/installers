#!/usr/bin/env bash

set -e

source "`dirname $0`/config.sh"

install openssh-server
install git
install tmux
install curl
install build-essential patch
install ruby-dev zlib1g-dev liblzma-dev
install libxml2-dev

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn
