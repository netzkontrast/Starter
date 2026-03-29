# API Reference: sync_config.py

**Language**: Python

**Source**: `src/skill_seekers/cli/sync_config.py`

---

## Functions

### _is_valid_url(url: str, base_url: str, include_patterns: list[str], exclude_patterns: list[str]) → bool

Return True if *url* passes include/exclude pattern filters.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |
| base_url | str | - | - |
| include_patterns | list[str] | - | - |
| exclude_patterns | list[str] | - | - |

**Returns**: `bool`



### discover_urls(base_url: str, seed_urls: list[str], include_patterns: list[str] | None = None, exclude_patterns: list[str] | None = None, depth: int = 2, max_pages: int = 500, rate_limit: float = 0.5) → set[str]

BFS-crawl *seed_urls* and return all discovered internal URLs.

Only follows ``<a href>`` links on HTML pages; does not download
full page content.  Applies the same include/exclude filtering as
:class:`DocToSkillConverter`.

Args:
    base_url: Only URLs under this prefix are accepted.
    seed_urls: Starting points for the BFS.
    include_patterns: Substring patterns a URL must contain (any).
    exclude_patterns: Substring patterns that disqualify a URL.
    depth: Maximum number of BFS hops from the seed pages.
    max_pages: Stop after discovering this many unique URLs.
    rate_limit: Seconds to wait between HTTP requests.

Returns:
    Set of discovered absolute URLs (fragments stripped).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| base_url | str | - | - |
| seed_urls | list[str] | - | - |
| include_patterns | list[str] | None | None | - |
| exclude_patterns | list[str] | None | None | - |
| depth | int | 2 | - |
| max_pages | int | 500 | - |
| rate_limit | float | 0.5 | - |

**Returns**: `set[str]`



### diff_urls(discovered: set[str], configured: list[str]) → tuple[list[str], list[str]]

Compare *discovered* URLs against a *configured* list.

Returns:
    ``(added, removed)`` — both sorted lists of URLs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| discovered | set[str] | - | - |
| configured | list[str] | - | - |

**Returns**: `tuple[list[str], list[str]]`



### _get_doc_source(config: dict, source_index: int = 0) → dict | None

Extract the documentation source dict from *config*.

Handles both the unified format (``sources`` array) and legacy flat
format (fields at the top level).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | dict | - | - |
| source_index | int | 0 | - |

**Returns**: `dict | None`



### _set_start_urls(config: dict, source_index: int, urls: list[str]) → None

Write *urls* into the correct ``start_urls`` field in *config*.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | dict | - | - |
| source_index | int | - | - |
| urls | list[str] | - | - |

**Returns**: `None`



### sync_config(config_path: str, apply: bool = False, depth: int = 2, max_pages: int = 500, rate_limit: float | None = None, source_index: int = 0) → dict

Run the sync-config workflow.

Returns:
    Dict with keys ``added``, ``removed``, ``total_discovered``,
    ``total_configured``, ``applied``.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config_path | str | - | - |
| apply | bool | False | - |
| depth | int | 2 | - |
| max_pages | int | 500 | - |
| rate_limit | float | None | None | - |
| source_index | int | 0 | - |

**Returns**: `dict`



### main() → None

CLI entry point for ``skill-seekers sync-config``.

**Returns**: `None`


