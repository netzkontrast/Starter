# API Reference: epub_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/epub_scraper.py`

---

## Classes

### EpubToSkillConverter

Convert EPUB e-book to Claude skill.

**Inherits from**: (none)

#### Methods

##### __init__(self, config)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | None | - | - |


##### extract_epub(self)

Extract content from EPUB file.

Workflow:
1. Check dependencies (ebooklib)
2. Detect DRM via encryption.xml (fail fast)
3. Read EPUB via ebooklib with ignore_ncx=True (EPUB 3 TOC bug workaround)
4. Extract Dublin Core metadata
5. Iterate spine items in reading order
6. For each ITEM_DOCUMENT: parse XHTML with BeautifulSoup
7. Split by h1/h2 heading boundaries into sections
8. Extract code blocks from <pre>/<code> elements
9. Extract images from EpubImage items
10. Detect code languages via LanguageDetector
11. Save intermediate JSON to {name}_extracted.json

Returns True on success.
Raises RuntimeError for DRM-protected files.
Raises FileNotFoundError for missing files.
Raises ValueError for invalid EPUB files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _detect_drm(self, book) → bool

Detect DRM by checking for encryption.xml with non-font-obfuscation entries.

Per W3C EPUB 3.3 spec: encryption.xml is present when resources are encrypted.
Font obfuscation (IDPF algorithm http://www.idpf.org/2008/embedding or
Adobe algorithm http://ns.adobe.com/pdf/enc#RC) is NOT DRM.

Actual DRM uses algorithms like:
- Adobe ADEPT: http://ns.adobe.com/adept namespace
- Apple FairPlay: http://itunes.apple.com/dataenc
- Readium LCP: http://readium.org/2014/01/lcp

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| book | None | - | - |

**Returns**: `bool`


##### _extract_metadata(self, book) → dict

Extract Dublin Core metadata from EPUB.

Per W3C EPUB 3.3 spec: required elements are dc:identifier, dc:title, dc:language.
Optional: dc:creator, dc:contributor, dc:date, dc:description, dc:publisher,
dc:subject, dc:rights, dc:type, dc:coverage, dc:source, dc:relation, dc:format.

ebooklib API: book.get_metadata('DC', key) returns list of (value, attrs) tuples.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| book | None | - | - |

**Returns**: `dict`


##### _extract_spine_content(self, book) → list[dict]

Extract content from spine items in reading order.

Per W3C EPUB 3.3 spec: spine defines ordered list of content documents.
Linear="yes" (default) items form the primary reading order.
Linear="no" items are auxiliary (footnotes, glossary).

Parse with BeautifulSoup, split by h1/h2 heading boundaries.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| book | None | - | - |

**Returns**: `list[dict]`


##### _extract_images(self, book) → int

Extract images from EPUB manifest.

Per W3C EPUB 3.3 spec: core image media types are
image/gif, image/jpeg, image/png, image/svg+xml, image/webp.

Returns count of images found (images are stored in extracted_data sections).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| book | None | - | - |

**Returns**: `int`


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

### _check_epub_deps()

Raise RuntimeError if ebooklib is not installed.

**Returns**: (none)



### infer_description_from_epub(metadata: dict | None = None, name: str = '') → str

Infer skill description from EPUB metadata.

Args:
    metadata: EPUB Dublin Core metadata dict
    name: Skill name for fallback

Returns:
    Description string suitable for "Use when..." format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### _build_section(section_number: int, heading: str | None, heading_level: str | None, elements: list) → dict

Build a section dict from a list of BeautifulSoup elements.

Args:
    section_number: 1-based section index
    heading: Heading text (or None for preamble)
    heading_level: 'h1', 'h2', etc.
    elements: List of BeautifulSoup Tag objects belonging to this section

Returns:
    Section dict compatible with the intermediate JSON format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| section_number | int | - | - |
| heading | str | None | - | - |
| heading_level | str | None | - | - |
| elements | list | - | - |

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



### _get_one(key)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | None | - | - |

**Returns**: (none)



### _get_list(key)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| key | None | - | - |

**Returns**: (none)


