# API Reference: chat.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/chat.py`

---

## Functions

### add_chat_arguments(parser: argparse.ArgumentParser) → None

Add all chat command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds Chat-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for Chat.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


