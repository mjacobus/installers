#!/usr/bin/env bash
set -euo pipefail
set -v

# Remove old/conflicting packages
sudo apt remove -y docker docker-engine docker.io containerd runc || true

# Install prerequisites
sudo apt update
sudo apt install -y ca-certificates curl gnupg

# Add Docker GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add Docker repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo $VERSION_CODENAME) stable" \
| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine + Compose plugin
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Allow running Docker without sudo
sudo groupadd docker 2>/dev/null || true
sudo usermod -aG docker "$USER"

echo
echo "✅ Docker installed."
echo "➡️  Log out and log back in (or reboot) to use Docker without sudo."
echo
echo "Verify with:"
echo "  docker run hello-world"
echo "  docker compose version"
