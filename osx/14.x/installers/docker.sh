#!/usr/bin/env bash

# skip if installed
if [ -d "/Applications/Docker.app" ]; then
	echo "Docker is already installed"
	exit 0
fi

brew install --cask docker
