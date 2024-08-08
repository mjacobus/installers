#!/usr/bin/env bash

if [ "$(command -v ctags)" ]; then
	if ctags --version | grep -q "Universal Ctags"; then
		echo "Ctags already installed"
		exit 0
	fi
fi

echo "Installing Universal Ctags..."
brew install universal-ctags
