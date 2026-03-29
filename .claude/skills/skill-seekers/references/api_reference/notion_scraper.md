# API Reference: notion_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/notion_scraper.py`

---

## Classes

### NotionToSkillConverter

Convert Notion workspace content (database or page tree) to a skill.

Args:
    config: Dict with keys name, database_id, page_id, export_path,
            token, description, max_pages.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### _get_client(self) → Any

Return a cached Notion API client, creating one if needed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `Any`


##### extract_notion(self) → bool

Extract content from Notion (API or export mode). Saves JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### load_extracted_data(self, json_path: str | None = None) → bool

Load previously extracted Notion data from JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | None | None | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict[str, Any]]

Categorize pages by database properties or page hierarchy.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict[str, Any]]`


##### _resolve_category_key(self, properties: dict[str, Any], parent_path: str) → str

Determine category from properties (tags/category/type/status) or parent path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| properties | dict[str, Any] | - | - |
| parent_path | str | - | - |

**Returns**: `str`


##### _sanitize_key(text: str) → str

Convert text to safe lowercase underscore key.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `str`


##### build_skill(self) → None

Build complete skill directory (SKILL.md, references, index).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, cat_key: str, cat_data: dict[str, Any], section_num: int, total_sections: int) → None

Generate a reference markdown file for one category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_key | str | - | - |
| cat_data | dict[str, Any] | - | - |
| section_num | int | - | - |
| total_sections | int | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict[str, dict[str, Any]]) → None

Generate references/index.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict[str, Any]]) → None

Generate main SKILL.md with YAML frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _collect_key_topics(self) → list[str]

Extract unique heading texts from all pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[str]`


##### _collect_code_blocks(self) → list[dict[str, str]]

Collect all code blocks from extracted pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, str]]`


##### _collect_property_summary(self) → dict[str, set[str]]

Collect unique property values across all pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, set[str]]`


##### _extract_via_api(self) → list[dict[str, Any]]

Fetch pages from Notion via API (database query or page tree walk).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, Any]]`


##### _extract_database_entries(self, client: Any) → list[dict[str, Any]]

Extract entries from a Notion database with properties.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |

**Returns**: `list[dict[str, Any]]`


##### _process_database_entry(self, client: Any, entry: dict[str, Any]) → dict[str, Any] | None

Process one database entry into a page dict.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |
| entry | dict[str, Any] | - | - |

**Returns**: `dict[str, Any] | None`


##### _extract_properties(self, raw: dict[str, Any]) → dict[str, Any]

Flatten Notion's raw property format into simple {name: value} pairs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| raw | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _extract_property_value(self, ptype: str, data: dict[str, Any]) → Any

Extract a single property value by its Notion type.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| ptype | str | - | - |
| data | dict[str, Any] | - | - |

**Returns**: `Any`


##### _extract_page_tree(self, client: Any, page_id: str, parent_path: str, depth: int = 0) → list[dict[str, Any]]

Recursively extract a page and its child pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |
| page_id | str | - | - |
| parent_path | str | - | - |
| depth | int | 0 | - |

**Returns**: `list[dict[str, Any]]`


##### _get_child_pages(self, client: Any, page_id: str) → list[str]

Get IDs of child_page / child_database blocks within a page.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |
| page_id | str | - | - |

**Returns**: `list[str]`


##### _fetch_page_blocks(self, client: Any, page_id: str, depth: int = 0) → tuple[str, list[dict[str, str]], list[dict[str, str]]]

Fetch all blocks for a page and convert to markdown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |
| page_id | str | - | - |
| depth | int | 0 | - |

**Returns**: `tuple[str, list[dict[str, str]], list[dict[str, str]]]`


##### _parse_notion_blocks(self, client: Any, block: dict[str, Any], depth: int = 0) → tuple[str, list[dict[str, str]], list[dict[str, str]]]

Convert a Notion block to markdown, recursing into children.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | Any | - | - |
| block | dict[str, Any] | - | - |
| depth | int | 0 | - |

**Returns**: `tuple[str, list[dict[str, str]], list[dict[str, str]]]`


##### _handle_block_type(self, btype: str, block: dict[str, Any]) → tuple[str, list[dict[str, str]], list[dict[str, str]]]

Handle a Notion block type: paragraph, heading, code, callout, toggle, table, etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| btype | str | - | - |
| block | dict[str, Any] | - | - |

**Returns**: `tuple[str, list[dict[str, str]], list[dict[str, str]]]`


##### _handle_table_block(self, block: dict[str, Any]) → str

Convert a Notion table block into a markdown table.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | dict[str, Any] | - | - |

**Returns**: `str`


##### _extract_rich_text(self, rich_text_list: list[dict[str, Any]]) → str

Extract text with annotations (bold, italic, code, links) from Notion rich text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| rich_text_list | list[dict[str, Any]] | - | - |

**Returns**: `str`


##### _extract_from_export(self) → list[dict[str, Any]]

Parse a Notion Markdown/CSV export directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, Any]]`


##### _parse_export_markdown(self, filepath: Path, parent_path: str) → dict[str, Any] | None

Parse a single .md file from a Notion export.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| filepath | Path | - | - |
| parent_path | str | - | - |

**Returns**: `dict[str, Any] | None`


##### _parse_export_csv(self, filepath: Path, parent_path: str) → list[dict[str, Any]]

Parse a CSV file from a Notion database export (one page per row).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| filepath | Path | - | - |
| parent_path | str | - | - |

**Returns**: `list[dict[str, Any]]`


##### _clean_notion_export_title(stem: str) → str

Strip trailing Notion hex IDs from export filenames.

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| stem | str | - | - |

**Returns**: `str`




## Functions

### _check_notion_deps() → None

Raise RuntimeError if notion-client is not installed.

**Returns**: `None`



### infer_description_from_notion(metadata: dict | None = None, name: str = '') → str

Infer a skill description from Notion workspace metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| metadata | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### main() → int

CLI entry point for the Notion scraper.

**Returns**: `int`


