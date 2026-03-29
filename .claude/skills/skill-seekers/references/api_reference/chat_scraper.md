# API Reference: chat_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/chat_scraper.py`

---

## Classes

### ChatToSkillConverter

Convert Slack or Discord chat history into an AI-ready skill.

Follows the same pipeline pattern as the EPUB, Jupyter, and PPTX scrapers:
extract -> categorize -> build_skill (reference files + index + SKILL.md).

Supports two input modes per platform:
- **Export mode**: Parse a previously exported archive (Slack workspace
  export directory/ZIP or DiscordChatExporter JSON).
- **API mode**: Fetch messages live from the platform's API using an
  authentication token.

The extraction phase produces a normalized intermediate JSON containing
messages with text, user, timestamp, reactions, threads, attachments,
code snippets, and shared links. Messages are then categorized by
channel, date range, and detected topic.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialize the converter with a configuration dictionary.

Args:
    config: Configuration dict with keys:
        - name (str): Skill name (required).
        - export_path (str): Path to export file/directory (optional).
        - platform (str): "slack" or "discord" (default "slack").
        - token (str): API authentication token (optional, API mode).
        - channel (str): Channel ID to fetch (optional, API mode).
        - max_messages (int): Max messages to fetch per channel
          (default 5000).
        - description (str): Skill description (optional, inferred
          if absent).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_chat(self) → bool

Extract chat content based on platform and input mode.

Dispatches to the appropriate extraction method:
- Export mode (export_path set): parse local export files.
- API mode (token set): fetch messages via platform API.

Returns:
    True on successful extraction.

Raises:
    ValueError: If neither export_path nor token is provided, or
        if the platform is not recognized.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### load_extracted_data(self, json_path: str) → bool

Load previously extracted data from JSON file.

Args:
    json_path: Path to the extracted JSON file.

Returns:
    True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `bool`


##### categorize_content(self) → dict[str, dict]

Categorize sections by channel, date range, and detected topic.

Groups the extracted sections into categories suitable for
generating reference files. Each category contains a title
and a list of page/section dicts.

Returns:
    Dict mapping category keys to dicts with 'title' and 'pages'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, dict]`


##### build_skill(self) → None

Build complete skill directory structure from extracted data.

Creates the output directory tree with:
- references/ — one markdown file per category
- references/index.md — category index with statistics
- SKILL.md — main skill file with frontmatter and overview
- scripts/ — reserved for future use
- assets/ — reserved for future use

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _extract_slack_export(self) → list[dict]

Parse a Slack workspace export directory.

Slack exports contain one directory per channel, each with JSON
files named by date (e.g., ``2024-01-15.json``). Each JSON file
is a list of message objects.

Returns:
    List of normalized message dicts.

Raises:
    FileNotFoundError: If export_path does not exist.
    ValueError: If the path structure is not a valid Slack export.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict]`


##### _load_slack_users(self, export_dir: Path) → dict[str, str]

Load user ID -> display name mapping from users.json.

Args:
    export_dir: Root directory of the Slack export.

Returns:
    Dict mapping user IDs to display names.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| export_dir | Path | - | - |

**Returns**: `dict[str, str]`


##### _unzip_export(self, zip_path: Path) → Path

Extract a ZIP export to a temporary directory.

Args:
    zip_path: Path to the ZIP archive.

Returns:
    Path to the extracted directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| zip_path | Path | - | - |

**Returns**: `Path`


##### _extract_slack_api(self) → list[dict]

Fetch messages from Slack via the Web API using slack_sdk.

Requires ``self.token`` to be set to a valid Slack Bot or User
token. If ``self.channel`` is set, only that channel is fetched;
otherwise all accessible channels are iterated.

Returns:
    List of normalized message dicts.

Raises:
    RuntimeError: If the API call fails.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict]`


##### _fetch_slack_channel_messages(self, client: 'WebClient', channel_id: str, channel_name: str) → list[dict]

Fetch all messages from a single Slack channel with pagination.

Args:
    client: Authenticated slack_sdk WebClient.
    channel_id: Slack channel ID.
    channel_name: Human-readable channel name.

Returns:
    List of normalized message dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| client | 'WebClient' | - | - |
| channel_id | str | - | - |
| channel_name | str | - | - |

**Returns**: `list[dict]`


##### _extract_discord_export(self) → list[dict]

Parse a Discord chat export in DiscordChatExporter JSON format.

DiscordChatExporter produces a single JSON file per channel with
a ``messages`` array. Each message object has ``id``, ``content``,
``author``, ``timestamp``, ``attachments``, ``reactions``, etc.

Returns:
    List of normalized message dicts.

Raises:
    FileNotFoundError: If export_path does not exist.
    ValueError: If the file is not valid JSON or has unexpected structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict]`


##### _extract_discord_api(self) → list[dict]

Fetch messages from Discord via the HTTP API.

Uses aiohttp directly (not the discord.py gateway client) to
fetch channel history. Requires a Bot token and channel ID.

Returns:
    List of normalized message dicts.

