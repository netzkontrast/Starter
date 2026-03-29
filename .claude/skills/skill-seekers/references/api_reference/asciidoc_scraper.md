# API Reference: asciidoc_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/asciidoc_scraper.py`

---

## Classes

### AsciiDocToSkillConverter

Convert AsciiDoc documentation to an AI-ready skill.

Handles single ``.adoc`` files and directories. Content is parsed into
intermediate JSON, categorised, then rendered into the standard skill
directory layout (SKILL.md, references/, etc.).

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_asciidoc(self) → bool

Extract content from AsciiDoc file(s).

Discovers files, resolves attributes/includes, parses sections,
detects languages, and saves intermediate JSON.

Returns:
    True on success.

Raises:
    FileNotFoundError: If path does not exist.
    ValueError: If no AsciiDoc files found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _discover_files(self, path: Path) → list[Path]

Return sorted list of AsciiDoc files from *path* (file or directory).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | Path | - | - |

**Returns**: `list[Path]`


##### _extract_attributes(text: str) → dict[str, str]

Extract ``:attr-name: value`` definitions from text.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `dict[str, str]`


##### _resolve_attributes(text: str, attributes: dict[str, str]) → str

Replace ``{attr-name}`` references with their values.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |
| attributes | dict[str, str] | - | - |

**Returns**: `str`


##### _resolve_includes(self, text: str, base_dir: Path) → str

Resolve ``include::`` directives by inlining referenced files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |
| base_dir | Path | - | - |

**Returns**: `str`


##### _build_metadata(attributes: dict[str, str], file_path: Path) → dict

Build metadata dict from document attributes.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| attributes | dict[str, str] | - | - |
| file_path | Path | - | - |

**Returns**: `dict`


##### _parse_asciidoc_sections(self, text: str) → list[dict]

Parse AsciiDoc text into sections split by headings (= through =====).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `list[dict]`


##### _extract_code_blocks(self, text: str) → list[dict]

Extract source/listing/literal code blocks from AsciiDoc text.

Handles [source,lang] + ---- blocks, bare ---- blocks, and .... blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `list[dict]`


##### _extract_tables(self, text: str) → list[dict]

Parse AsciiDoc tables delimited by ``|===``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `list[dict]`


##### _parse_table_body(table_body: str) → dict | None

Parse body of an AsciiDoc table into headers and rows.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| table_body | str | - | - |

**Returns**: `dict | None`


##### _extract_admonitions(self, text: str) → list[dict]

Extract NOTE/TIP/WARNING/IMPORTANT/CAUTION admonitions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `list[dict]`


##### _extract_includes(text: str) → list[dict]

Detect remaining ``include::`` directives in text.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `list[dict]`


##### _convert_to_markdown(self, text: str) → str

Convert AsciiDoc inline formatting to Markdown equivalents.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `str`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict

Categorize sections by source file, headings, or keywords.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### build_skill(self) → None

Build complete skill directory structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _ref_filename(self, cat_data: dict, section_num: int, total: int) → str

Compute reference file path for a category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_data | dict | - | - |
| section_num | int | - | - |
| total | int | - | - |

**Returns**: `str`


##### _generate_reference_file(self, _cat_key: str, cat_data: dict, section_num: int, total: int) → None

Generate a reference Markdown file for one category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _cat_key | str | - | - |
| cat_data | dict | - | - |
| section_num | int | - | - |
| total | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict) → None

Generate references/index.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict) → None

Generate main SKILL.md file with rich summary content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict | - | - |

**Returns**: `None`


##### _format_key_concepts(self) → str

Extract key concepts from headings across all sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _format_patterns_from_content(self) → str

Extract common documentation patterns from section headings.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(name: str) → str

Convert name to a safe filename slug.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str`


##### _in_range(pos: int, ranges: list[tuple[int, int]]) → bool

Check whether pos falls within any consumed range.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pos | int | - | - |
| ranges | list[tuple[int, int]] | - | - |

**Returns**: `bool`




## Functions

### _check_asciidoc_deps() → None

Log debug message when asciidoc library is not installed (regex fallback used).

**Returns**: `None`



### infer_description_from_asciidoc(metadata: dict | None = None, name: str = '') → str

Infer skill description from AsciiDoc document metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### _score_code_quality(code: str) → float

Simple quality heuristic for code blocks (0-10 scale).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main() → int

CLI entry point for AsciiDoc scraper.

**Returns**: `int`



### _resolve_once(src: str, depth: int) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| src | str | - | - |
| depth | int | - | - |

**Returns**: `str`



### _parse_row(row_text: str) → list[str]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| row_text | str | - | - |

**Returns**: `list[str]`



### _replacer(match: re.Match) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| match | re.Match | - | - |

**Returns**: `str`


