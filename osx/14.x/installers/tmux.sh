#!/usr/bin/env bash

if command -v tmux &>/dev/null; then
	echo "tmux is already installed"
	exit
fi

brew install tmux
brew install reattach-to-user-namespace
