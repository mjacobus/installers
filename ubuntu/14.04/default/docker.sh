#!/usr/bin/env bash

# source: https://docs.docker.com/engine/installation/linux/ubuntulinux/

sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' >> /etc/apt/sources.list.d/docker.list
sudo apt-get -y update
sudo apt-get -y purge lxc-docker

apt-cache policy docker-engine
# sudo apt-get install linux-image-extra-$(uname -r)

sudo apt-get install -y docker-engine
sudo service docker start

# sudo groupadd docker
sudo usermod -aG docker vagrant

curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
