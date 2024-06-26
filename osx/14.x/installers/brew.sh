#!/usr/bin/env bash

# skip brew installatin if already installed
if command -v brew &>/dev/null; then
	echo "Homebrew is already installed"
	exit
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
