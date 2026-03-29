# API Reference: notion.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/notion.py`

---

## Functions

### add_notion_arguments(parser: argparse.ArgumentParser) → None

Add all notion command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds Notion-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for Notion.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


