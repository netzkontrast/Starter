# API Reference: scrape.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/scrape.py`

---

## Functions

### add_scrape_arguments(parser: argparse.ArgumentParser) → None

Add all scrape command arguments to a parser.

This is the SINGLE SOURCE OF TRUTH for scrape arguments.
Used by:
- doc_scraper.py (standalone scraper)
- parsers/scrape_parser.py (unified CLI)

Registers shared args (name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, workflow args) via add_all_standard_arguments(),
then adds scrape-specific args on top.

Args:
    parser: The ArgumentParser to add arguments to

Example:
    >>> parser = argparse.ArgumentParser()
    >>> add_scrape_arguments(parser)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### get_scrape_argument_names() → set

Get the set of scrape argument destination names.

Returns:
    Set of argument dest names (includes shared + scrape-specific)

**Returns**: `set`



### get_scrape_argument_count() → int

Get the total number of scrape arguments.

Returns:
    Number of arguments

**Returns**: `int`


