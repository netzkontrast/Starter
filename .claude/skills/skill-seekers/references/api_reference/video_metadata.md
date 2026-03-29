# API Reference: video_metadata.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_metadata.py`

---

## Functions

### extract_video_id(url: str) → str | None

Extract YouTube video ID from various URL formats.

Args:
    url: YouTube URL in any supported format.

Returns:
    11-character video ID, or None if not a YouTube URL.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |

**Returns**: `str | None`



### detect_video_source_type(url_or_path: str) → VideoSourceType

Detect the source type of a video URL or file path.

Args:
    url_or_path: URL or local file path.

Returns:
    VideoSourceType enum value.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url_or_path | str | - | - |

**Returns**: `VideoSourceType`



### _check_ytdlp()

Raise RuntimeError if yt-dlp is not installed.

**Returns**: (none)



### extract_youtube_metadata(url: str) → VideoInfo

Extract metadata from a YouTube video URL without downloading.

Args:
    url: YouTube video URL.

Returns:
    VideoInfo with metadata populated.

Raises:
    RuntimeError: If yt-dlp is not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |

**Returns**: `VideoInfo`



### extract_local_metadata(file_path: str) → VideoInfo

Extract basic metadata from a local video file.

Args:
    file_path: Path to video file.

Returns:
    VideoInfo with basic metadata from filename/file properties.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| file_path | str | - | - |

**Returns**: `VideoInfo`



### resolve_playlist(url: str) → list[str]

Resolve a YouTube playlist URL to a list of video URLs.

Args:
    url: YouTube playlist URL.

Returns:
    List of video URLs in playlist order.

Raises:
    RuntimeError: If yt-dlp is not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |

**Returns**: `list[str]`



### resolve_channel(url: str, max_videos: int = 50) → list[str]

Resolve a YouTube channel URL to a list of recent video URLs.

Args:
    url: YouTube channel URL.
    max_videos: Maximum number of videos to resolve.

Returns:
    List of video URLs (most recent first).

Raises:
    RuntimeError: If yt-dlp is not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |
| max_videos | int | 50 | - |

**Returns**: `list[str]`


