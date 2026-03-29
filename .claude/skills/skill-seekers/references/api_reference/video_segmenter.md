# API Reference: video_segmenter.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_segmenter.py`

---

## Functions

### _classify_content_type(transcript: str) → SegmentContentType

Classify segment content type based on transcript text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| transcript | str | - | - |

**Returns**: `SegmentContentType`



### _build_segment_content(transcript: str, chapter_title: str | None, start_time: float, end_time: float) → str

Build merged content string for a segment.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| transcript | str | - | - |
| chapter_title | str | None | - | - |
| start_time | float | - | - |
| end_time | float | - | - |

**Returns**: `str`



### _get_transcript_in_range(transcript_segments: list[TranscriptSegment], start_time: float, end_time: float) → tuple[str, float]

Get concatenated transcript text and average confidence for a time range.

Returns:
    Tuple of (text, avg_confidence).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| transcript_segments | list[TranscriptSegment] | - | - |
| start_time | float | - | - |
| end_time | float | - | - |

**Returns**: `tuple[str, float]`



### segment_by_chapters(video_info: VideoInfo, transcript_segments: list[TranscriptSegment]) → list[VideoSegment]

Segment video using YouTube chapter boundaries.

Args:
    video_info: Video metadata with chapters.
    transcript_segments: Raw transcript segments.

Returns:
    List of VideoSegment objects aligned to chapters.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_info | VideoInfo | - | - |
| transcript_segments | list[TranscriptSegment] | - | - |

**Returns**: `list[VideoSegment]`



### segment_by_time_window(video_info: VideoInfo, transcript_segments: list[TranscriptSegment], window_seconds: float = 120.0, start_offset: float = 0.0, end_limit: float | None = None) → list[VideoSegment]

Segment video using fixed time windows.

Args:
    video_info: Video metadata.
    transcript_segments: Raw transcript segments.
    window_seconds: Duration of each window in seconds.
    start_offset: Start segmentation at this time (seconds).
    end_limit: Stop segmentation at this time (seconds). None = full duration.

Returns:
    List of VideoSegment objects.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_info | VideoInfo | - | - |
| transcript_segments | list[TranscriptSegment] | - | - |
| window_seconds | float | 120.0 | - |
| start_offset | float | 0.0 | - |
| end_limit | float | None | None | - |

**Returns**: `list[VideoSegment]`



### segment_video(video_info: VideoInfo, transcript_segments: list[TranscriptSegment], config: VideoSourceConfig) → list[VideoSegment]

Segment a video using the best available strategy.

Priority:
1. Chapter-based (if chapters available)
2. Time-window fallback

Args:
    video_info: Video metadata.
    transcript_segments: Raw transcript segments.
    config: Video source configuration.

Returns:
    List of VideoSegment objects.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_info | VideoInfo | - | - |
| transcript_segments | list[TranscriptSegment] | - | - |
| config | VideoSourceConfig | - | - |

**Returns**: `list[VideoSegment]`


