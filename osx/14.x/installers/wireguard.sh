#!/usr/bin/env bash

# return if is not installed
if [ -x "$(command -v wg)" ]; then
	echo "Wireguard is already installed"
	exit 0
fi

arch -arm64 brew install wireguard-tools
