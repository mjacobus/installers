#!/usr/bin/env bash
set -euo pipefail

echo ">>> Installing Claude Code CLI..."

# Install via npm if available, otherwise use standalone installer
if command -v npm &> /dev/null; then
  npm install -g @anthropic-ai/claude-code
else
  echo "npm not found, using standalone installer..."
  curl -fsSL https://claude.ai/install.sh | sh
fi

echo ">>> Claude Code installed. Run 'claude' to start."
