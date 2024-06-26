#!/usr/bin/env bash

if [ -x "$(command -v gh)" ]; then
	echo "gh is already installed"
	exit 0
fi

brew install gh
