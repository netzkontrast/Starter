# API Reference: unified_structure.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/unified_structure.py`

---

## Classes

### ContentBlockType

Standardized content block types across all formats.

**Inherits from**: Enum



### CrossRefType

Types of cross-references (mainly RST but useful for others).

**Inherits from**: Enum



### AdmonitionType

Types of admonitions/callouts.

**Inherits from**: Enum



### ListType

Types of lists.

**Inherits from**: Enum



### Heading

A document heading/section title.

**Inherits from**: (none)



### CodeBlock

A code block with metadata.

**Inherits from**: (none)



### Table

A table with rows and cells.

**Inherits from**: (none)

#### Methods

##### num_rows(self) → int

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`


##### num_cols(self) → int

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `int`




### CrossReference

A cross-reference link.

**Inherits from**: (none)



### Field

A field in a field list (RST :param:, :returns:, etc.).

**Inherits from**: (none)



### DefinitionItem

A definition list item (term + definition).

**Inherits from**: (none)



### Image

An image reference or embedded image.

**Inherits from**: (none)



### ContentBlock

Universal content block - used by ALL parsers.

**Inherits from**: (none)



### ExtractionStats

Statistics about document extraction.

**Inherits from**: (none)



### Document

Unified document structure - output of ALL parsers.

This class provides a standardized representation of document content
regardless of the source format (RST, Markdown, PDF, HTML).

**Inherits from**: (none)

#### Methods

##### to_markdown(self, options: dict | None = None) → str

Convert unified structure to markdown output.

Args:
    options: Optional formatting options
        - include_toc: bool = False
        - max_heading_level: int = 6
        - code_block_style: str = 'fenced'  # or 'indented'
        - table_style: str = 'github'  # or 'simple'

Returns:
    Markdown-formatted string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options | dict | None | None | - |

**Returns**: `str`


##### to_skill_format(self) → dict[str, Any]

Convert to skill-seekers internal format.

Returns:
    Dictionary compatible with existing skill-seekers pipelines

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`


##### _extract_content_text(self) → str

Extract plain text content from paragraphs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### get_section_content(self, heading_text: str) → list[ContentBlock]

Get all content blocks under a specific section heading.

Args:
    heading_text: The section heading to find

Returns:
    List of ContentBlock objects in that section

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| heading_text | str | - | - |

**Returns**: `list[ContentBlock]`


##### find_blocks_by_type(self, block_type: ContentBlockType) → list[ContentBlock]

Find all blocks of a specific type.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block_type | ContentBlockType | - | - |

**Returns**: `list[ContentBlock]`


##### find_code_by_language(self, language: str) → list[CodeBlock]

Find all code blocks in a specific language.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| language | str | - | - |

**Returns**: `list[CodeBlock]`


##### find_tables_by_caption(self, pattern: str) → list[Table]

Find tables with captions matching a pattern.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| pattern | str | - | - |

**Returns**: `list[Table]`


##### get_api_summary(self) → dict[str, Any]

Extract API summary if this is API documentation.

Returns:
    Dictionary with 'properties', 'methods', 'signals', etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, Any]`


##### _parse_api_table(self, table: Table | None) → list[dict]

Parse an API table into structured data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table | Table | None | - | - |

**Returns**: `list[dict]`




## Functions

### merge_documents(docs: list[Document]) → Document

Merge multiple documents into one.

Useful for combining multiple source files into a single skill.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| docs | list[Document] | - | - |

**Returns**: `Document`


