# API Reference: opencode_skill_splitter.py

**Language**: Python

**Source**: `src/skill_seekers/cli/opencode_skill_splitter.py`

---

## Classes

### OpenCodeSkillSplitter

Splits large skills into multiple focused sub-skills for OpenCode.

Strategy:
1. Read SKILL.md and references
2. Split by H2 sections in SKILL.md (or by reference files if no sections)
3. Generate a router SKILL.md that lists all sub-skills
4. Output each sub-skill with OpenCode-compatible frontmatter

**Inherits from**: (none)

#### Methods

##### __init__(self, skill_dir: str | Path, max_chars: int = 50000)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | str | Path | - | - |
| max_chars | int | 50000 | - |


##### needs_splitting(self) → bool

Check if the skill exceeds the size threshold.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _extract_sections(self, content: str) → list[dict[str, str]]

Extract H2 sections from markdown content.

Returns list of {title, content} dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |

**Returns**: `list[dict[str, str]]`


##### _group_small_sections(self, sections: list[dict[str, str]]) → list[dict[str, str]]

Merge sections that are too small to be standalone skills.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sections | list[dict[str, str]] | - | - |

**Returns**: `list[dict[str, str]]`


##### split(self, output_dir: str | Path | None = None) → list[Path]

Split the skill into multiple sub-skills.

Args:
    output_dir: Output directory (default: <skill_dir>-split/)

Returns:
    List of paths to created sub-skill directories

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| output_dir | str | Path | None | None | - |

**Returns**: `list[Path]`


##### _split_by_references(self) → list[dict[str, str]]

Split by reference files when SKILL.md doesn't have enough sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[dict[str, str]]`


##### _generate_router(self, base_name: str, skill_name: str, sub_skill_names: list[str]) → str

Generate a router SKILL.md that lists all sub-skills.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| base_name | str | - | - |
| skill_name | str | - | - |
| sub_skill_names | list[str] | - | - |

**Returns**: `str`




### OpenCodeSkillConverter

Bi-directional skill format converter.

Converts between Skill Seekers format and OpenCode ecosystem format.

**Inherits from**: (none)

#### Methods

##### import_opencode_skill(source_dir: str | Path) → dict[str, Any]

Import a skill from OpenCode format into Skill Seekers format.

Reads an OpenCode skill directory and returns a normalized dict
suitable for further processing by Skill Seekers adaptors.

Args:
    source_dir: Path to OpenCode skill directory

Returns:
    Dict with keys: name, description, version, content, references, metadata

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| source_dir | str | Path | - | - |

**Returns**: `dict[str, Any]`


##### export_to_target(skill_data: dict[str, Any], target: str, output_dir: str | Path) → Path

Export an imported skill to a target platform format.

Args:
    skill_data: Normalized skill dict from import_opencode_skill()
    target: Target platform ('claude', 'gemini', 'openai', 'markdown', etc.)
    output_dir: Output directory

Returns:
    Path to the exported skill directory

**Decorators**: `@staticmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| skill_data | dict[str, Any] | - | - |
| target | str | - | - |
| output_dir | str | Path | - | - |

**Returns**: `Path`




## Functions

### main()

**Returns**: (none)


