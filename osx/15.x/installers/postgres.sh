#!/usr/bin/env bash

if command -v psql &>/dev/null; then
	info "PSQL installed"
else
	info "Installing postgres..."
	brew install postgresql
fi
