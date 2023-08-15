#!/usr/bin/env bash

exit 0

brew install libffi
brew install chromium
brew install libyaml
brew install libpqxx
brew install libtool
brew install ossp-uuid
brew install shared-mime-info

# if you need image magick 6
brew install imagemagick@6
brew link imagemagick@6 --force
brew install pkg-config
