#!/usr/bin/env bash

if command -v nvim &>/dev/null; then
	exit 0
fi

echo "Installing neovim..."
brew install --HEAD neovim
