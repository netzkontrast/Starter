# API Reference: man_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/man_scraper.py`

---

## Classes

### ManPageToSkillConverter

Convert Unix man pages into a skill directory structure.

Supports extraction via the ``man`` command or by reading raw man-page
files from a directory.  Parsed content is saved as an intermediate JSON
file so that the (potentially slow) extraction step can be decoupled
from skill generation.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialise the converter from a configuration dictionary.

Args:
    config: Dictionary with keys:
        - ``name``       -- skill name (required)
        - ``man_names``  -- list of man page names, e.g. ``["git", "curl"]``
        - ``man_path``   -- directory containing raw man page files
        - ``sections``   -- man section numbers to query (default all)
        - ``description``-- explicit description (optional)
        - ``categories`` -- keyword-based categorisation map (optional)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_manpages(self) → bool

Extract man pages via ``man`` command or by reading files from a directory.

Workflow:
1. If ``man_path`` is set, read ``.1``-``.8`` / ``.man`` files from
   that directory.
2. Otherwise, run ``man <name>`` for each entry in ``man_names``.
3. Strip troff/groff formatting from every captured page.
4. Parse each page into structured sections (NAME, SYNOPSIS, ...).
5. Persist the intermediate JSON to ``self.data_file``.

Returns:
    ``True`` on success.

Raises:
    FileNotFoundError: If ``man_path`` does not exist.
    RuntimeError: If no man pages could be extracted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_from_names(self, names: list[str]) → list[dict]

Run ``man <name>`` for each name and parse output.

When ``self.sections`` is set, the specific section number is passed to
``man`` (e.g. ``man 3 printf``).  Otherwise, the default section is used.

Args:
    names: Man page names to look up.

Returns:
    List of parsed page dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| names | list[str] | - | - |

**Returns**: `list[dict]`


##### _extract_from_directory(self, dir_path: str) → list[dict]

Read man page files from a directory and parse them.

Recognised extensions: ``.1`` -- ``.8``, ``.1p``, ``.3p``, ``.man``.
Compressed files (``.gz``, ``.bz2``, ``.xz``) are also handled.

Args:
    dir_path: Path to the directory containing man page files.

Returns:
    List of parsed page dicts.

Raises:
    FileNotFoundError: If ``dir_path`` does not exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| dir_path | str | - | - |

**Returns**: `list[dict]`


##### _section_from_suffix(suffix: str) → int | None

Derive the man section number from a file suffix.

Args:
    suffix: File extension, e.g. ``.1``, ``.3p``, ``.man``.

Returns:
    Integer section number or ``None`` if not determinable.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| suffix | str | - | - |

**Returns**: `int | None`


##### _run_man_command(self, name: str, section: int | None = None) → str | None

Execute ``man`` and capture its output.

Uses ``MANWIDTH=999`` to avoid unwanted line wrapping and ``col -bx``
to strip backspace-based formatting on platforms that still use it.

Args:
    name: Man page name (e.g. ``"git"``).
    section: Optional manual section number.

Returns:
    Raw text output, or ``None`` on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |
| section | int | None | None | - |

**Returns**: `str | None`


##### _read_man_file(self, filepath: str) → str | None

Read a man page file, handling optional compression.

Supports ``.gz``, ``.bz2``, and ``.xz`` compressed files as well as
plain text.

Args:
    filepath: Absolute or relative path to the file.

Returns:
    Raw file content as a string, or ``None`` on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| filepath | str | - | - |

**Returns**: `str | None`


##### _strip_troff_formatting(text: str) → str

Remove troff/groff formatting codes from raw man page text.

