# API Reference: jupyter.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/jupyter.py`

---

## Functions

### add_jupyter_arguments(parser: argparse.ArgumentParser) → None

Add all jupyter command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds Jupyter-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for Jupyter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


