# API Reference: analyze.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/analyze.py`

---

## Functions

### add_analyze_arguments(parser: argparse.ArgumentParser) → None

Add all analyze command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds analyze-specific args on top.

The default for --enhance-level is overridden to 0 (off) for analyze,
and --output default is set to 'output/codebase/'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### get_analyze_argument_names() → set

Get the set of analyze argument destination names.

**Returns**: `set`


