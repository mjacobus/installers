#!/usr/bin/env bash

# https://medium.com/@Grigorkh/how-to-install-docker-on-ubuntu-19-04-7ccfeda5935

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Either
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge"

# or
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge test"


sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
sudo apt-get install -y docker-compose
