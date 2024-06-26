#!/usr/bin/env bash

if command -v nvim &>/dev/null; then
	echo "neovim is already installed"
	exit
fi

brew install --HEAD neovim
