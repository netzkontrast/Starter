# API Reference: video_transcript.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_transcript.py`

---

## Functions

### extract_youtube_transcript(video_id: str, languages: list[str] | None = None) → tuple[list[TranscriptSegment], TranscriptSource]

Fetch YouTube captions via youtube-transcript-api.

Args:
    video_id: YouTube video ID (11 chars).
    languages: Language preference list (e.g., ['en', 'tr']).

Returns:
    Tuple of (transcript segments, source type).

Raises:
    RuntimeError: If youtube-transcript-api is not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_id | str | - | - |
| languages | list[str] | None | None | - |

**Returns**: `tuple[list[TranscriptSegment], TranscriptSource]`



### _parse_timestamp_srt(ts: str) → float

Parse SRT timestamp (HH:MM:SS,mmm) to seconds.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ts | str | - | - |

**Returns**: `float`



### _parse_timestamp_vtt(ts: str) → float

Parse VTT timestamp (HH:MM:SS.mmm or MM:SS.mmm) to seconds.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ts | str | - | - |

**Returns**: `float`



### parse_srt(path: str) → list[TranscriptSegment]

Parse an SRT subtitle file into TranscriptSegments.

Args:
    path: Path to .srt file.

Returns:
    List of TranscriptSegment objects.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | str | - | - |

**Returns**: `list[TranscriptSegment]`



### parse_vtt(path: str) → list[TranscriptSegment]

Parse a WebVTT subtitle file into TranscriptSegments.

Args:
    path: Path to .vtt file.

Returns:
    List of TranscriptSegment objects.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| path | str | - | - |

**Returns**: `list[TranscriptSegment]`



### transcribe_with_whisper(audio_path: str, model: str = 'base', language: str | None = None) → list[TranscriptSegment]

Transcribe audio using faster-whisper (Tier 2).

Raises:
    RuntimeError: Always, unless faster-whisper is installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| audio_path | str | - | - |
| model | str | 'base' | - |
| language | str | None | None | - |

**Returns**: `list[TranscriptSegment]`



### get_transcript(video_info: VideoInfo, config: VideoSourceConfig) → tuple[list[TranscriptSegment], TranscriptSource]

Get transcript for a video, trying available methods in priority order.

Priority:
1. YouTube API (for YouTube videos)
2. Subtitle files (SRT/VTT alongside local files)
3. Whisper fallback (Tier 2)
4. NONE (no transcript available)

Args:
    video_info: Video metadata.
    config: Video source configuration.

Returns:
    Tuple of (transcript segments, source type).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_info | VideoInfo | - | - |
| config | VideoSourceConfig | - | - |

**Returns**: `tuple[list[TranscriptSegment], TranscriptSource]`


