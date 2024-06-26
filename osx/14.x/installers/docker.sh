#!/usr/bin/env bash

# skip if installed
if [ -d "/Applications/Docker.app" ]; then
	exit 0
fi

echo "Installing Docker"
brew install --cask docker
