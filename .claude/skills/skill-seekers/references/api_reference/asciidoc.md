# API Reference: asciidoc.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/asciidoc.py`

---

## Functions

### add_asciidoc_arguments(parser: argparse.ArgumentParser) → None

Add all asciidoc command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds AsciiDoc-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for AsciiDoc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


