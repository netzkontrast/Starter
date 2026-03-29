# API Reference: html_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/html_scraper.py`

---

## Classes

### HtmlToSkillConverter

Convert local HTML files to a skill.

Supports single HTML files and directories of HTML files. Parses document
structure, extracts headings, content, code blocks, tables, images, and
links, then builds a complete skill directory structure.

Attributes:
    config: Configuration dict with name, html_path, description.
    name: Skill name.
    html_path: Path to the HTML file or directory.
    description: Skill description text.
    skill_dir: Output directory for the built skill.
    data_file: Path to the intermediate extracted JSON file.
    extracted_data: Parsed extraction results dict.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialize the HTML to skill converter.

Args:
    config: Configuration dict containing:
        - name (str): Skill name (required).
        - html_path (str): Path to HTML file or directory (optional).
        - description (str): Skill description (optional).
        - categories (dict): Category definitions for content grouping.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_html(self) → bool

Extract content from local HTML file(s).

Workflow:
1. Collect HTML files from path (single file or directory)
2. For each file: parse with BeautifulSoup (html.parser)
3. Extract document metadata (title, meta tags)
4. Extract main content using common selectors (article, main, etc.)
5. Split content by h1/h2 heading boundaries into sections
6. Extract code blocks from <pre>/<code> elements
7. Extract tables and convert to markdown-ready dicts
8. Extract images and links
9. Detect code languages via LanguageDetector
10. Save intermediate JSON to {name}_extracted.json

Returns:
    True on success.

Raises:
    FileNotFoundError: If the HTML path does not exist.
    ValueError: If no valid HTML files are found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_metadata(self, soup: BeautifulSoup, file_path: Path) → dict

Extract metadata from HTML document head.

Checks <title>, <meta name="..."> tags for standard metadata fields
(description, author, keywords, generator, language).

Args:
    soup: Parsed BeautifulSoup document.
    file_path: Path to the source file (used as fallback title).

Returns:
    Metadata dict with title, author, description, language, etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| soup | BeautifulSoup | - | - |
| file_path | Path | - | - |

**Returns**: `dict`


##### _clean_soup(self, soup: BeautifulSoup) → None

Remove non-content elements from the parsed HTML.

Strips scripts, styles, navigation, footers, ads, comments, and other
boilerplate elements that should not be part of the extracted content.

Args:
    soup: BeautifulSoup object to clean in-place.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| soup | BeautifulSoup | - | - |

**Returns**: `None`


##### _find_main_content(self, soup: BeautifulSoup) → Tag | BeautifulSoup

Find the main content area of an HTML document.

