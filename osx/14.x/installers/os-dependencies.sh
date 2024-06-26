#!/usr/bin/env bash

# libs - dependencies for I.E. asdf install ruby
brew install readline libyaml zlib libffi openssl@3 autoconf pkg-config

# export LDFLAGS="-L/opt/homebrew/opt/readline/lib -L/opt/homebrew/opt/libyaml/lib -L/opt/homebrew/opt/zlib/lib -L/opt/homebrew/opt/libffi/lib -L/opt/homebrew/opt/openssl@3/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/readline/include -I/opt/homebrew/opt/libyaml/include -I/opt/homebrew/opt/zlib/include -I/opt/homebrew/opt/libffi/include -I/opt/homebrew/opt/openssl@3/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# For compilers to find readline you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/readline/include"
#
# For pkg-config to find readline you may need to set:
#   export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig"
# ==> zlib
# zlib is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# For compilers to find zlib you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
#
# For pkg-config to find zlib you may need to set:
#   export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"
# ==> libffi
# libffi is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# For compilers to find libffi you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
#
# For pkg-config to find libffi you may need to set:
#   export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"
