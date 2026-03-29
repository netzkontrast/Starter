# API Reference: sync_config_tools.py

**Language**: Python

**Source**: `src/skill_seekers/mcp/tools/sync_config_tools.py`

---

## Classes

### TextContent

Fallback TextContent for when MCP is not installed.

**Inherits from**: (none)

#### Methods

##### __init__(self, type: str, text: str)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| type | str | - | - |
| text | str | - | - |




## Functions

### sync_config_tool(args: dict) → list[TextContent]

**Async function**

Sync a config file's start_urls against what's live on the docs site.

Crawls seed/nav pages, discovers internal links, diffs against the
config's existing ``start_urls``, and optionally writes the update.

Args:
    args: Dictionary containing:
        - config_path (str): Path to the config JSON file.
        - apply (bool, optional): Write changes back (default: False).
        - depth (int, optional): BFS crawl depth (default: 2).
        - max_pages (int, optional): Max URLs to discover (default: 500).
        - rate_limit (float, optional): Seconds between requests.
        - source_index (int, optional): Documentation source index (default: 0).

Returns:
    List[TextContent]: Report of added/removed URLs, or error message.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | dict | - | - |

**Returns**: `list[TextContent]`


