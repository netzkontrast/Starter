# API Reference: openai_compatible.py

**Language**: Python

**Source**: `src/skill_seekers/cli/adaptors/openai_compatible.py`

---

## Classes

### OpenAICompatibleAdaptor

Base class for OpenAI-compatible LLM platform adaptors.

Subclasses override these constants:
- PLATFORM: Registry key (e.g., "kimi")
- PLATFORM_NAME: Display name (e.g., "Kimi (Moonshot AI)")
- DEFAULT_API_ENDPOINT: API base URL
- DEFAULT_MODEL: Default model name
- ENV_VAR_NAME: API key env var name
- PLATFORM_URL: Dashboard/platform URL

**Inherits from**: SkillAdaptor

#### Methods

##### format_skill_md(self, skill_dir: Path, metadata: SkillMetadata) → str

Format SKILL.md as system instructions (no YAML frontmatter).

Uses plain text format compatible with OpenAI-compatible chat APIs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| metadata | SkillMetadata | - | - |

**Returns**: `str`


##### package(self, skill_dir: Path, output_path: Path, enable_chunking: bool = False, chunk_max_tokens: int = DEFAULT_CHUNK_TOKENS, preserve_code_blocks: bool = True, chunk_overlap_tokens: int = DEFAULT_CHUNK_OVERLAP_TOKENS) → Path

Package skill into ZIP file for the platform.

Creates platform-compatible structure:
- system_instructions.txt (main instructions)
- knowledge_files/*.md (reference files)
- {platform}_metadata.json (skill metadata)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| output_path | Path | - | - |
| enable_chunking | bool | False | - |
| chunk_max_tokens | int | DEFAULT_CHUNK_TOKENS | - |
| preserve_code_blocks | bool | True | - |
| chunk_overlap_tokens | int | DEFAULT_CHUNK_OVERLAP_TOKENS | - |

**Returns**: `Path`


##### upload(self, package_path: Path, api_key: str) → dict[str, Any]

Upload/validate packaged skill via OpenAI-compatible API.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| package_path | Path | - | - |
| api_key | str | - | - |

**Returns**: `dict[str, Any]`


##### validate_api_key(self, api_key: str) → bool

Validate API key (non-empty, >10 chars).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| api_key | str | - | - |

**Returns**: `bool`


##### get_env_var_name(self) → str

Get environment variable name for API key.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### supports_enhancement(self) → bool

OpenAI-compatible platforms support enhancement.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### enhance(self, skill_dir: Path, api_key: str) → bool

Enhance SKILL.md using the platform's OpenAI-compatible API.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| api_key | str | - | - |

**Returns**: `bool`


##### _read_reference_files(self, references_dir: Path, max_chars: int = 200000) → dict[str, str]

Read reference markdown files from skill directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| references_dir | Path | - | - |
| max_chars | int | 200000 | - |

**Returns**: `dict[str, str]`


##### _build_enhancement_prompt(self, skill_name: str, references: dict[str, str], current_skill_md: str = None) → str

Build API prompt for enhancement.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_name | str | - | - |
| references | dict[str, str] | - | - |
| current_skill_md | str | None | - |

**Returns**: `str`



