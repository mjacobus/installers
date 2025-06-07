#!/usr/bin/env bash

# return if not nomad command is not installed
if [ -x "$(command -v nomad)" ]; then
	echo "Nomad already installed..."
else
	echo "Installing nomad"
	brew install nomad
fi
