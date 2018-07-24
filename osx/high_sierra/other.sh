#!/usr/bin/env bash

# brew update

set -e

brew install 'Caskroom/cask/xquartz'
brew install exiftool
brew install gs
brew install imagemagick
brew install poppler
brew install timelimit
brew install automake
brew install qt@5.5 && brew link --force qt@5.5
brew install graphicsmagick --with-quantum-depth-16 --with-little-cms2

brew install postgres
brew install redis
brew install nginx


echo
echo
echo "-------------------------------------------------------------------------"
echo "Finished"
echo "-------------------------------------------------------------------------"
echo
echo
