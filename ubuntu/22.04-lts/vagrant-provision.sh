#!/usr/bin/env bash

sudo apt-get update

./installers/base.sh
./installers/ubuntu-desktop.sh
./installers/brazilian-timezone.sh
./installers/neovim.sh
./installers/lvim.sh

# sudo apt install -y docker
# sudo apt install -y docker-compose
# sudo apt install -y stuff to compile stuff


echo "Setting the timezone to America/Sao_Paulo..."
sudo timedatectl set-timezone America/Sao_Paulo
echo "Timezone is set to $(cat /etc/timezone)."
