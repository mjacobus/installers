#!/usr/bin/env bash

set -e

# Step 1: Update the package index
# sudo apt update

# Step 2: Install necessary dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Step 3: Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Step 4: Set up the stable Docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Step 5: Update the package index again
sudo apt update

# Step 6: Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Step 7: Verify Docker installation
sudo docker --version

# Step 8: Add user to docker group
sudo usermod -aG docker $USER

# Step 9: Restart the system
# echo "Restarting the system..."
# sudo reboot
