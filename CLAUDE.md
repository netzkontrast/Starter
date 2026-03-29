# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a framework-agnostic starter repository pre-configured for Claude Code. It contains no application code yet — the stack and tooling should be added as the project grows.

## Claude Code Configuration

The `.claude/` directory contains:

- **`settings.json`** — Claude Code settings (hooks, permissions, etc.)
- **`hooks/session-start.sh`** — SessionStart hook that auto-installs dependencies at session start for Node (`npm install`), Python (`pip install -r requirements.txt` / `pip install -e .`), and Ruby (`bundle install`) projects.

When adding a new language/runtime, extend `session-start.sh` with its dependency installation command.

## Development Commands

No build, test, or lint commands exist yet. Add them here as the project is set up.
