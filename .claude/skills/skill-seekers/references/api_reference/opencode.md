# API Reference: opencode.py

**Language**: Python

**Source**: `src/skill_seekers/cli/adaptors/opencode.py`

---

## Classes

### OpenCodeAdaptor

OpenCode platform adaptor.

Generates directory-based skill packages with dual-format YAML frontmatter
compatible with both OpenCode and Claude Code.

**Inherits from**: SkillAdaptor

#### Methods

##### _to_kebab_case(name: str) → str

Convert any title/name to valid OpenCode kebab-case.

Rules:
- Lowercase
- Replace spaces, underscores, dots with hyphens
- Remove non-alphanumeric chars (except hyphens)
- Collapse multiple hyphens
- Strip leading/trailing hyphens
- Truncate to 64 chars

Args:
    name: Input name string

Returns:
    Valid kebab-case name (1-64 chars)

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str`


##### format_skill_md(self, skill_dir: Path, metadata: SkillMetadata) → str

Format SKILL.md with OpenCode-compatible YAML frontmatter.

Generates a superset frontmatter that works with both Claude and OpenCode.
OpenCode-required fields: kebab-case name, compatibility, metadata map.

Args:
    skill_dir: Path to skill directory
    metadata: Skill metadata

Returns:
    Formatted SKILL.md content with YAML frontmatter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| metadata | SkillMetadata | - | - |

**Returns**: `str`


##### package(self, skill_dir: Path, output_path: Path, enable_chunking: bool = False, chunk_max_tokens: int = DEFAULT_CHUNK_TOKENS, preserve_code_blocks: bool = True, chunk_overlap_tokens: int = DEFAULT_CHUNK_OVERLAP_TOKENS) → Path

Package skill as a directory (not ZIP) for OpenCode.

Creates: <output>/<name>-opencode/SKILL.md + references/

Args:
    skill_dir: Path to skill directory
    output_path: Output path for the package directory

Returns:
    Path to created directory

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

OpenCode uses local files, no upload needed.

Returns local path information.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| package_path | Path | - | - |
| api_key | str | - | - |

**Returns**: `dict[str, Any]`


##### validate_api_key(self, api_key: str) → bool

No API key needed for OpenCode.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| api_key | str | - | - |

**Returns**: `bool`


##### supports_enhancement(self) → bool

OpenCode does not have its own enhancement API.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`



