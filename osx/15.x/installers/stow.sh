#!/usr/bin/env bash

if command -v stow &>/dev/null; then
	exit
fi

echo "Installing stow..."
brew install stow
