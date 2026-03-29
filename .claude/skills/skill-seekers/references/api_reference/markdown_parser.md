# API Reference: markdown_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/markdown_parser.py`

---

## Classes

### MarkdownParser

Parser for Markdown documents.

Supports standard Markdown and GitHub-flavored Markdown (GFM).

**Inherits from**: BaseParser

#### Methods

##### __init__(self, options: dict[str, Any] | None = None)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options | dict[str, Any] | None | None | - |


##### format_name(self) → str

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### supported_extensions(self) → list[str]

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[str]`


##### _detect_format(self, content: str) → bool

Detect if content is Markdown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |

**Returns**: `bool`


##### _parse_content(self, content: str, source_path: str) → Document

Parse Markdown content into Document.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| source_path | str | - | - |

**Returns**: `Document`


##### _parse_frontmatter(self) → dict | None

Parse YAML frontmatter if present.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict | None`


##### _parse_block(self) → ContentBlock | None

Parse a single block at current position.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock | None`


##### _is_setext_header(self, line: int) → bool

Check if current line is a Setext header.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| line | int | - | - |

**Returns**: `bool`


##### _parse_atx_header(self) → ContentBlock

Parse ATX style header (# Header).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_setext_header(self) → ContentBlock

Parse Setext style header (underline).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_code_fence(self) → ContentBlock

Parse fenced code block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_indented_code(self) → ContentBlock

Parse indented code block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _is_table(self, line: int) → bool

Check if current position is a table.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| line | int | - | - |

**Returns**: `bool`


##### _parse_table(self) → ContentBlock

Parse a GFM table.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_blockquote(self) → ContentBlock

Parse a blockquote, checking for admonitions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_html_comment(self) → ContentBlock | None

Parse HTML comment (usually skip).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock | None`


##### _parse_horizontal_rule(self) → ContentBlock

Parse horizontal rule.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _detect_list_type(self, stripped: str) → ListType | None

Detect if line starts a list and which type.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| stripped | str | - | - |

**Returns**: `ListType | None`


##### _parse_list(self, list_type: ListType) → ContentBlock

Parse a list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| list_type | ListType | - | - |

**Returns**: `ContentBlock`


##### _parse_paragraph(self) → ContentBlock

Parse a paragraph.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _process_inline(self, text: str) → str

Process inline Markdown elements.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `str`


##### _create_anchor(self, text: str) → str

Create URL anchor from heading text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `str`


##### _extract_specialized_content(self, document: Document)

Extract specialized content lists from blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |



