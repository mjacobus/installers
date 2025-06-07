#!/usr/bin/env bash

# skip if installed
if [ -d "/Applications/Docker.app" ]; then
	info "Docker installed"
else
	info "Installing Docker"
	brew install --cask docker
fi
