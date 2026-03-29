# API Reference: confluence_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/confluence_scraper.py`

---

## Classes

### ConfluenceToSkillConverter

Convert Confluence space documentation to an AI-ready skill.

Supports two extraction modes:

- **API mode**: Uses the Atlassian Confluence REST API to fetch pages from
  a space, including page hierarchy, labels, and storage-format content.
  Requires ``base_url``, ``space_key``, and authentication credentials.

- **Export mode**: Parses a Confluence HTML/XML export directory that has
  been downloaded and extracted from the Confluence admin interface.
  Requires ``export_path`` pointing to the extracted directory.

After extraction, the converter categorises pages by their parent-child
hierarchy, generates reference markdown files, an index, and the main
SKILL.md manifest.

Attributes:
    config: Configuration dictionary.
    name: Skill name used for output directory and filenames.
    base_url: Confluence instance base URL (API mode).
    space_key: Confluence space key (API mode).
    export_path: Path to exported Confluence directory (export mode).
    username: Confluence username / email for API authentication.
    token: Confluence API token or password.
    description: Skill description for SKILL.md frontmatter.
    max_pages: Maximum number of pages to fetch in API mode.
    skill_dir: Output directory for the generated skill.
    data_file: Path to the intermediate extracted JSON file.
    extracted_data: Structured extraction results dict.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialize the Confluence to skill converter.

Args:
    config: Configuration dictionary containing:
        - name (str): Skill name (required).
        - base_url (str): Confluence instance URL (API mode).
        - space_key (str): Confluence space key (API mode).
        - export_path (str): Path to export directory (export mode).
        - username (str): API username / email (optional, falls back to env).
        - token (str): API token (optional, falls back to env).
        - description (str): Skill description (optional).
        - max_pages (int): Maximum pages to fetch, default 500.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_confluence(self) → bool

Extract content from Confluence, dispatching to API or export mode.

Determines the extraction mode based on the provided configuration:
- If ``base_url`` and ``space_key`` are set, uses API mode.
- If ``export_path`` is set, uses export mode.
- Raises ValueError if neither mode is configured.

After extraction, saves intermediate JSON to ``{name}_extracted.json``
and updates the description from space metadata if not explicitly set.

Returns:
    True on successful extraction.

Raises:
    ValueError: If neither API nor export configuration is provided.
    RuntimeError: If API dependencies are missing or connection fails.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_via_api(self) → list[dict[str, Any]]

Fetch pages from a Confluence space using the REST API.

Connects to the Confluence instance using ``atlassian-python-api``,
retrieves all pages in the configured space (up to ``max_pages``),
and returns them as a list of normalised page dicts.

Authentication is resolved in priority order:
1. Constructor arguments (username/token)
2. Environment variables (CONFLUENCE_USERNAME / CONFLUENCE_TOKEN)

Returns:
    List of page dicts with keys: id, title, body, parent_id, labels,
    url, space_info, version, created, modified.

Raises:
    RuntimeError: If atlassian-python-api is not installed or
                  the connection / fetch fails.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, Any]]`


##### _is_cloud_instance(self) → bool

Detect whether the base URL points to an Atlassian Cloud instance.

Cloud instances use ``*.atlassian.net`` domain names.

Returns:
    True if the URL looks like an Atlassian Cloud instance.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_from_export(self) → list[dict[str, Any]]

Parse a Confluence HTML/XML export directory into page dicts.

Confluence exports can contain either:
- An ``entities.xml`` file (full XML export from admin)
- A directory of HTML files (HTML export)

This method auto-detects the export format and delegates accordingly.
HTML files are parsed with BeautifulSoup to extract content and metadata.

Returns:
    List of normalised page dicts (same structure as API mode).

Raises:
    FileNotFoundError: If the export path does not exist.
    ValueError: If no parseable content is found in the export.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, Any]]`


##### _parse_entities_xml(self, xml_path: Path, space_info: dict[str, Any]) → list[dict[str, Any]]

Parse Confluence entities.xml export file.

The entities.xml file contains all page data including body content
in Confluence storage format. This method extracts page objects and
their parent-child relationships.

Args:
    xml_path: Path to the entities.xml file.
    space_info: Space metadata dict to attach to each page.

Returns:
    List of normalised page dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| xml_path | Path | - | - |
| space_info | dict[str, Any] | - | - |

**Returns**: `list[dict[str, Any]]`


##### _parse_export_index(self, index_path: Path) → dict[str, str]

Parse the index.html from a Confluence HTML export for hierarchy.

