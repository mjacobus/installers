#!/usr/bin/env bash

# return if not nomad command is not installed
if [ -x "$(command -v nomad)" ]; then
	exit 0
fi

echo "Installing nomad"
brew install nomad
