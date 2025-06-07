#!/usr/bin/env bash

echo "Installing OS dependencies..."
# libs - dependencies for I.E. asdf install ruby
brew install readline libyaml zlib libffi openssl@3 autoconf pkg-config
brew install icu4c
brew install gnu-tar gpg
brew install gcc readline zlib curl ossp-uuid imagemagick@7 libpq
brew install libx2 libxslt

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
#
# icu4c is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS provides libicucore.dylib (but nothing else).
#
# If you need to have icu4c first in your PATH, run:
#   echo 'export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"' >> ~/.zshrc
#   echo 'export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"' >> ~/.zshrc
#
# For compilers to find icu4c you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/icu4c/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/icu4c/include"
#
# For pkg-config to find icu4c you may need to set:
#   export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig"
# curl is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# If you need to have curl first in your PATH, run:
# echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >>~/.zshrc
#
# For compilers to find curl you may need to set:
# export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
#
# For pkg-config to find curl you may need to set:
# export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"
#
# zsh completions have been installed to:
# /opt/homebrew/opt/curl/share/zsh/site-functions
#
# => Caveats
# libpq is keg-only, which means it was not symlinked into /opt/homebrew,
# because conflicts with postgres formula.
#
# If you need to have libpq first in your PATH, run:
# echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >>~/.zshrc
#
# For compilers to find libpq you may need to set:
# export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
#
# For pkg-config to find libpq you may need to set:
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
# == >Summary
# 🍺 /opt/homebrew/Cellar/libpq/16.3: 2,383 files, 29.6MB
# == >Running $(brew cleanup libpq)...
# == >Caveats
# == >curl
# curl is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# If you need to have curl first in your PATH, run:
# echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >>~/.zshrc
#
# For compilers to find curl you may need to set:
# export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
#
# For pkg-config to find curl you may need to set:
# export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"
#
# zsh completions have been installed to:
# /opt/homebrew/opt/curl/share/zsh/site-functions
# == >libpq
# libpq is keg-only, which means it was not symlinked into /opt/homebrew,
# because conflicts with postgres formula.
#
# If you need to have libpq first in your PATH, run:
# echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >>~/.zshrc
#
# For compilers to find libpq you may need to set:
# export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
#
# For pkg-config to find libpq you may need to set:
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
