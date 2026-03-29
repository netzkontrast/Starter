# API Reference: quality_scorer.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/extractors/quality_scorer.py`

---

## Classes

### QualityScorer

Score the quality of extracted content.

**Inherits from**: (none)

#### Methods

##### score_code_block(self, code: str, language: str | None = None) → float

Score a code block for quality (0-10).

Args:
    code: The code content
    language: Detected or specified language

Returns:
    Quality score from 0-10

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| code | str | - | - |
| language | str | None | None | - |

**Returns**: `float`


##### _validate_syntax(self, code: str, language: str | None) → tuple[bool, list[str]]

Basic syntax validation.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| code | str | - | - |
| language | str | None | - | - |

**Returns**: `tuple[bool, list[str]]`


##### score_table(self, table: Table) → float

Score a table for quality (0-10).

Args:
    table: The table to score

Returns:
    Quality score from 0-10

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| table | Table | - | - |

**Returns**: `float`


##### score_content_block(self, block: ContentBlock) → float

Score a generic content block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | ContentBlock | - | - |

**Returns**: `float`


##### detect_language(self, code: str) → tuple[str, float]

Detect programming language from code.

Returns:
    Tuple of (language, confidence)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| code | str | - | - |

**Returns**: `tuple[str, float]`



