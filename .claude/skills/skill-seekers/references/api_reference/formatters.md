# API Reference: formatters.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/formatters.py`

---

## Classes

### MarkdownFormatter

Format Document as Markdown.

**Inherits from**: (none)

#### Methods

##### __init__(self, options: dict[str, Any] = None)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options | dict[str, Any] | None | - |


##### format(self, document: Document) → str

Convert document to markdown string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `str`


##### _format_metadata(self, meta: dict) → str

Format metadata as YAML frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| meta | dict | - | - |

**Returns**: `str`


##### _format_toc(self, headings: list) → str

Format table of contents.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| headings | list | - | - |

**Returns**: `str`


##### _format_block(self, block: ContentBlock) → str

Format a single content block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_heading(self, block: ContentBlock) → str

Format heading block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_paragraph(self, block: ContentBlock) → str

Format paragraph block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_code_block(self, block: ContentBlock) → str

Format code block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_table(self, block: ContentBlock) → str

Format table block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_table_data(self, table: Table) → str

Format table data as markdown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table | Table | - | - |

**Returns**: `str`


##### _format_list(self, block: ContentBlock) → str

Format list block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_image(self, block: ContentBlock) → str

Format image block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_cross_ref(self, block: ContentBlock) → str

Format cross-reference block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_admonition(self, block: ContentBlock) → str

Format admonition/callout block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_directive(self, block: ContentBlock) → str

Format directive block (RST-specific).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_field_list(self, block: ContentBlock) → str

Format field list block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_definition_list(self, block: ContentBlock) → str

Format definition list block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`


##### _format_meta(self, block: ContentBlock) → str

Format metadata block (usually filtered out).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `str`




### SkillFormatter

Format Document for skill-seekers internal use.

**Inherits from**: (none)

#### Methods

##### format(self, document: Document) → dict[str, Any]

Format document for skill output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |

**Returns**: `dict[str, Any]`


##### _extract_summary(self, document: Document, max_length: int = 500) → str

Extract a text summary from the document.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| document | Document | - | - |
| max_length | int | 500 | - |

**Returns**: `str`


##### _score_table(self, table: Table) → float

Quick table quality score.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table | Table | - | - |

**Returns**: `float`



