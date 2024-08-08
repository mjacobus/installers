#!/usr/bin/env bash

# skip if installed...app name like:
if [ -d "/Applications/TigerVNC Viewer 1.13.1.app" ]; then
	exit 0
fi

echo "Installing TigerVNC Viewer..."
brew install --cask tigervnc-viewer
