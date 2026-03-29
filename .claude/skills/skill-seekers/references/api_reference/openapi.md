# API Reference: openapi.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/openapi.py`

---

## Functions

### add_openapi_arguments(parser: argparse.ArgumentParser) → None

Add all openapi command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds OpenAPI-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for OpenAPI.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