Tries common content selectors in priority order:
1. <main> tag
2. <article> tag
3. Elements with role="main"
4. Common content class/id selectors (.content, #content, etc.)
5. Falls back to <body> or the entire soup

Args:
    soup: Cleaned BeautifulSoup document.

Returns:
    BeautifulSoup Tag representing the main content area.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| soup | BeautifulSoup | - | - |

**Returns**: `Tag | BeautifulSoup`


##### _extract_sections(self, content: Tag | BeautifulSoup, start_section_number: int, source_file: Path) → tuple[list[dict], int]

Extract sections from HTML content by splitting on heading boundaries.

Iterates through top-level children of the content element. When an
h1 or h2 heading is encountered, the previous accumulated elements
are flushed into a section dict. Code blocks, tables, images, and
links are extracted from each section.

Args:
    content: BeautifulSoup Tag containing the main content.
    start_section_number: Starting section number for numbering.
    source_file: Path to the source HTML file.

Returns:
    Tuple of (sections list, image count).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | Tag | BeautifulSoup | - | - |
| start_section_number | int | - | - |
| source_file | Path | - | - |

**Returns**: `tuple[list[dict], int]`


##### _build_section(self, section_number: int, heading: str | None, heading_level: str | None, elements: list, source_file: Path) → tuple[dict, int]

Build a section dict from a list of BeautifulSoup elements.

Processes each element to extract text paragraphs, code samples,
tables, sub-headings, images, and links. Handles nested structures
by recursively searching within container elements.

Args:
    section_number: 1-based section index.
    heading: Heading text (or None for preamble content).
    heading_level: Heading level string ('h1', 'h2', etc.).
    elements: List of BeautifulSoup Tag objects in this section.
    source_file: Path to the source HTML file for resolving links.

Returns:
    Tuple of (section dict, image count found in this section).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| section_number | int | - | - |
| heading | str | None | - | - |
| heading_level | str | None | - | - |
| elements | list | - | - |
| source_file | Path | - | - |

**Returns**: `tuple[dict, int]`


##### _extract_code_blocks(self, elem: Tag) → list[dict]

Extract code blocks from <pre> and <code> elements.

Handles multiple patterns:
- <pre><code class="language-python">...</code></pre>
- <pre class="code">...</pre>
- Standalone <code>...</code> (only if substantial)

Language detection is attempted from CSS classes first, falling
back to content-based heuristics via _detect_language().

Args:
    elem: A BeautifulSoup Tag (<pre> or <code>).

Returns:
    List of code sample dicts with 'code', 'language', 'quality_score'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| elem | Tag | - | - |

**Returns**: `list[dict]`


##### _detect_language_from_classes(self, elem: Tag) → str

Detect programming language from CSS classes on an element.

Common conventions: ``language-python``, ``lang-js``, ``code-ruby``,
``highlight-go``, bare language names as class values.

Args:
    elem: BeautifulSoup Tag with potential language class.

Returns:
    Detected language string, or empty string if not found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| elem | Tag | - | - |

**Returns**: `str`


##### _detect_language(self, code: str) → str

Detect programming language from code content using heuristics.

Performs lightweight pattern matching against common language features.
For more robust detection, the full LanguageDetector is used during
the extract_html() pipeline.

Args:
    code: Source code string.

Returns:
    Best-guess language string, or empty string if unknown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| code | str | - | - |

**Returns**: `str`


##### _extract_tables(self, table_elem: Tag) → dict | None

Extract an HTML table and convert to a markdown-ready dict.

Handles <thead>/<tbody> structure as well as header-less tables.
If no explicit <thead> is present, the first row is used as headers.

Args:
    table_elem: BeautifulSoup <table> Tag.

Returns:
    Dict with 'headers' (list[str]) and 'rows' (list[list[str]]),
    or None if the table has no meaningful content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table_elem | Tag | - | - |

**Returns**: `dict | None`


##### _extract_image_info(self, img_elem: Tag, source_file: Path) → dict | None

Extract image information from an <img> tag.

Captures src, alt text, title, and dimensions. Resolves relative
src paths against the source file location.

Args:
    img_elem: BeautifulSoup <img> Tag.
    source_file: Path to the containing HTML file.

Returns:
    Image info dict or None if the img has no src.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| img_elem | Tag | - | - |
| source_file | Path | - | - |

**Returns**: `dict | None`


##### _extract_link_info(self, a_elem: Tag, source_file: Path) → dict | None

Extract link information from an <a> tag.

Captures href, link text, and title. Resolves relative hrefs.
Skips empty anchors and JavaScript links.

Args:
    a_elem: BeautifulSoup <a> Tag with href attribute.
    source_file: Path to the containing HTML file.

Returns:
    Link info dict or None if the link is empty or a JS link.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| a_elem | Tag | - | - |
| source_file | Path | - | - |

**Returns**: `dict | None`


##### _resolve_relative_path(self, path: str, source_file: Path) → str

Resolve a relative path against the source file's directory.

Absolute URLs (http/https) and data URIs are returned as-is.
Relative paths are resolved against the source file's parent
directory and returned as POSIX-style strings.

Args:
    path: The URL or relative path to resolve.
    source_file: The HTML file containing this reference.

Returns:
    Resolved path or URL string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |
| source_file | Path | - | - |

**Returns**: `str`


##### _html_to_text(self, elem: Tag) → str

Convert an HTML element to clean markdown-like text.

Processes the element's content recursively, converting:
- <p> to paragraphs with double newlines
- <br> to newlines
- <strong>/<b> to **bold**
- <em>/<i> to *italic*
- <a> to [text](href) markdown links
- <ul>/<ol> to markdown list items
- <blockquote> to > prefixed lines
- <code> (inline) to `backticks`
- Heading tags to markdown headings

Args:
    elem: BeautifulSoup Tag to convert.

Returns:
    Cleaned text string with markdown formatting.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| elem | Tag | - | - |

**Returns**: `str`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON.

Args:
    json_path: Path to the intermediate extracted JSON file.

Returns:
    True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict

Categorize sections based on headings or keywords.

For single-source HTML (single file), groups all sections under one
category named after the source. For directories, creates categories
per file. Keyword-based categorization is used when ``self.categories``
is configured.

Returns:
    Dict mapping category keys to dicts with 'title' and 'pages'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### build_skill(self) → None

Build complete skill structure from extracted data.

Creates the output directory tree, generates reference markdown files,
an index file, and the main SKILL.md file. Delegates to private
generator methods for each component.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, _cat_key: str, cat_data: dict, section_num: int, total_sections: int) → None

