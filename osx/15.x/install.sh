#!/usr/bin/env bash

set -e

./installers/brew.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

function info() {
	echo "Info =====> $1"
}

brew install --cask iterm2

# ./installers/os-dependencies.sh
# ./installers/fd.sh
# ./installers/nvim.sh
# ./installers/postgres.sh
# ./installers/stow.sh
# ./installers/tmux.sh
# ./installers/docker.sh
# ./installers/gh-cli.sh
# ./installers/universal-ctags.sh
# ./installers/1password.sh
# ./installers/htop.sh
# ./installers/tree.sh
# ./installers/wireguard.sh
# ./installers/vnc-viewer.sh
# ./installers/nomad.sh
# ./installers/dbeaver.sh
# # ./installers/vagrant.sh
#
# ../the_silver_searcher.sh
# ../watch.sh
# ../wget.sh

# jq
if [ -x "$(command -v jq)" ]; then
	info "jq is already installed"
else
	info "Installing jq"
	brew install jq
fi

# tig
if [ -x "$(command -v tig)" ]; then
	info "tig is already installed"
else
	info "Installing tig"
	brew install tig
fi

# httpie
if [ -x "$(command -v http)" ]; then
	info "httpie is already installed"
else
	info "Installing httpie"
	brew install httpie
fi

# heroku cli
if [ -x "$(command -v heroku)" ]; then
	info "heroku cli is already installed"
else
	info "Installing heroku cli"
	brew tap heroku/brew && brew install heroku
fi

# ripgrep
if [ -x "$(command -v rg)" ]; then
	info "ripgrep is already installed"
else
	info "Installing ripgrep"
	brew install ripgrep
fi

# fzf
if [ -x "$(command -v fzf)" ]; then
	info "fzf is already installed"
else
	info "Installing fzf"
	brew install fzf
fi

# kitty
if [ -x "$(command -v kitty)" ]; then
	info "kitty is already installed"
else
	info "Installing kitty"
	brew install kitty
fi

# spectacle
if [ -d "/Applications/Spectacle.app" ]; then
	info "spectacle is already installed"
else
	info "CANNOT INSTALL SPECTACLE VIA BREW/CASK"
	# brew install --cask spectacle
fi

# alfred
if [ -d "/Applications/Alfred 5.app" ]; then
	info "alfred is already installed"
else
	info "Installing alfred"
	brew install --cask alfred
fi

# yabai
if [ -x "$(command -v yabai)" ]; then
	info "yabai is already installed"
else
	info "Installing yabai"
	brew install koekeishiya/formulae/yabai
fi

# skhd
if [ -x "$(command -v skhd)" ]; then
	info "skhd is already installed"
else
	info "Installing skhd"
	brew install koekeishiya/formulae/skhd
fi

# amnethyst tiling window manager
if [ -d "/Applications/Amethyst.app" ]; then
	info "Amethyst is already installed"
else
	info "Installing Amethyst"
	brew install --cask amethyst
fi

# hammerspoon
if [ -d "/Applications/Hammerspoon.app" ]; then
	info "Hammerspoon is already installed"
else
	info "Installing Hammerspoon"
	brew install hammerspoon
fi
