#!/usr/bin/env bash

if command -v tmux &>/dev/null; then
	info "Tmux installed"
else
	info "Installing tmux"
	brew install tmux

	info "Installing reattach-to-user-namespace"
	brew install reattach-to-user-namespace
fi
