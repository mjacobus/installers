#!/usr/bin/env bash

set -ex

# https://linuxhint.com/install_configure_docker_ubuntu/
sudo apt update
sudo apt install -y docker.io
sudo apt install -y docker-compose

sudo systemctl enable --now docker # to disable: sudo systemctl disable --now docker
sudo usermod -aG docker ${USER}
docker --version
echo "Test it with: docker run hello-world"
