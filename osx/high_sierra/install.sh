#!/usr/bin/env bash

set -e

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install tmux
brew install reattach-to-user-namespace

brew install python3
brew install neovim
pip3 install neovim

brew install vim --override-system-vim

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

brew install the_silver_searcher

brew install wget
brew install jq
brew install mplayer
brew install htop
brew install tig

# ruby dependencies
brew install ossp-uuid
brew install mysql
brew install cmake
brew install libtool
brew install zmq

brew install shellcheck
# brew install automake
# brew install autotools-dev
# brew install libcurl
# brew install libcurl4-gnutls-dev
# brew install libossp-uuid-dev
# brew install pkg-config
# brew install uuid-dev

# --------------

# brew install reattach-to-user-namespace
# brew install phantomjs
# brew install zeromq
# brew install casperjs
# brew install libpqxx
# brew install npm
# brew install bower
# brew install watch
# brew install yarn
# brew install htop
# brew tap grammarly/tap
# brew install grammarly/tap/rocker

echo "Finished"
