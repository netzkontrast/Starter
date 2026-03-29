# API Reference: pptx_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/pptx_scraper.py`

---

## Classes

### PptxToSkillConverter

Convert PowerPoint presentation (.pptx) to an AI-ready skill.

Follows the same pipeline pattern as the Word, EPUB, and PDF scrapers:
extract -> categorize -> build_skill (reference files + index + SKILL.md).

The extraction phase uses python-pptx to read slides, extracting:
- Slide titles, body text, and speaker notes
- Tables (converted to markdown)
- Image counts and descriptions
- Code blocks (detected via monospace font usage)
- Presentation-level metadata (title, author, subject, etc.)
- Slide layout information for section grouping

Supports both single .pptx files and directories containing multiple
.pptx files (merged into a single skill).

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialize the converter with a configuration dictionary.

Args:
    config: Configuration dict with keys:
        - name (str): Skill name (required)
        - pptx_path (str): Path to .pptx file or directory (optional)
        - description (str): Skill description (optional, inferred if absent)
        - categories (dict): Manual category assignments (optional)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_pptx(self) → bool

Extract content from PowerPoint file(s) using python-pptx.

Handles both single .pptx files and directories containing multiple
.pptx files. For directories, files are processed in sorted order and
their slides are concatenated sequentially.

Workflow:
1. Check dependencies (python-pptx)
2. Resolve input path (single file vs. directory)
3. For each .pptx file:
   a. Open with python-pptx Presentation class
   b. Extract presentation-level metadata
   c. Iterate slides, extracting text, notes, tables, images, code
4. Detect section breaks from slide layouts
5. Group slides into sections
6. Detect code languages via LanguageDetector
7. Save intermediate JSON to {name}_extracted.json

Returns:
    True on successful extraction.

Raises:
    FileNotFoundError: If the pptx_path does not exist.
    ValueError: If no .pptx files are found in a directory.
    RuntimeError: If extraction fails for other reasons.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_presentation_metadata(self, prs) → dict

Extract presentation-level metadata from core properties.

Reads the Office Open XML core properties: title, author, subject,
category, comments, keywords, created/modified dates, revision,
and last_modified_by.

Args:
    prs: python-pptx Presentation object

Returns:
    Dictionary of metadata fields (string values, None for missing).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| prs | None | - | - |

**Returns**: `dict`


##### _extract_slide(self, slide, slide_number: int) → dict

Extract all content from a single slide.

Processes the slide's shapes to extract:
- Title text (from the title placeholder)
- Body text (from all text frames, excluding title)
- Speaker notes
- Tables (as structured data)
- Image count and descriptions
- Code blocks (detected by monospace font usage)
- Layout name and type information

Args:
    slide: python-pptx Slide object
    slide_number: 1-based slide number in the presentation

Returns:
    Dictionary with all extracted slide data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| slide | None | - | - |
| slide_number | int | - | - |

**Returns**: `dict`


##### _extract_group_shapes(self, group_shape) → tuple[list[str], list[dict], int]

Recursively extract content from grouped shapes.

PowerPoint allows shapes to be grouped together. This method walks
the group hierarchy and extracts text, code blocks, and image counts
from all nested shapes.

Args:
    group_shape: python-pptx GroupShape object

Returns:
    Tuple of (text_parts, code_blocks, image_count)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| group_shape | None | - | - |

**Returns**: `tuple[list[str], list[dict], int]`


##### _process_text_frame(self, text_frame) → tuple[str, list[dict]]

Process a text frame, separating regular text from code blocks.

Examines the font properties of each paragraph's runs to determine
whether the content is code (monospace font) or regular text.

Args:
    text_frame: python-pptx TextFrame object

Returns:
    Tuple of (plain_text, code_blocks) where code_blocks is a list
    of dicts with 'code', 'language', and 'quality_score' keys.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text_frame | None | - | - |

**Returns**: `tuple[str, list[dict]]`


##### _finalize_code_block(self, code_parts: list[str]) → dict

Create a code block dict from accumulated code lines.

Args:
    code_parts: List of code line strings

Returns:
    Dict with 'code', 'language', and 'quality_score' keys.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| code_parts | list[str] | - | - |

**Returns**: `dict`


##### _extract_tables(self, table) → dict | None

Extract table data from a python-pptx Table object.

Converts the table into a structured dict with headers and rows.
The first row is treated as the header row.

Args:
    table: python-pptx Table object

Returns:
    Dict with 'headers' (list[str]) and 'rows' (list[list[str]]) keys,
    or None if the table is empty.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table | None | - | - |

**Returns**: `dict | None`


##### _extract_images_info(self, slide) → list[dict]

Extract descriptive information about images on a slide.

Does not extract image binary data (to keep JSON output manageable).
Instead, records image position, size, and any alt text or name.

Args:
    slide: python-pptx Slide object

Returns:
    List of dicts with image metadata (name, width, height, alt_text).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| slide | None | - | - |

**Returns**: `list[dict]`


##### _detect_code_blocks(self, paragraph) → bool

Detect whether a paragraph contains code based on font properties.

Code blocks in presentations are typically identified by:
1. Monospace font family (Courier, Consolas, etc.)
2. Small font size relative to body text
3. Specific formatting patterns (e.g., syntax-highlighted runs)

This method checks the font properties of the paragraph's runs
and uses heuristics to determine if the content is code.

Args:
    paragraph: python-pptx Paragraph object

Returns:
    True if the paragraph appears to contain code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| paragraph | None | - | - |

**Returns**: `bool`


##### _text_looks_like_code(self, text: str) → bool

Heuristic check whether text content looks like source code.

Uses pattern matching to detect common code constructs like
function definitions, imports, variable assignments, etc.

Args:
    text: The text content to check

