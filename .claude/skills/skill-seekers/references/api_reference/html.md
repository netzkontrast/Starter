# API Reference: html.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/html.py`

---

## Functions

### add_html_arguments(parser: argparse.ArgumentParser) → None

Add all html command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds HTML-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for HTML.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


