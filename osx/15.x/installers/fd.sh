#!/usr/bin/env bash

# unless fd is installed

if [ -x "$(command -v fd)" ]; then
	echo "fd is already installed"
else
	echo "Installing fd"
	brew install fd
fi
