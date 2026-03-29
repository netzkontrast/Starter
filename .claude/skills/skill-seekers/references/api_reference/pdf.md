# API Reference: pdf.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/pdf.py`

---

## Functions

### add_pdf_arguments(parser: argparse.ArgumentParser) → None

Add all pdf command arguments to a parser.

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds PDF-specific args on top.

The default for --enhance-level is overridden to 0 (disabled) for PDF.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`


