# API Reference: rss_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/rss_scraper.py`

---

## Classes

### RssToSkillConverter

Convert RSS/Atom feeds to AI-ready skills.

Parses RSS 2.0, RSS 1.0 (RDF), and Atom feeds using feedparser.
Optionally follows article links to scrape full page content via
requests + BeautifulSoup.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict[str, Any]) → None

Initialize the converter with configuration.

Args:
    config: Dictionary with name (required), feed_url, feed_path,
        follow_links (default True), max_articles (default 50),
        and description (optional).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict[str, Any] | - | - |

**Returns**: `None`


##### extract_feed(self) → bool

Parse the RSS/Atom feed and extract article data.

Parses feed, extracts metadata and articles, optionally follows links
to scrape full content, saves intermediate JSON.

Returns:
    True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from a JSON file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict[str, Any]]

Categorize articles by their feed categories/tags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict[str, Any]]`


##### build_skill(self) → None

Build complete skill structure from extracted data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _parse_feed(self) → 'feedparser.FeedParserDict'

Parse feed from URL or local file using feedparser.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `'feedparser.FeedParserDict'`


##### _detect_feed_type(self, parsed: 'feedparser.FeedParserDict') → str

Detect RSS 2.0, RSS 1.0, or Atom from feedparser's version field.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed | 'feedparser.FeedParserDict' | - | - |

**Returns**: `str`


##### _extract_feed_metadata(self, parsed: 'feedparser.FeedParserDict') → dict[str, Any]

Extract feed-level metadata (title, description, link, language, etc.).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed | 'feedparser.FeedParserDict' | - | - |

**Returns**: `dict[str, Any]`


##### _extract_articles(self, parsed: 'feedparser.FeedParserDict') → list[dict[str, Any]]

Extract article entries (title, link, summary, date, author, categories).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed | 'feedparser.FeedParserDict' | - | - |

**Returns**: `list[dict[str, Any]]`


##### _scrape_article_content(self, url: str) → str

Follow article URL, extract full page content using requests + BeautifulSoup.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| url | str | - | - |

**Returns**: `str`


##### _extract_article_text(self, html: str) → str

Clean article HTML to text/markdown. Finds <article>/<main>, strips nav/ads.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| html | str | - | - |

**Returns**: `str`


##### _collect_all_categories(self, articles: list[dict[str, Any]]) → set[str]

Collect all unique category/tag strings across articles.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| articles | list[dict[str, Any]] | - | - |

**Returns**: `set[str]`


##### _html_to_text(self, html_fragment: str) → str

Convert an HTML fragment to plain text, stripping all tags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| html_fragment | str | - | - |

**Returns**: `str`


##### _generate_reference_file(self, cat_key: str, cat_data: dict[str, Any]) → None

Generate a reference markdown file for a category of articles.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_key | str | - | - |
| cat_data | dict[str, Any] | - | - |

**Returns**: `None`


##### _generate_index(self, categorized: dict[str, dict[str, Any]]) → None

Generate the reference index file with category links and statistics.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict[str, Any]]) → None

Generate the main SKILL.md file with feed overview and navigation.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict[str, Any]] | - | - |

**Returns**: `None`


##### _count_authors(self) → dict[str, int]

Count articles per author.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, int]`


##### _get_date_range(self) → tuple[str, str] | None

Get the date range (earliest, latest) of articles, or None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `tuple[str, str] | None`


##### _sanitize_filename(self, name: str) → str

Convert a string to a safe filename.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_feedparser_deps() → None

Raise RuntimeError if feedparser is not installed.

**Returns**: `None`



### infer_description_from_feed(feed_meta: dict[str, Any] | None = None, name: str = '') → str

Infer skill description from feed-level metadata.

Tries to build a meaningful "Use when..." description from the feed
title and subtitle/description fields.

Args:
    feed_meta: Feed metadata dict with title, description, link, etc.
    name: Skill name for fallback.

Returns:
    Description string suitable for "Use when..." format.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| feed_meta | dict[str, Any] | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### main() → int

CLI entry point for the RSS/Atom feed scraper.

**Returns**: `int`


