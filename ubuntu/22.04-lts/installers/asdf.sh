#!/usr/bin/env bash

if ! command -v asdf &> /dev/null; then
  echo "Installing asdf..."
else
  echo "asdf is already installed."
  asdf --version
  exit 0
fi

brew install asdf
