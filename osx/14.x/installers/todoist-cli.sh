#!/usr/bin/env bash

if [ -x "$(command -v todoist)" ]; then
	exit 0
fi

echo "Installing todoist cli..."
brew tap sachaos/todoist
arch -arm64 brew install todoist
