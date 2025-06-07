#!/usr/bin/env bash

if command -v psql &>/dev/null; then
	exit 0
fi

echo "Installing postgres..."
brew install postgresql
