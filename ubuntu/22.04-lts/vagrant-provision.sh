#!/usr/bin/env bash

./installers/ubuntu-desktop.sh
./installers/brazilian-timezone.sh

echo "Setting the timezone to America/Sao_Paulo..."
sudo timedatectl set-timezone America/Sao_Paulo
echo "Timezone is set to $(cat /etc/timezone)."
