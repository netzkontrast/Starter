# API Reference: confluence.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/confluence.py`

---

## Functions

### add_confluence_arguments(parser: argparse.ArgumentParser) → None

Add all confluence command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds Confluence-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for Confluence.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


