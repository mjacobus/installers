#!/usr/bin/env bash

set -e
set -v


# Remove old/conflicting packages
sudo apt remove -y docker docker-engine docker.io containerd runc


# Install prerequisites
sudo apt update
sudo apt install -y ca-certificates curl gnupg

# Add docker GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add docker repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo $VERSION_CODENAME) stable" \
| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Install docker engine + compose plugin
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Allow running docker without sudo
sudo usermod -aG docker $USER
newgrp docker


echo "Verify with:"
echo docker run hello-world
echo docker compose version
