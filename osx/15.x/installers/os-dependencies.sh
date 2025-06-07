#!/usr/bin/env bash

info "Installing OS dependencies..."
# libs - dependencies for I.E. asdf install ruby
brew install readline libyaml zlib libffi openssl@3 autoconf pkg-config
brew install icu4c
brew install gnu-tar gpg
brew install gcc readline zlib curl ossp-uuid imagemagick@7 libpq
# brew install libx2 # should it have been libxml2?
brew install libxslt
