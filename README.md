# Starter

A Claude Code starter template pre-configured with RTK (Rust Token Killer) for 60-90% token savings and HAM (Hierarchical Agent Memory) for persistent context across sessions.

## What's Included

- **CLAUDE.md** — RTK rules + Agent Memory System instructions for Claude Code
- **HAM scaffold** — `.memory/` directory for decisions, patterns, and inferences
- **`.gitignore`** — HAM artifacts excluded from version control by default

## RTK — Token Compression

All shell commands run through the RTK proxy, which compresses output before it reaches Claude's context window. Use `rtk` commands explicitly or let the hook rewrite standard commands transparently.

```bash
rtk ls <path>               # compressed directory tree
rtk read <file>             # compressed file contents
rtk grep "<pattern>" <path> # grouped search results
rtk git status              # compressed git output
rtk test <command>          # failures only
rtk gain                    # view token savings
```

## HAM — Agent Memory

Persistent memory files in `.memory/` survive across Claude Code sessions:

| File | Purpose |
|---|---|
| `decisions.md` | Architectural Decision Records (ADRs) |
| `patterns.md` | Reusable implementation patterns |
| `inbox.md` | Unconfirmed inferences (review before promoting) |
| `audit-log.md` | Session audit history |

HAM starts in **baseline mode** — the first 10 tasks run without memory loading to establish a token baseline. After that it switches to active mode and `ham savings` shows your ROI.

## Getting Started

Clone this repo, open in Claude Code, and start building. The RTK hook and HAM memory system are ready to go.

```bash
ham status     # check HAM version and memory file count
ham savings    # view token and cost savings report
ham audit      # check memory system health
```
