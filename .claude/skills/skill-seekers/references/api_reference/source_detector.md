# API Reference: source_detector.py

**Language**: Python

**Source**: `src/skill_seekers/cli/source_detector.py`

---

## Classes

### SourceInfo

Information about a detected source.

Attributes:
    type: Source type ('web', 'github', 'local', 'pdf', 'config')
    parsed: Parsed source information (e.g., {'url': '...'}, {'repo': '...'})
    suggested_name: Auto-suggested name for the skill
    raw_input: Original user input

**Inherits from**: (none)



### SourceDetector

Detects source type from user input and extracts relevant information.

**Inherits from**: (none)

#### Methods

##### detect(cls, source: str) → SourceInfo

Detect source type and extract information.

Args:
    source: User input (URL, path, repo, etc.)

Returns:
    SourceInfo object with detected type and parsed data

Raises:
    ValueError: If source type cannot be determined

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_config(cls, source: str) → SourceInfo

Detect config file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_pdf(cls, source: str) → SourceInfo

Detect PDF file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_word(cls, source: str) → SourceInfo

Detect Word document (.docx) source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_epub(cls, source: str) → SourceInfo

Detect EPUB file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_jupyter(cls, source: str) → SourceInfo

Detect Jupyter Notebook file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_html(cls, source: str) → SourceInfo

Detect local HTML file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_pptx(cls, source: str) → SourceInfo

Detect PowerPoint file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_asciidoc(cls, source: str) → SourceInfo

Detect AsciiDoc file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_manpage(cls, source: str) → SourceInfo

Detect man page file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_rss(cls, source: str) → SourceInfo

Detect RSS/Atom feed file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _looks_like_openapi(cls, source: str) → bool

Check if a YAML/JSON file looks like an OpenAPI or Swagger spec.

Reads the first few lines to look for 'openapi:' or 'swagger:' keys.

Args:
    source: Path to the file

Returns:
    True if the file appears to be an OpenAPI/Swagger spec

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `bool`


##### _detect_openapi(cls, source: str) → SourceInfo

Detect OpenAPI/Swagger spec file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_video_file(cls, source: str) → SourceInfo

Detect local video file source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_video_url(cls, source: str) → SourceInfo | None

Detect video platform URL (YouTube, Vimeo).

Returns SourceInfo if the source is a video URL, None otherwise.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo | None`


##### _detect_local(cls, source: str) → SourceInfo

Detect local directory source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### _detect_github(cls, source: str) → SourceInfo | None

Detect GitHub repository source.

Supports patterns:
- owner/repo
- github.com/owner/repo
- https://github.com/owner/repo

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo | None`


##### _detect_web(cls, source: str) → SourceInfo

Detect web documentation source.

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source | str | - | - |

**Returns**: `SourceInfo`


##### validate_source(cls, source_info: SourceInfo) → None

Validate that source is accessible.

Args:
    source_info: Detected source information

Raises:
    ValueError: If source is not accessible

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |
| source_info | SourceInfo | - | - |

**Returns**: `None`



