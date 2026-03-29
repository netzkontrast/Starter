# API Reference: create_command.py

**Language**: Python

**Source**: `src/skill_seekers/cli/create_command.py`

---

## Classes

### CreateCommand

Unified create command implementation.

**Inherits from**: (none)

#### Methods

##### __init__(self, args: argparse.Namespace)

Initialize create command.

Args:
    args: Parsed command-line arguments

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| args | argparse.Namespace | - | - |


##### execute(self) → int

Execute the create command.

Returns:
    Exit code (0 for success, non-zero for error)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _validate_arguments(self) → None

Validate arguments and warn about incompatible ones.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _is_explicitly_set(self, arg_name: str, arg_value: any) → bool

Check if an argument was explicitly set by the user.

Args:
    arg_name: Argument name
    arg_value: Argument value

Returns:
    True if user explicitly set this argument

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| arg_name | str | - | - |
| arg_value | any | - | - |

**Returns**: `bool`


##### _route_to_scraper(self) → int

Route to appropriate scraper based on source type.

Returns:
    Exit code from scraper

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_web(self) → int

Route to web documentation scraper (doc_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_github(self) → int

Route to GitHub repository scraper (github_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_local(self) → int

Route to local codebase analyzer (codebase_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_pdf(self) → int

Route to PDF scraper (pdf_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_word(self) → int

Route to Word document scraper (word_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_epub(self) → int

Route to EPUB scraper (epub_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_video(self) → int

Route to video scraper (video_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_config(self) → int

Route to unified scraper for config files (unified_scraper.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### _route_generic(self, module_name: str, file_flag: str) → int

Generic routing for new source types.

Most new source types (jupyter, html, openapi, asciidoc, pptx, rss,
manpage, confluence, notion, chat) follow the same pattern:
import module, build argv with --flag <file_path>, add common args, call main().

Args:
    module_name: Python module name under skill_seekers.cli (e.g., "jupyter_scraper")
    file_flag: CLI flag for the source file (e.g., "--notebook")

Returns:
    Exit code from scraper

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| module_name | str | - | - |
| file_flag | str | - | - |

**Returns**: `int`


##### _add_common_args(self, argv: list[str]) → None

Add truly universal arguments to argv list.

These flags are accepted by ALL scrapers (doc, github, codebase, pdf)
because each scraper calls ``add_all_standard_arguments(parser)``
which registers: name, description, output, enhance-level, api-key,
dry-run, verbose, quiet, and workflow args.

Route-specific flags (preset, config, RAG, preserve, etc.) are
forwarded only by the _route_*() method that needs them.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| argv | list[str] | - | - |

**Returns**: `None`




### NoWrapFormatter

**Inherits from**: argparse.RawDescriptionHelpFormatter

#### Methods

##### _split_lines(self, text, width)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | None | - | - |
| width | None | - | - |




## Functions

### main() → int

Entry point for create command.

Returns:
    Exit code (0 for success, non-zero for error)

**Returns**: `int`


