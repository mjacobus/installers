#!/usr/bin/env bash

if [ -x "$(command -v tree)" ]; then
	echo "tree alrady installed"
	exit 0
fi

echo "Installing tree..."
brew install tree
