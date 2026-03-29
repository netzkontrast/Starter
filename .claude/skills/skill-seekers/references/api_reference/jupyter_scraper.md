# API Reference: jupyter_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/jupyter_scraper.py`

---

## Classes

### JupyterToSkillConverter

Convert Jupyter Notebook (.ipynb) to skill.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |


##### extract_notebook(self) → bool

Extract content from Jupyter Notebook file(s).

Reads .ipynb via nbformat v4, extracts markdown/code/raw cells,
detects language from kernel metadata, extracts imports, scores quality.
Saves intermediate JSON to {name}_extracted.json. Returns True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _collect_notebook_files(self, path: Path) → list[Path]

Collect .ipynb files from a path (single file or directory).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | Path | - | - |

**Returns**: `list[Path]`


##### _parse_single_notebook(self, nb_path: Path) → dict

Parse a single .ipynb file and return structured data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| nb_path | Path | - | - |

**Returns**: `dict`


##### _parse_markdown_cell(self, source: str, cell_index: int, tags: list[str], notebook_name: str) → list[dict]

Parse a markdown cell, splitting by heading boundaries.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | - | - |
| cell_index | int | - | - |
| tags | list[str] | - | - |
| notebook_name | str | - | - |

**Returns**: `list[dict]`


##### _build_markdown_section(self, heading: str, heading_level: str, lines: list[str], cell_index: int, tags: list[str], notebook_name: str) → dict

Build a section dict from parsed markdown content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| heading | str | - | - |
| heading_level | str | - | - |
| lines | list[str] | - | - |
| cell_index | int | - | - |
| tags | list[str] | - | - |
| notebook_name | str | - | - |

**Returns**: `dict`


##### _parse_code_cell(self, cell: dict, cell_index: int, language: str, tags: list[str], notebook_name: str) → dict

Parse a code cell including source and outputs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cell | dict | - | - |
| cell_index | int | - | - |
| language | str | - | - |
| tags | list[str] | - | - |
| notebook_name | str | - | - |

**Returns**: `dict`


##### _parse_raw_cell(self, source: str, cell_index: int, tags: list[str], notebook_name: str) → dict

Parse a raw cell (unrendered text).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | - | - |
| cell_index | int | - | - |
| tags | list[str] | - | - |
| notebook_name | str | - | - |

**Returns**: `dict`


##### _infer_code_heading(self, source: str, execution_count: int | None) → str

Infer a descriptive heading for a code cell from first meaningful line.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | - | - |
| execution_count | int | None | - | - |

**Returns**: `str`


##### _detect_language(self, metadata: dict) → str

Detect programming language from notebook kernel metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| metadata | dict | - | - |

**Returns**: `str`


##### _extract_imports(self, source: str, language: str) → list[str]

Extract import/library statements from code source.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | str | - | - |
| language | str | - | - |

**Returns**: `list[str]`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict]

Categorize sections based on cell type and topic keywords.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict]`


##### _section_text(self, section: dict) → str

Combine section text, heading, and code into a single lowercase string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| section | dict | - | - |

**Returns**: `str`


##### _print_categories(self, categorized: dict[str, dict]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### build_skill(self) → None

Build complete skill directory structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _nb_basename(self) → str

Return the notebook stem if notebook_path points to a single file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _ref_filename(self, sections: list[dict], section_num: int, total_sections: int) → str

Determine the reference file path for a category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sections | list[dict] | - | - |
| section_num | int | - | - |
| total_sections | int | - | - |

**Returns**: `str`


##### _generate_reference_file(self, _cat_key: str, cat_data: dict, section_num: int, total_sections: int) → None

Generate a reference markdown file for a category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _cat_key | str | - | - |
| cat_data | dict | - | - |
| section_num | int | - | - |
| total_sections | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict[str, dict]) → None

Generate reference index file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict]) → None

Generate main SKILL.md file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _format_key_concepts(self) → str

Extract key concepts from markdown headings across all sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _format_patterns_from_content(self) → str

Extract common patterns from text content headings.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert string to safe filename.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_jupyter_deps()

Raise RuntimeError if nbformat is not installed.

**Returns**: (none)



### infer_description_from_notebook(metadata: dict | None = None, name: str = '') → str

Infer skill description from notebook metadata.

Args:
    metadata: Notebook-level metadata dict (kernelspec, language_info, etc.)
    name: Skill name for fallback

Returns:
    Description string suitable for "Use when..." format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### _score_code_quality(code: str) → float

Simple quality heuristic for code blocks (0–10 scale).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main() → int

Standalone CLI entry point for the Jupyter Notebook scraper.

**Returns**: `int`


