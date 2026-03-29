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

## Agent Memory System

### Before Working
- Read this file for global context
- Check `.memory/decisions.md` before architectural changes
- Check `.memory/patterns.md` before implementing common functionality
- Check if audit is due: if 14+ days or 10+ sessions since last audit in `.memory/audit-log.md`, suggest running one

### During Work
- Create CLAUDE.md in any new directory you create

### After Work
- Update relevant CLAUDE.md if conventions changed
- Log decisions to `.memory/decisions.md` (ADR format: status, decision, context, alternatives, consequences)
- Log patterns to `.memory/patterns.md`
- Uncertain inferences → `.memory/inbox.md` (never canonical files)

### Safety
- Never record secrets, API keys, or user data
- Never overwrite decisions — mark as [superseded]
- Never promote from inbox without user confirmation

### Commands
- `ham status` — Check memory system health
- `ham insights` — Generate actionable improvements
- `ham savings` — View token/cost savings report
- `ham audit` — Full health check
- `ham remove` — Safely disable HAM if needed