The export index page contains a nested list structure representing
the page tree. This method parses it to build a child-to-parent mapping.

Args:
    index_path: Path to the index.html file.

Returns:
    Dict mapping page filename stem to parent filename stem.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| index_path | Path | - | - |

**Returns**: `dict[str, str]`


##### _parse_confluence_html(self, html_content: str, page_title: str = '') → dict[str, Any]

Parse Confluence storage format HTML into structured content.

Confluence uses a custom XHTML-based storage format with proprietary
macro elements (``ac:structured-macro``, ``ac:rich-text-body``, etc.).
This method:

1. Extracts code macros and panel macros before cleaning.
2. Cleans Confluence-specific markup (macros, boilerplate divs).
3. Extracts sub-headings, text content, code blocks, tables, images,
   and links from the cleaned HTML.

Args:
    html_content: Raw HTML string in Confluence storage format.
    page_title: Page title for context in logging.

Returns:
    Dict with keys: text, headings, code_samples, tables, images,
    links, macros.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| html_content | str | - | - |
| page_title | str | '' | - |

**Returns**: `dict[str, Any]`


##### _extract_macros(self, soup: BeautifulSoup) → list[dict[str, Any]]

Extract Confluence macros from storage format HTML.

Identifies and parses structured macros including:
- **code**: Code blocks with language specification.
- **panel** / **info** / **note** / **warning** / **tip**: Callout panels.
- **expand**: Expandable content sections.
- **toc**: Table of contents macro.
- **jira**: JIRA issue references.
- **excerpt**: Page excerpts.

Extracts the macro content and metadata, then removes the macro
elements from the soup to avoid double-processing.

Args:
    soup: BeautifulSoup object containing Confluence storage format HTML.

Returns:
    List of macro dicts with type, content, language (for code), title.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| soup | BeautifulSoup | - | - |

**Returns**: `list[dict[str, Any]]`


##### _clean_confluence_html(self, soup: BeautifulSoup) → BeautifulSoup

Strip Confluence-specific markup from parsed HTML.

Removes:
- Script and style elements.
- HTML comments.
- Confluence-specific macro wrapper divs (by class name).
- Remaining ``ac:*`` and ``ri:*`` namespace elements.
- Empty ``<div>`` and ``<span>`` containers.
- Confluence status/date live-search elements.

Args:
    soup: BeautifulSoup object to clean (modified in-place and returned).

Returns:
    The cleaned BeautifulSoup object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| soup | BeautifulSoup | - | - |

**Returns**: `BeautifulSoup`


##### _extract_page_tree(self, pages: list[dict[str, Any]]) → list[dict[str, Any]]

Build a hierarchical page tree from a flat list of pages.

Constructs a tree structure based on parent_id relationships. Pages
without a parent are placed at the root level. The tree is useful
for categorisation and navigation.

Args:
    pages: Flat list of page dicts with id and parent_id fields.

Returns:
    List of tree node dicts, each with keys: id, title, children,
    depth, labels.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| pages | list[dict[str, Any]] | - | - |

**Returns**: `list[dict[str, Any]]`


##### _extract_table(self, table_elem: Tag) → dict[str, Any] | None

Extract an HTML table to a markdown-ready dict.

Handles ``<thead>``/``<tbody>`` structure as well as header-less tables.
Confluence tables often use ``<th>`` in the first row.

Args:
    table_elem: BeautifulSoup ``<table>`` Tag.

Returns:
    Dict with 'headers' and 'rows' lists, or None if empty.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table_elem | Tag | - | - |

**Returns**: `dict[str, Any] | None`


##### _detect_language_from_classes(self, elem: Tag) → str

Detect programming language from CSS classes on an element.

Checks for common class conventions: ``language-python``,
``brush: java``, ``code-python``, or bare language names.

Args:
    elem: BeautifulSoup Tag with potential language class hints.

Returns:
    Normalised language string, or empty string if undetected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| elem | Tag | - | - |

**Returns**: `str`


##### _html_to_text(self, elem: Tag | BeautifulSoup) → str

Convert an HTML element to clean markdown-like text.

Handles paragraphs, bold/italic, links, lists, blockquotes,
inline code, headings, definition lists, and horizontal rules.

Args:
    elem: BeautifulSoup Tag or soup to convert.

Returns:
    Cleaned text string with basic markdown formatting.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| elem | Tag | BeautifulSoup | - | - |

**Returns**: `str`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from a JSON file.

Args:
    json_path: Path to the intermediate extracted JSON file.

Returns:
    True on success.

Raises:
    FileNotFoundError: If the JSON file does not exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict[str, Any]]

