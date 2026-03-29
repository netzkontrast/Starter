# API Reference: github.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/github.py`

---

## Functions

### add_github_arguments(parser: argparse.ArgumentParser) → None

Add all github command arguments to a parser.

This is the SINGLE SOURCE OF TRUTH for github arguments.
Used by:
- github_scraper.py (standalone scraper)
- parsers/github_parser.py (unified CLI)

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds GitHub-specific args on top.

Args:
    parser: The ArgumentParser to add arguments to

Example:
    >>> parser = argparse.ArgumentParser()
    >>> add_github_arguments(parser)  # Adds all github args

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### get_github_argument_names() → set

Get the set of github argument destination names.

Returns:
    Set of argument dest names (includes shared + github-specific)

**Returns**: `set`



### get_github_argument_count() → int

Get the total number of github arguments.

Returns:
    Number of arguments

**Returns**: `int`