Raises:
    RuntimeError: If the API call fails.
    ValueError: If no channel ID is provided.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict]`


##### _parse_slack_message(self, raw: dict, channel: str, users_map: dict[str, str]) → dict | None

Parse a single Slack message into normalized format.

Handles regular messages, bot messages, and subtypes like
``channel_join``, ``channel_leave``, ``file_share``, etc.
System subtypes (join/leave/topic) are skipped.

Args:
    raw: Raw Slack message dict from export or API.
    channel: Channel name this message belongs to.
    users_map: User ID -> display name mapping.

Returns:
    Normalized message dict, or None if the message should be skipped.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| raw | dict | - | - |
| channel | str | - | - |
| users_map | dict[str, str] | - | - |

**Returns**: `dict | None`


##### _parse_discord_message(self, raw: dict, channel: str) → dict | None

Parse a single Discord message into normalized format.

Handles regular messages, embeds, and attachments. System messages
(type != 0 and type != 19) are skipped.

Args:
    raw: Raw Discord message dict from export or API.
    channel: Channel name this message belongs to.

Returns:
    Normalized message dict, or None if the message should be skipped.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| raw | dict | - | - |
| channel | str | - | - |

**Returns**: `dict | None`


##### _extract_code_snippets(self, messages: list[dict]) → list[dict]

Extract fenced code blocks from all messages.

Detects triple-backtick fenced code blocks (````` ```lang ... ``` `````)
and inline code that spans multiple lines.

Args:
    messages: List of normalized message dicts.

Returns:
    List of code snippet dicts with 'code', 'language',
    'quality_score', 'channel', 'user', and 'timestamp'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[dict] | - | - |

**Returns**: `list[dict]`


##### _extract_links(self, messages: list[dict]) → list[dict]

Extract shared URLs from all messages.

Finds HTTP/HTTPS URLs in message text and deduplicates by URL.

Args:
    messages: List of normalized message dicts.

Returns:
    List of link dicts with 'url', 'channel', 'user', 'timestamp',
    and 'context' (surrounding text snippet).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[dict] | - | - |

**Returns**: `list[dict]`


##### _identify_threads(self, messages: list[dict]) → list[dict]

Group messages into conversation threads.

Threads are identified by shared ``thread_ts`` values (Slack)
or ``thread_ts`` references (Discord). Each thread contains the
parent message and its replies in chronological order.

Args:
    messages: List of normalized message dicts.

Returns:
    List of thread dicts with 'parent', 'replies', 'channel',
    'reply_count', and 'participants'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[dict] | - | - |

**Returns**: `list[dict]`


##### _summarize_channels(self, messages: list[dict]) → dict[str, dict]

Generate summary statistics for each channel.

Args:
    messages: List of normalized message dicts.

Returns:
    Dict mapping channel names to summary dicts with message_count,
    unique_users, date_range, top_users, and has_code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[dict] | - | - |

**Returns**: `dict[str, dict]`


##### _build_sections(self, messages: list[dict], threads: list[dict]) → list[dict]

Build sections from messages, grouping by channel and date.

Each section represents a chunk of conversation from a single
channel on a single date. Sections are compatible with the
pipeline's intermediate JSON 'pages' format.

Args:
    messages: List of normalized message dicts.
    threads: List of thread dicts (for enrichment).

Returns:
    List of section dicts with heading, text, code_samples, etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| messages | list[dict] | - | - |
| threads | list[dict] | - | - |

**Returns**: `list[dict]`


##### _generate_reference_file(self, _cat_key: str, cat_data: dict, section_num: int, total_sections: int) → None

Generate a reference markdown file for a category.

Args:
    _cat_key: Category key (unused, for interface consistency).
    cat_data: Category dict with 'title' and 'pages'.
    section_num: 1-based index among all categories.
    total_sections: Total number of categories being generated.

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

Generate reference index file listing all categories.

Args:
    categorized: Dict mapping category keys to category dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categorized: dict[str, dict]) → None

Generate main SKILL.md file with YAML frontmatter and overview.

Args:
    categorized: Dict mapping category keys to category dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categorized | dict[str, dict] | - | - |

**Returns**: `None`


##### _format_key_topics(self) → str

Extract key discussion topics from section headings and content.

Returns:
    Markdown string with key topics section.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _section_text(self, section: dict) → str

Combine section text, heading, and code into a lowercase string.

Args:
    section: Section dict.

Returns:
    Combined lowercase text for keyword matching.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| section | dict | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert a string to a filesystem-safe filename.

Args:
    name: Input string to sanitize.

Returns:
    Safe lowercase filename with underscores.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_slack_deps() → None

Raise RuntimeError if slack_sdk is not installed.

**Returns**: `None`



### _check_discord_deps() → None

Raise RuntimeError if discord.py is not installed.

**Returns**: `None`



### _score_code_quality(code: str) → float

Score code quality on a 0-10 scale using heuristics.

Args:
    code: Source code text to score.

Returns:
    Float quality score between 0.0 and 10.0.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| code | str | - | - |

**Returns**: `float`



### main() → int

CLI entry point for the Slack/Discord chat scraper.

Parses command-line arguments and runs the extraction and
skill-building pipeline. Supports export import, API fetch,
and loading from previously extracted JSON.

Returns:
    Exit code (0 for success, non-zero for errors).

**Returns**: `int`



### _fetch() → list[dict]

**Async function**

**Returns**: `list[dict]`



### _resolve_mention(match: re.Match) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| match | re.Match | - | - |

**Returns**: `str`


