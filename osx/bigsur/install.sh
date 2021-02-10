#!/usr/bin/env bash

set -ev

brew install tmux
brew install reattach-to-user-namespace
brew install jq
brew install htop
brew install mplayer
brew install the_silver_searcher
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
brew install gpg
brew install vim # --override-system-vim
brew install wget
brew install watch
brew install python3
brew install neovim/neovim/neovim
pip3 install neovim
brew install tig
brew install taglib
brew tap heroku/brew && brew install heroku
brew install msyql-client
brew install httpie


# GH Depencency
brew install gh

brew install libuv # fails w/o xcode
brew install openssl
brew install zlib
brew install postgresql
# brew install mysql


# also install, but not included here yet
# docker
# docker-compose
