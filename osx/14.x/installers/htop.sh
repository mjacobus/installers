#!/usr/bin/env bash

if [ -x "$(command -v htop)" ]; then
	return 0
fi

echo "Installing htop..."
brew install htop
