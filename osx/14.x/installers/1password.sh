#!/usr/bin/env bash

if [ -d "/Applications/1Password.app" ]; then
	exit 0
fi

echo "Installing 1Password..."
brew install --cask 1password
