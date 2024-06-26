#!/usr/bin/env bash

if [ "$(command -v ctags)" ]; then
	if ctags --version | grep -q "Universal Ctags"; then
		echo "Universal Ctags is already installed" exit 0
	fi
fi

brew install universal-ctags
