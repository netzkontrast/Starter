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

<!-- rtk-instructions v2 -->
# RTK (Rust Token Killer) - Token-Optimized Commands

## Golden Rule

**Always prefix commands with `rtk`**. If RTK has a dedicated filter, it uses it. If not, it passes through unchanged. This means RTK is always safe to use.

**Important**: Even in command chains with `&&`, use `rtk`:
```bash
# ❌ Wrong
git add . && git commit -m "msg" && git push

# ✅ Correct
rtk git add . && rtk git commit -m "msg" && rtk git push
```

## RTK Commands by Workflow

### Build & Compile (80-90% savings)
```bash
rtk cargo build         # Cargo build output
rtk cargo check         # Cargo check output
rtk cargo clippy        # Clippy warnings grouped by file (80%)
rtk tsc                 # TypeScript errors grouped by file/code (83%)
rtk lint                # ESLint/Biome violations grouped (84%)
rtk prettier --check    # Files needing format only (70%)
rtk next build          # Next.js build with route metrics (87%)
```

### Test (90-99% savings)
```bash
rtk cargo test          # Cargo test failures only (90%)
rtk vitest run          # Vitest failures only (99.5%)
rtk playwright test     # Playwright failures only (94%)
rtk test <cmd>          # Generic test wrapper - failures only
```

### Git (59-80% savings)
```bash
rtk git status          # Compact status
rtk git log             # Compact log (works with all git flags)
rtk git diff            # Compact diff (80%)
rtk git show            # Compact show (80%)
rtk git add             # Ultra-compact confirmations (59%)
rtk git commit          # Ultra-compact confirmations (59%)
rtk git push            # Ultra-compact confirmations
rtk git pull            # Ultra-compact confirmations
rtk git branch          # Compact branch list
rtk git fetch           # Compact fetch
rtk git stash           # Compact stash
rtk git worktree        # Compact worktree
```

Note: Git passthrough works for ALL subcommands, even those not explicitly listed.

### GitHub (26-87% savings)
```bash
rtk gh pr view <num>    # Compact PR view (87%)
rtk gh pr checks        # Compact PR checks (79%)
rtk gh run list         # Compact workflow runs (82%)
rtk gh issue list       # Compact issue list (80%)
rtk gh api              # Compact API responses (26%)
```

### JavaScript/TypeScript Tooling (70-90% savings)
```bash
rtk pnpm list           # Compact dependency tree (70%)
rtk pnpm outdated       # Compact outdated packages (80%)
rtk pnpm install        # Compact install output (90%)
rtk npm run <script>    # Compact npm script output
rtk npx <cmd>           # Compact npx command output
rtk prisma              # Prisma without ASCII art (88%)
```

### Files & Search (60-75% savings)
```bash
rtk ls <path>           # Tree format, compact (65%)
rtk read <file>         # Code reading with filtering (60%)
rtk grep <pattern>      # Search grouped by file (75%)
rtk find <pattern>      # Find grouped by directory (70%)
```

### Analysis & Debug (70-90% savings)
```bash
rtk err <cmd>           # Filter errors only from any command
rtk log <file>          # Deduplicated logs with counts
rtk json <file>         # JSON structure without values
rtk deps                # Dependency overview
rtk env                 # Environment variables compact
rtk summary <cmd>       # Smart summary of command output
rtk diff                # Ultra-compact diffs
```

### Infrastructure (85% savings)
```bash
rtk docker ps           # Compact container list
rtk docker images       # Compact image list
rtk docker logs <c>     # Deduplicated logs
rtk kubectl get         # Compact resource list
rtk kubectl logs        # Deduplicated pod logs
```

### Network (65-70% savings)
```bash
rtk curl <url>          # Compact HTTP responses (70%)
rtk wget <url>          # Compact download output (65%)
```

### Meta Commands
```bash
rtk gain                # View token savings statistics
rtk gain --history      # View command history with savings
rtk discover            # Analyze Claude Code sessions for missed RTK usage
rtk proxy <cmd>         # Run command without filtering (for debugging)
rtk init                # Add RTK instructions to CLAUDE.md
rtk init --global       # Add RTK to ~/.claude/CLAUDE.md
```

## Token Savings Overview

| Category | Commands | Typical Savings |
|----------|----------|-----------------|
| Tests | vitest, playwright, cargo test | 90-99% |
| Build | next, tsc, lint, prettier | 70-87% |
| Git | status, log, diff, add, commit | 59-80% |
| GitHub | gh pr, gh run, gh issue | 26-87% |
| Package Managers | pnpm, npm, npx | 70-90% |
| Files | ls, read, grep, find | 60-75% |
| Infrastructure | docker, kubectl | 85% |
| Network | curl, wget | 65-70% |

Overall average: **60-90% token reduction** on common development operations.
<!-- /rtk-instructions -->