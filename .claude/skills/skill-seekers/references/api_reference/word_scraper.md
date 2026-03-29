# API Reference: word_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/word_scraper.py`

---

## Classes

### WordToSkillConverter

Convert Word document (.docx) to Claude skill.

**Inherits from**: (none)

#### Methods

##### __init__(self, config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | None | - | - |


##### extract_docx(self)

Extract content from Word document using mammoth + python-docx.

- mammoth converts body content to HTML (leverages Word paragraph styles)
- python-docx provides metadata and fine-grained table access
- BeautifulSoup parses the HTML and splits by h1/h2 heading boundaries
- LanguageDetector identifies code language in <code> blocks

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### load_extracted_data(self, json_path)

Load previously extracted data from JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | None | - | - |


##### categorize_content(self)

Categorize sections based on headings or keywords.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### build_skill(self)

Build complete skill structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _generate_reference_file(self, _cat_key, cat_data, section_num, total_sections)

Generate a reference markdown file for a category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _cat_key | None | - | - |
| cat_data | None | - | - |
| section_num | None | - | - |
| total_sections | None | - | - |


##### _generate_index(self, categorized)

Generate reference index.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | None | - | - |


##### _generate_skill_md(self, categorized)

Generate main SKILL.md file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | None | - | - |


##### _format_key_concepts(self) → str

Extract key concepts from headings across all sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _format_patterns_from_content(self) → str

Extract common patterns from text content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name)

Convert string to safe filename.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | None | - | - |




## Functions

### _check_word_deps()

Raise RuntimeError if mammoth/python-docx are not installed.

**Returns**: (none)



### infer_description_from_word(metadata: dict = None, name: str = '') → str

Infer skill description from Word document metadata or name.

Args:
    metadata: Document metadata dict with title, subject, etc.
    name: Skill name for fallback

Returns:
    Description string suitable for "Use when..." format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | - |
| name | str | '' | - |

**Returns**: `str`



### _build_section(section_number: int, heading: str | None, heading_level: str | None, elements: list, doc) → dict

Build a section dict from a list of BeautifulSoup elements.

Args:
    section_number: 1-based section index
    heading: Heading text (or None for preamble)
    heading_level: 'h1', 'h2', etc.
    elements: List of BeautifulSoup Tag objects belonging to this section
    doc: python-docx Document (used for table cross-reference, not currently used)

Returns:
    Section dict compatible with the intermediate JSON format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| section_number | int | - | - |
| heading | str | None | - | - |
| heading_level | str | None | - | - |
| elements | list | - | - |
| doc | None | - | - |

**Returns**: `dict`



### _extract_table_from_html(table_elem) → dict | None

Extract headers and rows from a BeautifulSoup <table> element.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| table_elem | None | - | - |

**Returns**: `dict | None`



### _score_code_quality(code: str) → float

Simple quality heuristic for code blocks (0-10 scale).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main()

**Returns**: (none)



### _flush_section()

**Returns**: (none)


