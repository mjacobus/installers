#!/usr/bin/env bash

if command -v brew &>/dev/null; then
	exit 0
fi

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
