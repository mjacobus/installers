#!/usr/bin/env bash

if [ -x "$(command -v gh)" ]; then
	exit 0
fi

echo "Installing gh..."
brew install gh
