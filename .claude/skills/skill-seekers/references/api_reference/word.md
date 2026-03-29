# API Reference: word.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/word.py`

---

## Functions

### add_word_arguments(parser: argparse.ArgumentParser) → None

Add all word command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds Word-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for Word.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


