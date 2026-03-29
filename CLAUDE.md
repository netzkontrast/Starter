# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a starter template repository pre-configured for Claude Code development. It has no application code yet — the project structure and tooling are ready to be extended.

## Session Startup

A `SessionStart` hook (`.claude/hooks/session-start.sh`) automatically installs dependencies at the beginning of each Claude Code session. It detects and runs the appropriate package manager:
- `npm install` — when `package.json` is present
- `pip install -r requirements.txt` or `pip install -e .` — when Python manifests are present
- `bundle install` — when `Gemfile` is present

Extend this script as the project grows.

## Plugins

`.claude/settings.json` enables:
- **`github@claude-code-marketplace`** — GitHub integration for PR/issue management
- **`token-optimizer`** marketplace — sourced from `alexgreensh/token-optimizer` on GitHub

## Development Branch

All changes should be developed on `claude/init-project-setup-a74Sx` and pushed with:
```
git push -u origin claude/init-project-setup-a74Sx
```
