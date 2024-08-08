#!/usr/bin/env bash

set -e

./installers/brew.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask iterm2

./installers/os-dependencies.sh
./installers/nvim.sh
./installers/stow.sh
./installers/tmux.sh
./installers/docker.sh
./installers/gh-cli.sh
./installers/universal-ctags.sh
./installers/1password.sh
./installers/htop.sh
./installers/tree.sh
./installers/wireguard.sh
./installers/vnc-viewer.sh
./installers/nomad.sh
./installers/dbeaver.sh
# ./installers/vagrant.sh

../the_silver_searcher.sh
../watch.sh
../wget.sh

# jq
if [ -x "$(command -v jq)" ]; then
	echo "jq is already installed"
else
	echo "Installing jq"
	brew install jq
fi

# tig
if [ -x "$(command -v tig)" ]; then
	echo "tig is already installed"
else
	echo "Installing tig"
	brew install tig
fi

# httpie
if [ -x "$(command -v http)" ]; then
	echo "httpie is already installed"
else
	echo "Installing httpie"
	brew install httpie
fi

# heroku cli
if [ -x "$(command -v heroku)" ]; then
	echo "heroku cli is already installed"
else
	echo "Installing heroku cli"
	brew tap heroku/brew && brew install heroku
fi

# ripgrep
if [ -x "$(command -v rg)" ]; then
	echo "ripgrep is already installed"
else
	echo "Installing ripgrep"
	brew install ripgrep
fi

# fzf
if [ -x "$(command -v fzf)" ]; then
	echo "fzf is already installed"
else
	echo "Installing fzf"
	brew install fzf
fi

# kitty
if [ -x "$(command -v kitty)" ]; then
	echo "kitty is already installed"
else
	echo "Installing kitty"
	brew install kitty
fi

# spectacle
if [ -d "/Applications/Spectacle.app" ]; then
	echo "spectacle is already installed"
else
	echo "Installing spectacle"
	brew install --cask spectacle
fi

# alfred
if [ -d "/Applications/Alfred 5.app" ]; then
	echo "alfred is already installed"
else
	echo "Installing alfred"
	brew install --cask alfred
fi

# yabai
if [ -x "$(command -v yabai)" ]; then
	echo "yabai is already installed"
else
	echo "Installing yabai"
	brew install koekeishiya/formulae/yabai
fi

# skhd
if [ -x "$(command -v skhd)" ]; then
	echo "skhd is already installed"
else
	echo "Installing skhd"
	brew install koekeishiya/formulae/skhd
fi

# amnethyst tiling window manager
if [ -d "/Applications/Amethyst.app" ]; then
	echo "Amethyst is already installed"
else
	echo "Installing Amethyst"
	brew install --cask amethyst
fi

# hammerspoon
if [ -d "/Applications/Hammerspoon.app" ]; then
	echo "Hammerspoon is already installed"
else
	echo "Installing Hammerspoon"
	brew install hammerspoon
fi
