#!/bin/bash
# SessionStart hook — install project dependencies when a Claude Code session starts.
# Extend this script as the project grows (e.g. npm install, pip install, etc.)

set -euo pipefail

echo "==> Session start hook running..."

# ── Node / npm ────────────────────────────────────────────────────────────────
if [ -f "package.json" ]; then
  echo "==> Installing Node dependencies..."
  npm install
fi

# ── Python / pip ──────────────────────────────────────────────────────────────
if [ -f "requirements.txt" ]; then
  echo "==> Installing Python dependencies..."
  pip install -r requirements.txt
fi

if [ -f "pyproject.toml" ]; then
  echo "==> Installing Python project..."
  pip install -e . 2>/dev/null || true
fi

# ── Ruby / Bundler ────────────────────────────────────────────────────────────
if [ -f "Gemfile" ]; then
  echo "==> Installing Ruby gems..."
  bundle install
fi

echo "==> Session start hook complete."
