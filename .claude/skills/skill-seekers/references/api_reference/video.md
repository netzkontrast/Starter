# API Reference: video.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/video.py`

---

## Functions

### add_video_arguments(parser: argparse.ArgumentParser) → None

Add all video command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds video-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for video.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


