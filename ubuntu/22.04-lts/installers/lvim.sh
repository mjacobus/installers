#!/usr/bin/env bash

# https://github.com/nvim-treesitter/nvim-treesitter/issues/1301

set -e

asdf install nodejs
asdf install python
asdf install rust

LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

echo "If you get an error, edit the file and remove the 'exec ...' prefix from the shim"