Generate a reference markdown file for a content category.

Creates a markdown file containing all sections in the category,
with headings, text content, code examples, tables, and images.

Args:
    _cat_key: Category key (unused but matches epub pattern).
    cat_data: Category dict with 'title' and 'pages' keys.
    section_num: Current section number for filename generation.
    total_sections: Total number of categories for filename logic.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _cat_key | str | - | - |
| cat_data | dict | - | - |
| section_num | int | - | - |
| total_sections | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict) → None

Generate reference index file.

Creates an index.md in the references directory listing all categories
with links, section counts, and overall statistics.

Args:
    categorized: Dict of category_key -> category data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict) → None

Generate main SKILL.md file.

Creates the top-level SKILL.md with YAML frontmatter, document
information, usage guidance, section overview, key concepts,
code examples, table summary, statistics, and navigation links.

Args:
    categorized: Dict of category_key -> category data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict | - | - |

**Returns**: `None`


##### _format_key_concepts(self) → str

Extract key concepts from headings across all sections.

Collects h1 and h2 headings as major topics, and h3+ headings as
subtopics. Returns formatted markdown for inclusion in SKILL.md.

Returns:
    Formatted markdown string with key concepts section.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _format_patterns_from_content(self) → str

Extract common documentation patterns from section headings.

Searches for well-known heading keywords like 'getting started',
'installation', 'api', etc. and groups them by type.

Returns:
    Formatted markdown string with pattern descriptions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert string to safe filename.

Removes special characters, converts spaces and hyphens to
underscores, and lowercases the result.

Args:
    name: Raw string to sanitize.

Returns:
    Filesystem-safe filename string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### infer_description_from_html(metadata: dict | None = None, name: str = '') → str

Infer skill description from HTML metadata.

Args:
    metadata: HTML document metadata dict (title, description, author, etc.)
    name: Skill name for fallback

Returns:
    Description string suitable for "Use when..." format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### _collect_html_files(html_path: str) → list[Path]

Collect HTML files from a path (file or directory).

For a single file, returns a list with that file. For a directory,
recursively finds all .html/.htm/.xhtml files sorted alphabetically.

Args:
    html_path: Path to an HTML file or directory containing HTML files.

Returns:
    Sorted list of Path objects pointing to HTML files.

Raises:
    FileNotFoundError: If the path does not exist.
    ValueError: If no HTML files are found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| html_path | str | - | - |

**Returns**: `list[Path]`



### _score_code_quality(code: str) → float

Simple quality heuristic for code blocks (0-10 scale).

Scores based on line count, presence of definitions, imports,
indentation, and operator usage. Short snippets are penalized.

Args:
    code: Source code string.

Returns:
    Quality score between 0.0 and 10.0.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main() → int

CLI entry point for the HTML scraper.

Parses command-line arguments and runs the extraction/build pipeline.
Supports two workflows:
1. Direct HTML extraction: ``--html-path page.html --name myskill``
2. Build from JSON: ``--from-json page_extracted.json``

Returns:
    Exit code (0 for success, non-zero for failure).

**Returns**: `int`


