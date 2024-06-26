#!/usr/bin/env bash

if command -v stow &>/dev/null; then
	echo "stow is already installed"
	exit
fi

brew install stow
