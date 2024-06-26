#!/usr/bin/env bash

if [ -x "$(command -v tree)" ]; then
	return 0
fi

echo "Installing tree..."
brew install tree
