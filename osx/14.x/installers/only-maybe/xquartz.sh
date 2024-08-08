#!/usr/bin/env bash

if [ -d /Applications/Utilities/XQuartz.app ]; then
	exit 0
fi

echo "Installing XQuartz..."
brew install --cask xquartz
