# API Reference: common.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/common.py`

---

## Functions

### add_common_arguments(parser: argparse.ArgumentParser) → None

Add common arguments to a parser.

These arguments are shared across most commands for consistent UX.

Args:
    parser: The ArgumentParser to add arguments to

Example:
    >>> parser = argparse.ArgumentParser()
    >>> add_common_arguments(parser)
    >>> # Now parser has --name, --description, etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### add_behavior_arguments(parser: argparse.ArgumentParser) → None

Add behavior arguments (--dry-run, --verbose, --quiet) to a parser.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### add_all_standard_arguments(parser: argparse.ArgumentParser) → None

Add common + behavior + workflow arguments to a parser.

This is the ONE call every scraper should make to accept all universal flags
that the ``create`` command may forward.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### get_common_argument_names() → set

Get the set of common argument destination names.

Returns:
    Set of argument dest names (e.g., {'name', 'description', ...})

**Returns**: `set`



### add_rag_arguments(parser: argparse.ArgumentParser) → None

Add RAG (Retrieval-Augmented Generation) arguments to a parser.

These arguments enable semantic chunking for RAG pipelines.

Args:
    parser: The ArgumentParser to add arguments to

Example:
    >>> parser = argparse.ArgumentParser()
    >>> add_rag_arguments(parser)
    >>> # Now parser has --chunk-for-rag, --chunk-tokens, --chunk-overlap-tokens

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |

**Returns**: `None`



### get_rag_argument_names() → set

Get the set of RAG argument destination names.

Returns:
    Set of argument dest names (e.g., {'chunk_for_rag', 'chunk_tokens', 'chunk_overlap_tokens'})

**Returns**: `set`



### get_behavior_argument_names() → set

Get the set of behavior argument destination names.

**Returns**: `set`



### get_all_standard_argument_names() → set

Get the combined set of common + behavior + workflow dest names.

**Returns**: `set`



### get_argument_help(arg_name: str) → str

Get the help text for a common or behavior argument.

Args:
    arg_name: Name of the argument (e.g., 'name', 'dry_run')

Returns:
    Help text string

Raises:
    KeyError: If argument doesn't exist in either dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| arg_name | str | - | - |

**Returns**: `str`


