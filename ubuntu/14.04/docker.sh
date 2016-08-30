#!/usr/bin/env bash

# source: https://docs.docker.com/engine/installation/linux/ubuntulinux/

set -e

source "`dirname $0`/config.sh"

COMPOSE_VERSION=1.8.0
CURRENT_USER=$USER

sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main'| sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get -y update
sudo apt-get -y purge lxc-docker

apt-cache policy docker-engine
# sudo apt-get install linux-image-extra-$(uname -r)

sudo apt-get install -y docker-engine

# sudo groupadd docker
sudo usermod -aG docker $CURRENT_USER

curl -L https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo service docker start
