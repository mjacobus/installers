#!/usr/bin/env bash
set -euo pipefail

echo "=== Ubuntu 25.10 Post-Install Script ==="

# Base utilities
echo ">>> Installing base utilities..."
sudo apt update
sudo apt install -y \
  wget \
  curl \
  stow \
  zsh \
  htop \
  jq \
  bison \
  git \
  tree \
  tig \
  httpie \
  fzf \
  ripgrep \
  fd-find \
  silversearcher-ag \
  libreadline-dev

# Build essentials
echo ">>> Installing build essentials..."
sudo apt install -y \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libsqlite3-dev \
  libncurses5-dev \
  libncursesw5-dev \
  xz-utils \
  tk-dev \
  libffi-dev \
  liblzma-dev \
  cmake \
  pkg-config \
  autoconf

# Database clients
echo ">>> Installing database clients..."
sudo apt install -y \
  postgresql-client \
  libpq-dev

# i3 window manager (default config)
echo ">>> Installing i3 window manager..."
sudo apt install -y \
  i3 \
  i3status \
  i3lock \
  dmenu \
  rofi \
  feh \
  picom \
  xterm

# Desktop utilities
echo ">>> Installing desktop utilities..."
sudo apt install -y \
  kitty \
  scrot \
  xclip \
  arandr \
  pavucontrol \
  network-manager-gnome \
  dunst \
  lxappearance

# Development
echo ">>> Installing development tools..."
sudo apt install -y \
  neovim \
  tmux \
  universal-ctags

# Fonts
echo ">>> Installing fonts..."
sudo apt install -y \
  fonts-firacode \
  fonts-font-awesome

# Snaps
echo ">>> Installing snaps..."
sudo snap install slack --classic
sudo snap install code --classic

# GitHub CLI
echo ">>> Installing GitHub CLI..."
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh

# Docker
echo ">>> Installing Docker..."
sudo apt remove -y docker docker-engine docker.io containerd runc 2>/dev/null || true
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo $VERSION_CODENAME) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker 2>/dev/null || true
sudo usermod -aG docker "$USER"

# mise (version manager)
echo ">>> Installing mise..."
sudo install -dm 755 /etc/apt/keyrings
curl -fSs https://mise.jdx.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.pub > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.pub arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list > /dev/null
sudo apt update
sudo apt install -y mise

# ngrok
echo ">>> Installing ngrok..."
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com bookworm main" | sudo tee /etc/apt/sources.list.d/ngrok.list > /dev/null
sudo apt update
sudo apt install -y ngrok

# Heroku CLI
echo ">>> Installing Heroku CLI..."
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# Set zsh as default shell
echo ">>> Setting zsh as default shell..."
chsh -s /usr/bin/zsh

echo ""
echo "=== Installation Complete ==="
echo "NOTE: Log out and back in for docker group and zsh changes to take effect."
