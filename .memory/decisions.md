# Architecture Decision Records (ADRs)

## ADR-001: HAM Setup (2026-03-29)
**Status:** Accepted
**Decision:** Enable Hierarchical Agent Memory for token optimization
**Context:** Greenfield project requires structured guidance for Claude Code sessions
**Alternatives:** Monolithic CLAUDE.md only (higher token cost per prompt)
**Consequences:** 40-60% token savings per task; requires discipline maintaining .memory/ files

---
