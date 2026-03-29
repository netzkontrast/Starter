# API Reference: video_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_scraper.py`

---

## Classes

### VideoToSkillConverter

Convert video content to Claude skill.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict)

Initialize converter.

Args:
    config: Configuration dict with keys:
        - name: Skill name
        - url/video_file/playlist: Video source
        - description: Optional description
        - languages: Optional language preferences
        - visual: Whether to enable visual extraction
        - whisper_model: Whisper model size

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |


##### process(self) → VideoScraperResult

Run the full video processing pipeline.

Returns:
    VideoScraperResult with all extracted data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `VideoScraperResult`


##### save_extracted_data(self) → str

Save extracted data to JSON file.

Returns:
    Path to saved JSON file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### load_extracted_data(self, json_path: str) → None

Load previously extracted data from JSON.

Args:
    json_path: Path to extracted JSON file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | - | - |

**Returns**: `None`


##### build_skill(self) → str

Build skill directory with SKILL.md and reference files.

Returns:
    Path to skill directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### _generate_reference_md(self, video: VideoInfo) → str

Generate reference markdown file for a single video.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| video | VideoInfo | - | - |

**Returns**: `str`


##### _enhance_reference_files(self, enhance_level: int, args) → None

First-pass: AI-clean reference files before SKILL.md enhancement.

When enhance_level >= 2 and an API key is available, sends each
reference file to Claude to reconstruct noisy Code Timeline
sections using transcript context.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| enhance_level | int | - | - |
| args | None | - | - |

**Returns**: `None`


##### _generate_skill_md(self) → str

Generate the main SKILL.md file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`




## Functions

### check_video_dependencies(require_full: bool = False) → None

Check that required video dependencies are available.

Args:
    require_full: If True, also check Tier 2 deps (Whisper, OpenCV, etc.)

Raises:
    RuntimeError: If required dependencies are missing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| require_full | bool | False | - |

**Returns**: `None`



### _sanitize_filename(title: str, max_length: int = 60) → str

Sanitize a video title for use as a filename.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| title | str | - | - |
| max_length | int | 60 | - |

**Returns**: `str`



### parse_time_to_seconds(time_str: str) → float

Parse a time string into seconds.

Accepted formats:
    - Plain seconds: ``"330"`` or ``"330.5"``
    - MM:SS: ``"5:30"``
    - HH:MM:SS: ``"00:05:30"``

Args:
    time_str: Time string in one of the accepted formats.

Returns:
    Time in seconds as a float.

Raises:
    ValueError: If *time_str* cannot be parsed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| time_str | str | - | - |

**Returns**: `float`



### _format_duration(seconds: float) → str

Format seconds as HH:MM:SS or MM:SS.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| seconds | float | - | - |

**Returns**: `str`



### _format_count(count: int | None) → str

Format a count with commas.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| count | int | None | - | - |

**Returns**: `str`



### infer_description_from_video(video_info: VideoInfo, name: str = '') → str

Infer skill description from video metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_info | VideoInfo | - | - |
| name | str | '' | - |

**Returns**: `str`



### _build_audio_visual_alignments(timeline: TextGroupTimeline, transcript_segments: list) → list[AudioVisualAlignment]

Build audio-visual alignments pairing on-screen code with transcript.

For each text group appearance, finds overlapping transcript segments
and pairs them into AudioVisualAlignment objects.

Args:
    timeline: TextGroupTimeline with text groups and appearances.
    transcript_segments: List of TranscriptSegment objects.

Returns:
    List of AudioVisualAlignment objects.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| timeline | TextGroupTimeline | - | - |
| transcript_segments | list | - | - |

**Returns**: `list[AudioVisualAlignment]`



### _is_likely_code(text: str) → bool

Return True if text likely contains programming code, not UI junk.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `bool`



### _ai_clean_reference(ref_path: str, content: str, api_key: str | None = None) → None

Use AI to clean Code Timeline section in a reference file.

Sends the reference file content to Claude with a focused prompt
to reconstruct the Code Timeline from noisy OCR + transcript context.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ref_path | str | - | - |
| content | str | - | - |
| api_key | str | None | None | - |

**Returns**: `None`



### main() → int

Entry point for video scraper CLI.

Returns:
    Exit code (0 for success, non-zero for error).

**Returns**: `int`



### _run_video_enhancement(skill_dir: str, enhance_level: int, args) → None

Run traditional SKILL.md enhancement with video-aware prompt.

This calls the same SkillEnhancer used by other scrapers, but the prompt
auto-detects video_tutorial source type and uses a video-specific prompt.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| skill_dir | str | - | - |
| enhance_level | int | - | - |
| args | None | - | - |

**Returns**: `None`


