#!/usr/bin/env bash

if [ -x "$(command -v watch)" ]; then
	echo "wget is already installed"
	return 0
fi

brew install watch
