# API Reference: create.py

**Language**: Python

**Source**: `src/skill_seekers/cli/arguments/create.py`

---

## Functions

### get_universal_argument_names() → set[str]

Get set of universal argument names.

**Returns**: `set[str]`



### get_source_specific_arguments(source_type: str) → dict[str, dict[str, Any]]

Get source-specific arguments for a given source type.

Args:
    source_type: One of 'web', 'github', 'local', 'pdf', 'config'

Returns:
    Dict of argument definitions

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source_type | str | - | - |

**Returns**: `dict[str, dict[str, Any]]`



### get_compatible_arguments(source_type: str) → list[str]

Get list of compatible argument names for a source type.

Args:
    source_type: Source type ('web', 'github', 'local', 'pdf', 'config')

Returns:
    List of argument names that are compatible with this source

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source_type | str | - | - |

**Returns**: `list[str]`



### add_create_arguments(parser: argparse.ArgumentParser, mode: str = 'default') → None

Add create command arguments to parser.

Supports multiple help modes for progressive disclosure:
- 'default': Universal arguments only (15 flags)
- 'web': Universal + web-specific
- 'github': Universal + github-specific
- 'local': Universal + local-specific
- 'pdf': Universal + pdf-specific
- 'word': Universal + word-specific
- 'epub': Universal + epub-specific
- 'video': Universal + video-specific
- 'advanced': Advanced/rare arguments
- 'all': All 120+ arguments

Args:
    parser: ArgumentParser to add arguments to
    mode: Help mode (default, web, github, local, pdf, word, advanced, all)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| parser | argparse.ArgumentParser | - | - |
| mode | str | 'default' | - |

**Returns**: `None`


