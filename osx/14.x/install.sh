#!/usr/bin/env bash

set -e

./installers/brew.sh
./installers/os-dependencies.sh
./installers/nvim.sh
./installers/stow.sh
./installers/tmux.sh
./installers/docker.sh
./installers/gh-cli.sh
./installers/universal-ctags.sh
