# API Reference: manpage.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/manpage.py`

---

## Functions

### add_manpage_arguments(parser: argparse.ArgumentParser) → None

Add all manpage command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds ManPage-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for ManPage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