Returns:
    True if the text appears to be source code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |

**Returns**: `bool`


##### _extract_speaker_notes(self, slide) → str

Extract speaker notes from a slide.

Speaker notes are stored in the slide's notes_slide object.
Returns the full text of the notes, or empty string if none exist.

Args:
    slide: python-pptx Slide object

Returns:
    Speaker notes text string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| slide | None | - | - |

**Returns**: `str`


##### _is_image_shape(self, shape) → bool

Check if a shape is an image (picture).

Args:
    shape: python-pptx Shape object

Returns:
    True if the shape contains an image.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| shape | None | - | - |

**Returns**: `bool`


##### _group_slides_into_sections(self, slides: list[dict]) → list[dict]

Group slides into sections based on layout type and section breaks.

Section breaks are detected from:
1. Slides with section/title-only layouts (is_section_slide=True)
2. Slides whose title matches common section patterns

Each section contains:
- section_number: 1-based index
- heading: Section title (from the section break slide)
- heading_level: 'h1' for sections, 'h2' for subsections
- text: Combined body text from all slides in the section
- slides: List of raw slide dicts
- code_samples: Aggregated code blocks
- tables: Aggregated tables
- speaker_notes: Combined speaker notes
- image_count: Total images in the section

Args:
    slides: List of slide dicts from _extract_slide()

Returns:
    List of section dicts compatible with the pipeline format.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| slides | list[dict] | - | - |

**Returns**: `list[dict]`


##### _build_section_from_slides(self, section_number: int, heading: str, heading_level: str, slide_list: list[dict]) → dict

Aggregate multiple slides into a single section dict.

Combines text, code blocks, tables, and notes from all slides
in the section into a single section dict compatible with the
pipeline's intermediate JSON format.

Args:
    section_number: 1-based section index
    heading: Section heading text
    heading_level: 'h1' or 'h2'
    slide_list: List of slide dicts to include

Returns:
    Section dict with aggregated content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| section_number | int | - | - |
| heading | str | - | - |
| heading_level | str | - | - |
| slide_list | list[dict] | - | - |

**Returns**: `dict`


##### _detect_languages(self, sections: list[dict]) → tuple[dict[str, int], int]

Detect programming languages in code blocks across all sections.

Uses the project's LanguageDetector for automatic language detection
when the language is not already set.

Args:
    sections: List of section dicts with code_samples

Returns:
    Tuple of (languages_detected dict, total_code_blocks count)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sections | list[dict] | - | - |

**Returns**: `tuple[dict[str, int], int]`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON file.

Args:
    json_path: Path to the extracted JSON file

Returns:
    True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict]

Categorize sections based on headings, keywords, or config.

For a single PowerPoint source, creates one category containing all
sections. For keyword-based categorization (multi-source), scores
each section against category keywords.

Returns:
    Dict mapping category keys to category dicts with 'title' and
    'pages' (list of sections).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict]`


##### build_skill(self) → None

Build complete skill structure from extracted data.

Creates the output directory structure with:
- references/ — one markdown file per category
- references/index.md — category index with statistics
- SKILL.md — main skill file with frontmatter and overview
- scripts/ — empty (reserved for future use)
- assets/ — empty (reserved for image export)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, _cat_key: str, cat_data: dict, section_num: int, total_sections: int) → None

Generate a reference markdown file for a category of sections.

Each section's slides are rendered as markdown with slide numbers,
body text, code examples, tables, speaker notes, and image counts.

Args:
    _cat_key: Category key (unused, for interface consistency)
    cat_data: Category dict with 'title' and 'pages' keys
    section_num: 1-based index among all categories
    total_sections: Total number of categories being generated

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

Generate reference index file listing all categories and statistics.

Args:
    categorized: Dict of category key -> category data

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict]) → None

Generate main SKILL.md file with YAML frontmatter and overview.

Creates a comprehensive skill file with:
- YAML frontmatter (name, description)
- Document information (from metadata)
- "When to Use" section
- Section overview with slide counts
- Key concepts from headings
- Quick reference patterns
- Top code examples grouped by language
- Table summary
- Documentation statistics
- Navigation links

Args:
    categorized: Dict of category key -> category data

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _format_key_concepts(self) → str

Extract key concepts from section and slide headings.

Returns:
    Markdown string with key concepts section, or empty string
    if no headings are found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _format_patterns_from_content(self) → str

Extract common documentation patterns from section headings.

Searches for keywords like "introduction", "overview", "demo",
"agenda", etc. that are common in presentations.

Returns:
    Markdown string describing found patterns.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert a string to a filesystem-safe filename.

Removes special characters, replaces spaces and hyphens with
underscores, and lowercases the result.

Args:
    name: Input string to sanitize

Returns:
    Safe filename string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_pptx_deps() → None

Raise RuntimeError if python-pptx is not installed.

**Returns**: `None`



### infer_description_from_pptx(metadata: dict | None = None, name: str = '') → str

Infer skill description from PowerPoint metadata or name.

Tries to extract a meaningful description from:
1. Presentation subject field
2. Presentation title field
3. Falls back to a template using the skill name

Args:
    metadata: Presentation metadata dict with title, subject, author, etc.
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

Score code quality on a 0-10 scale using heuristics.

Higher scores indicate more substantial, well-structured code.
Factors include line count, presence of definitions, imports,
indentation, and code syntax characters.

Args:
    code: Source code text to score

Returns:
    Float quality score between 0.0 and 10.0

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main() → int

CLI entry point for the PowerPoint scraper.

Parses command-line arguments and runs the extraction and skill-building
pipeline. Supports direct .pptx input, directory input, and loading from
previously extracted JSON.

Returns:
    Exit code (0 for success, non-zero for errors).

**Returns**: `int`


