#!/usr/bin/env bash

if command -v tmux &>/dev/null; then
	exit 0
fi

echo "Installing tmux"
brew install tmux

echo "Installing reattach-to-user-namespace"
brew install reattach-to-user-namespace
