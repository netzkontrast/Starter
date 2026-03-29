# API Reference: pptx.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/pptx.py`

---

## Functions

### add_pptx_arguments(parser: argparse.ArgumentParser) → None

Add all pptx command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds PPTX-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for PPTX.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


