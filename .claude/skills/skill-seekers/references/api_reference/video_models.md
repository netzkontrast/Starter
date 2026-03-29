# API Reference: video_models.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_models.py`

---

## Classes

### VideoSourceType

Where a video came from.

**Inherits from**: Enum



### TranscriptSource

How the transcript was obtained.

**Inherits from**: Enum



### FrameType

Classification of a keyframe's visual content.

**Inherits from**: Enum



### CodeContext

Where code was displayed in the video.

**Inherits from**: Enum



### SegmentContentType

Primary content type of a video segment.

**Inherits from**: Enum



### SegmentationStrategy

How segments are determined.

**Inherits from**: Enum



### Chapter

A chapter marker from a video (typically YouTube).

**Inherits from**: (none)

#### Methods

##### duration(self) → float

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `float`


##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → Chapter

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `Chapter`




### WordTimestamp

A single word with precise timing information.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → WordTimestamp

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `WordTimestamp`




### TranscriptSegment

A raw transcript segment from YouTube API or Whisper.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → TranscriptSegment

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `TranscriptSegment`




### OCRRegion

A detected text region in a video frame.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → OCRRegion

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `OCRRegion`




### FrameSubSection

A single panel/region within a video frame, OCR'd independently.

Each IDE panel (e.g. code editor, terminal, file tree) is detected
as a separate sub-section so that side-by-side editors produce
independent OCR results instead of being merged into one blob.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → FrameSubSection

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `FrameSubSection`




### KeyFrame

An extracted video frame with visual analysis results.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → KeyFrame

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `KeyFrame`




### CodeBlock

A code block detected via OCR from video frames.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → CodeBlock

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `CodeBlock`




### TextGroupEdit

Represents an edit detected between appearances of a text group.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → TextGroupEdit

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `TextGroupEdit`




### TextGroup

A group of related text blocks tracked across the video.

Represents a single code file/snippet as it appears and evolves
across multiple video frames.

**Inherits from**: (none)

#### Methods

##### full_text(self) → str

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → TextGroup

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `TextGroup`




### TextGroupTimeline

Timeline of all text groups and their lifecycle in the video.

**Inherits from**: (none)

#### Methods

##### get_groups_at_time(self, timestamp: float) → list[TextGroup]

Return all text groups visible at a given timestamp.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| timestamp | float | - | - |

**Returns**: `list[TextGroup]`


##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → TextGroupTimeline

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `TextGroupTimeline`




### AudioVisualAlignment

Links on-screen code with concurrent transcript narration.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → AudioVisualAlignment

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `AudioVisualAlignment`




### VideoSegment

A time-aligned segment combining transcript + visual + metadata.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → VideoSegment

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `VideoSegment`


##### timestamp_display(self) → str

Human-readable timestamp (e.g., '05:30 - 08:15').

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`




### VideoInfo

Complete metadata and extracted content for a single video.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → VideoInfo

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `VideoInfo`




### VideoSourceConfig

Configuration for video source processing.

**Inherits from**: (none)

#### Methods

##### from_dict(cls, data: dict) → VideoSourceConfig

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `VideoSourceConfig`


##### validate(self) → list[str]

Validate configuration. Returns list of errors.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[str]`




### VideoScraperResult

Complete result from the video scraper.

**Inherits from**: (none)

#### Methods

##### to_dict(self) → dict

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict`


##### from_dict(cls, data: dict) → VideoScraperResult

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| data | dict | - | - |

**Returns**: `VideoScraperResult`



