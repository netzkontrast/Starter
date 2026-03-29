# API Reference: rst_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/rst_parser.py`

---

## Classes

### RstParser

Parser for ReStructuredText documents.

Handles standard RST as well as Godot-specific extensions.

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

Detect if content is RST.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |

**Returns**: `bool`


##### _parse_content(self, content: str, source_path: str) → Document

Parse RST content into Document.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| source_path | str | - | - |

**Returns**: `Document`


##### _collect_substitutions(self)

First pass: collect all substitution definitions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _parse_block(self) → ContentBlock | None

Parse a single block at current position.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock | None`


##### _is_header(self, line: int) → bool

Check if current line is a header (has underline).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| line | int | - | - |

**Returns**: `bool`


##### _parse_header(self) → ContentBlock

Parse a header with underline.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_directive(self) → ContentBlock

Parse a directive block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_admonition_directive(self, name: str, argument: str, content: str, line: int) → ContentBlock

Parse an admonition directive (note, warning, etc.).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| argument | str | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _parse_code_block_directive(self, language: str, content: str, line: int) → ContentBlock

Parse a code-block directive.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| language | str | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _parse_table_directive(self, caption: str, content: str, line: int) → ContentBlock

Parse a table directive (simple or grid table).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| caption | str | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _parse_simple_table(self, content: str, caption: str | None, line: int) → Table

Parse a simple RST table (space-separated columns with = or - separators).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| caption | str | None | - | - |
| line | int | - | - |

**Returns**: `Table`


##### _parse_grid_table(self, content: str, caption: str | None, line: int) → Table

Parse a grid RST table.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| caption | str | None | - | - |
| line | int | - | - |

**Returns**: `Table`


##### _parse_list_table_directive(self, caption: str, content: str, line: int) → ContentBlock

Parse a list-table directive.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| caption | str | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _parse_toctree_directive(self, content: str, line: int) → ContentBlock

Parse a toctree directive.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _parse_image_directive(self, argument: str, content: str, line: int) → ContentBlock

Parse an image or figure directive.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| argument | str | - | - |
| content | str | - | - |
| line | int | - | - |

**Returns**: `ContentBlock`


##### _is_definition_list(self, line: int) → bool

Check if current line starts a definition list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| line | int | - | - |

**Returns**: `bool`


##### _parse_definition_list(self) → ContentBlock

Parse a definition list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _is_field_list(self, line: int) → bool

Check if current line starts a field list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| line | int | - | - |

**Returns**: `bool`


##### _parse_field_list(self) → ContentBlock

Parse a field list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_bullet_list(self) → ContentBlock

Parse a bullet list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_numbered_list(self) → ContentBlock

Parse a numbered list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _parse_paragraph(self) → ContentBlock

Parse a paragraph (default block type).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `ContentBlock`


##### _process_inline_markup(self, text: str) → str

Process inline RST markup.

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


##### _extract_xrefs_from_text(self, text: str, source_line: int | None) → tuple[list, list]

Extract cross-references and links from text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |
| source_line | int | None | - | - |

**Returns**: `tuple[list, list]`



