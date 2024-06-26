#!/usr/bin/env bash

if [ -x "$(command -v wget)" ]; then
	echo "wget is already installed"
	return 0
fi
brew install wget
