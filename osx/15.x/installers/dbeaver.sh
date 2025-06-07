#!/usr/bin/env bash

# install dbeaver if not yet using brew

if ! command -v dbeaver &>/dev/null; then
	echo "Installing DBeaver"
	brew install dbeaver-community
fi