Categorise pages by space / parent-page hierarchy.

Groups pages based on their parent page relationships. Root pages
(those without a parent) form top-level categories. Pages with
parents are grouped under their parent's category. Deep nesting
is flattened to two levels.

If no hierarchy information is available, falls back to grouping
by labels or placing all pages in a single "content" category.

Returns:
    Dict mapping category key to dict with 'title' and 'pages' lists.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict[str, Any]]`


##### _collect_descendant_ids(self, node: dict[str, Any]) → list[str]

Recursively collect all descendant page IDs from a tree node.

Args:
    node: Tree node dict with 'children' list.

Returns:
    Flat list of all descendant page IDs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| node | dict[str, Any] | - | - |

**Returns**: `list[str]`


##### build_skill(self) → None

Build the complete skill structure from extracted data.

Creates output directories, categorises content, and generates:
- Reference markdown files for each category.
- A reference index file.
- The main SKILL.md manifest.

The output directory structure follows the standard skill layout::

    output/{name}/
        SKILL.md
        references/
            index.md
            {category}.md
        scripts/
        assets/

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, cat_key: str, cat_data: dict[str, Any], section_num: int, total_categories: int) → None

Generate a reference markdown file for a content category.

Creates a markdown file containing all pages in the category, with
headings, text content, code examples, tables, images, and links.

Args:
    cat_key: Category key (sanitised filename stem).
    cat_data: Category dict with 'title' and 'pages' keys.
    section_num: Current section number for filename generation.
    total_categories: Total number of categories for filename logic.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_key | str | - | - |
| cat_data | dict[str, Any] | - | - |
| section_num | int | - | - |
| total_categories | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorised: dict[str, dict[str, Any]]) → None

Generate the reference index file.

Creates an ``index.md`` listing all categories with links, page counts,
and overall statistics about the extracted content.

Args:
    categorised: Dict of category_key -> category data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorised | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _write_tree_structure(self, f: Any, nodes: list[dict[str, Any]], indent: int = 0) → None

Write a page tree structure to a file in ASCII tree format.

Args:
    f: File handle to write to.
    nodes: List of tree node dicts with 'title' and 'children'.
    indent: Current indentation level.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| f | Any | - | - |
| nodes | list[dict[str, Any]] | - | - |
| indent | int | 0 | - |

**Returns**: `None`


##### _generate_skill_md(self, categorised: dict[str, dict[str, Any]]) → None

Generate the main SKILL.md file.

Creates a comprehensive skill manifest with:
- YAML frontmatter (name, description).
- Space information and metadata.
- Usage guidance ("When to Use This Skill").
- Content overview with category listing.
- Key topics extracted from page headings.
- Code examples (top quality samples).
- Documentation statistics.
- Navigation links to reference files.

Args:
    categorised: Dict of category_key -> category data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorised | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _format_key_topics(self) → str

Extract key topics from page headings across all sections.

Collects page titles and sub-headings to identify the main topics
covered in the documentation.

Returns:
    Formatted markdown string with key topics section.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert a string to a safe filename.

Removes special characters, converts spaces and hyphens to underscores,
and lowercases the result.

Args:
    name: Raw string to sanitise.

Returns:
    Filesystem-safe filename string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_atlassian_deps() → None

Raise RuntimeError if atlassian-python-api is not installed.

**Returns**: `None`



### infer_description_from_confluence(space_info: dict | None = None, name: str = '') → str

Infer skill description from Confluence space metadata.

Args:
    space_info: Confluence space metadata dict (name, description, key).
    name: Skill name for fallback.

Returns:
    Description string suitable for "Use when..." format.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| space_info | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### _score_code_quality(code: str) → float

Simple quality heuristic for code blocks (0-10 scale).

Scores based on line count, presence of definitions, imports,
indentation, and operator usage. Short snippets are penalised.

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

CLI entry point for the Confluence scraper.

Parses command-line arguments and runs the extraction/build pipeline.
Supports three workflows:

1. **API mode**: ``--base-url URL --space-key KEY --name my-skill``
2. **Export mode**: ``--export-path ./export-dir/ --name my-skill``
3. **Build from JSON**: ``--from-json my-skill_extracted.json``

Returns:
    Exit code (0 for success, non-zero for failure).

**Returns**: `int`



### _sort_children(node: dict[str, Any]) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| node | dict[str, Any] | - | - |

**Returns**: `None`



### _walk_list(ul_elem: Tag, parent_key: str = '') → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ul_elem | Tag | - | - |
| parent_key | str | '' | - |

**Returns**: `None`


