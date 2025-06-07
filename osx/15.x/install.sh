#!/usr/bin/env bash

set -e

source ./functions.sh
./installers/brew.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

# info "cask iterm2"
# brew install --cask iterm2
#
source ./installers/os-dependencies.sh
source ./installers/fd.sh
source ./installers/nvim.sh
source ./installers/postgres.sh
source ./installers/stow.sh
source ./installers/tmux.sh
source ./installers/docker.sh
source ./installers/gh-cli.sh
source ./installers/universal-ctags.sh
source ./installers/1password.sh
source ./installers/htop.sh
source ./installers/tree.sh
# source ./installers/nomad.sh # Disabled because it will change license to BUSL
source ./installers/dbeaver.sh
source ./installers/vagrant.sh

source ../the_silver_searcher.sh
source ../watch.sh
source ../wget.sh

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

if [ -d "/Applications/Slack.app" ]; then
	info "Slack is already installed"
else
	info "Installing Slack"
	brew install --cask slack
fi

info "FINISHED!!"
