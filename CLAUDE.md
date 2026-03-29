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
# Claude Code Custom Instructions

This environment utilizes RTK (Rust Token Killer) to compress command line outputs and reduce token consumption by 60-90%. To maintain a clean context window and maximize efficiency, you must follow these rules for all operations.

## 1. Avoid Built-in Tools (Use Bash Instead)
CRITICAL: Claude Code's built-in file tools (Read, Grep, Glob) bypass the Bash environment and therefore miss out on RTK's token compression.

- DO NOT use your built-in Read, Grep, or Glob tools.
- DO use the Bash tool for all file system interactions. The RTK hook will transparently intercept standard shell commands (cat, rg, find, git) and compress their output.

## 2. File & Search Operations
When inspecting the codebase via the Bash tool, explicitly use rtk commands to get token-optimized outputs:

- **Directory Trees:** Run `rtk ls <path>` instead of `ls -la` or `tree`.
- **Reading Files:** Run `rtk read <file>` instead of `cat`.
  - Tip: Use `rtk read <file> -l aggressive` to see only function/class signatures.
  - Tip: Use `rtk smart <file>` for a quick 2-line heuristic code summary.
- **Searching Content:** Run `rtk grep "<pattern>" <path>` to get grouped, condensed search results.
- **Finding Files:** Run `rtk find "<pattern>" <path>` for compact file listings.
- **JSON Inspection:** Run `rtk json <file.json>` to view the structure/keys of a JSON file without loading large, verbose values.

## 3. Standard Development Commands
Run your standard development commands in the Bash tool. The RTK hook will automatically rewrite them to their rtk equivalents. To be perfectly explicit, you may prefix them:

- **Git:** Use `rtk git status`, `rtk git diff`, `rtk git log -n 10`. (Avoids dumping thousands of tokens on large diffs).
- **Testing:** Run tests via `rtk test <command>` (e.g., `rtk test cargo test`, `rtk pytest`, `rtk vitest run`). This strips successful test noise and outputs only failures.
- **Linting/Building:** Run `rtk lint`, `rtk tsc`, `rtk ruff check`, or `rtk cargo build`.
- **Containers:** Use `rtk docker ps`, `rtk docker logs <container>`, or `rtk kubectl pods`.

## 4. Recovering Full Output on Failures (Tee)
Because rtk heavily truncates standard output (especially on test or build failures), you might occasionally need more context.

- If a command fails, rtk saves the full, unfiltered output to a temporary log file.
- You will see a message at the bottom of the output like: `[full output: ~/.local/share/rtk/tee/1707753600_cargo_test.log]`.
- DO NOT re-run the failed command to get more details. Instead, use `cat` or `rtk read` on that specific `.log` file path to access the full context.

## 5. Fetching Web/Log Data
- **Logs:** Run `rtk log <file>` to automatically deduplicate repetitive log lines and aggregate errors by count.
- **Web:** Run `rtk curl <url>` to download payloads while automatically stripping progress bars, HTML noise, or safely parsing JSON schemas.

## Agent Memory System

### Before Working
- Read this file for global context, then read the target directory's CLAUDE.md before changes
- If this file has a ## Context Routing section, use it to find the right subdirectory CLAUDE.md
- Check .memory/decisions.md before architectural changes
- Check .memory/patterns.md before implementing common functionality
- Check if audit is due: if 14+ days or 10+ sessions since last audit in .memory/audit-log.md, suggest running one

### During Work
- Create CLAUDE.md in any new directory you create

### After Work
- Update relevant CLAUDE.md if conventions changed
- Log decisions to .memory/decisions.md (ADR format)
- Log patterns to .memory/patterns.md
- Uncertain inferences → .memory/inbox.md (never canonical files)

### Safety
- Never record secrets, API keys, or user data
- Never overwrite decisions — mark as [superseded]
- Never promote from inbox without user confirmation
