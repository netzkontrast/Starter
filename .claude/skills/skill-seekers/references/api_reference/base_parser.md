# API Reference: base_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/base_parser.py`

---

## Classes

### ParseResult

Result of parsing a document.

**Inherits from**: (none)

#### Methods

##### is_ok(self) → bool

Check if parsing succeeded.

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`




### BaseParser

Abstract base class for all document parsers.

Implementations:
- RstParser: ReStructuredText documents
- MarkdownParser: Markdown documents
- PdfParser: PDF documents
- HtmlParser: HTML documents (future)

**Inherits from**: ABC

#### Methods

##### __init__(self, options: dict[str, Any] | None = None)

Initialize parser with options.

Args:
    options: Parser-specific options
        Common options:
        - include_comments: bool = False
        - extract_metadata: bool = True
        - quality_scoring: bool = True
        - max_file_size_mb: float = 50.0
        - encoding: str = 'utf-8'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options | dict[str, Any] | None | None | - |


##### format_name(self) → str

Return the format name this parser handles.

**Decorators**: `@property`, `@abstractmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### supported_extensions(self) → list[str]

Return list of supported file extensions.

**Decorators**: `@property`, `@abstractmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[str]`


##### can_parse(self, source: str | Path) → bool

Check if this parser can handle the given source.

Args:
    source: File path or content string

Returns:
    True if this parser can handle the source

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | Path | - | - |

**Returns**: `bool`


##### parse(self, source: str | Path) → ParseResult

Parse a document from file path or content string.

Args:
    source: File path (str/Path) or content string

Returns:
    ParseResult with document or error info

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | Path | - | - |

**Returns**: `ParseResult`


##### parse_file(self, path: str | Path) → ParseResult

Parse a file from path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | Path | - | - |

**Returns**: `ParseResult`


##### parse_string(self, content: str, source_path: str = '<string>') → ParseResult

Parse content from string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| source_path | str | '<string>' | - |

**Returns**: `ParseResult`


##### _parse_content(self, content: str, source_path: str) → Document

Parse content string into Document.

Args:
    content: Raw content to parse
    source_path: Original source path (for reference)

Returns:
    Parsed Document

**Decorators**: `@abstractmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| source_path | str | - | - |

**Returns**: `Document`


##### _detect_format(self, content: str) → bool

Detect if content matches this parser's format.

Args:
    content: Content to check

Returns:
    True if content appears to be this format

**Decorators**: `@abstractmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |

**Returns**: `bool`


##### _read_source(self, source: str | Path) → str

Read content from source.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | Path | - | - |

**Returns**: `str`


##### _read_source_with_path(self, source: str | Path) → tuple[str, str]

Read content and return with path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | Path | - | - |

**Returns**: `tuple[str, str]`


##### _post_process(self, document: Document) → Document

Post-process document after parsing.

Override to add cross-references, validate, etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `Document`


##### _extract_headings(self, document: Document) → list

Extract headings from content blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `list`


##### _extract_code_blocks(self, document: Document) → list

Extract code blocks from content blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `list`


##### _extract_tables(self, document: Document) → list

Extract tables from content blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `list`


##### _create_quality_scorer(self)

Create a quality scorer if enabled.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### StringSource

**Inherits from**: (none)

#### Methods

##### __init__(self, content: str, path: str)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| path | str | - | - |


##### read_text(self, encoding: str = 'utf-8') → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| encoding | str | 'utf-8' | - |

**Returns**: `str`


##### exists(self) → bool

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### __str__(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### get_parser_for_file(path: str | Path) → BaseParser | None

Get the appropriate parser for a file.

Args:
    path: File path

Returns:
    Appropriate parser instance or None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | str | Path | - | - |

**Returns**: `BaseParser | None`



### parse_document(source: str | Path, format_hint: str | None = None) → ParseResult

Parse a document, auto-detecting the format.

Args:
    source: File path or content string
    format_hint: Optional format hint ('rst', 'markdown', etc.)

Returns:
    ParseResult

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source | str | Path | - | - |
| format_hint | str | None | None | - |

**Returns**: `ParseResult`


