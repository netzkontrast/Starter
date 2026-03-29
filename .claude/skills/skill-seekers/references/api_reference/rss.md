# API Reference: rss.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/rss.py`

---

## Functions

### add_rss_arguments(parser: argparse.ArgumentParser) → None

Add all rss command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds RSS-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for RSS.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