This handles:
- Backspace-based bold/underline overstriking (e.g. ``X\bX``).
- ANSI escape sequences.
- Common roff macros (``.TH``, ``.SH``, ``.TP``, ``.PP``, etc.).
- Inline font switching (``\fB``, ``\fI``, ``\fR``, ``\fP``).
- Roff special characters (``\-``, ``\(aq``, ``\(lq``, etc.).
- Comment lines starting with ``.\"`` or ``'\"``.

The goal is to produce clean, readable plain text suitable for
further section parsing.

Args:
    text: Raw text potentially containing troff formatting.

Returns:
    Cleaned plain-text string.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `str`


##### _parse_man_output(self, text: str, man_name: str, section_num: int | None = None) → dict

Parse cleaned man page text into structured sections.

Identifies standard man page sections (NAME, SYNOPSIS, DESCRIPTION,
OPTIONS, EXAMPLES, SEE ALSO, etc.) by looking for lines that match
known section headers at the start of a line with no leading
whitespace.

Args:
    text: Cleaned man page text (troff already stripped).
    man_name: Name of the man page.
    section_num: Manual section number (1-8) if known.

Returns:
    Structured dict with ``name``, ``section``, ``sections``,
    ``options``, ``examples``, ``see_also``, and ``raw_text`` keys.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |
| man_name | str | - | - |
| section_num | int | None | None | - |

**Returns**: `dict`


##### _extract_options(self, options_text: str) → list[dict]

Parse the OPTIONS section into a list of flag/description dicts.

Handles common option formats:
- ``-f, --flag``
- ``-f value``
- ``--long-option=VALUE``

Args:
    options_text: Raw text of the OPTIONS section.

Returns:
    List of dicts with ``flag`` and ``description`` keys.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| options_text | str | - | - |

**Returns**: `list[dict]`


##### _extract_examples(self, examples_text: str) → list[dict]

Parse the EXAMPLES section into structured example blocks.

Looks for lines that appear to be commands (starting with ``$``,
``#``, ``%``, or common command prefixes) versus descriptive prose.

Args:
    examples_text: Raw text of the EXAMPLES (or EXAMPLE) section.

Returns:
    List of dicts with ``description`` and ``command`` keys.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| examples_text | str | - | - |

**Returns**: `list[dict]`


##### _extract_see_also(self, see_also_text: str) → list[str]

Parse the SEE ALSO section into a list of referenced page names.

Typical format: ``git-log(1), git-diff(1), gitk(1)``

Args:
    see_also_text: Raw text of the SEE ALSO section.

Returns:
    Sorted de-duplicated list of referenced page names.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| see_also_text | str | - | - |

**Returns**: `list[str]`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON.

Args:
    json_path: Path to the intermediate JSON file.

Returns:
    ``True`` on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict]

Categorise man pages based on name prefixes, sections, or keywords.

Man pages are grouped by a common prefix (e.g. ``git-*`` pages all go
under a ``git`` category) or by their manual section number.  When
explicit ``self.categories`` are provided, keyword matching is used
instead.

Returns:
    Dict mapping category keys to ``{"title": ..., "pages": [...]}``
    dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict]`


##### build_skill(self) → None

Build the complete skill directory structure.

Creates the output directory, generates reference files, an index,
and the main SKILL.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, cat_key: str, cat_data: dict, cat_num: int, total_cats: int) → None

Generate a reference markdown file for a category of man pages.

Args:
    cat_key: Category key (sanitised).
    cat_data: Dict with ``title`` and ``pages``.
    cat_num: 1-based index of this category.
    total_cats: Total number of categories.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_key | str | - | - |
| cat_data | dict | - | - |
| cat_num | int | - | - |
| total_cats | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict[str, dict]) → None

Generate references/index.md with links to all reference files.

Args:
    categorized: Category mapping produced by ``categorize_content()``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict]) → None

Generate the main SKILL.md file.

Args:
    categorized: Category mapping produced by ``categorize_content()``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _sanitize_filename(name: str) → str

Convert a string to a safe filename.

Args:
    name: Arbitrary string.

Returns:
    Lowercase snake_case filename-safe string.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str`




## Functions

### infer_description_from_manpages(names: list[str] | None = None, name_lines: list[str] | None = None, skill_name: str = '') → str

Infer skill description from man page NAME lines or page names.

Args:
    names: List of man page names (e.g. ["git", "curl"]).
    name_lines: NAME section lines extracted from man pages.
    skill_name: Skill name for fallback.

Returns:
    Description string suitable for "Use when..." format.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | list[str] | None | None | - |
| name_lines | list[str] | None | None | - |
| skill_name | str | '' | - |

**Returns**: `str`



### main() → int

CLI entry point for the man page scraper.

Supports three workflows:

1. ``--man-names git,curl`` -- extract named man pages via the ``man``
   command.
2. ``--man-path /usr/share/man/man1`` -- read man page files from a
   directory.
3. ``--from-json data.json`` -- reload previously extracted data and
   rebuild the skill.

Returns:
    Exit code (0 on success, non-zero on error).

**Returns**: `int`


