#!/usr/bin/env bash

# https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#uninstall-old-versions

# NOTE: Looks like docker.io can be installed https://github.com/docker/for-linux/issues/533#issuecomment-510075889

set -e

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce
