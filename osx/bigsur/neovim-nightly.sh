#!/usr/bin/env bash

# https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x

set -ev

brew unlink luajit
brew install --HEAD luajit

brew install luarocks
brew install luv

brew unlink neovim
brew install --HEAD neovim
