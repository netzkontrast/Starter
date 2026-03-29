# API Reference: unified_enhancer.py

**Language**: Python

**Source**: `src/skill_seekers/cli/unified_enhancer.py`

---

## Classes

### EnhancementConfig

Configuration for enhancement.

**Inherits from**: (none)



### UnifiedEnhancer

Single unified AI enhancement system.

Supports all enhancement types:
- patterns: Design pattern analysis
- examples: Test example context
- guides: How-to guide enhancement
- config: Configuration pattern analysis
- skill: SKILL.md enhancement
- custom: Custom prompts via workflow system

**Inherits from**: (none)

#### Methods

##### __init__(self, mode: str = 'auto', api_key: str | None = None, enabled: bool = True, config: EnhancementConfig | None = None)

Initialize unified enhancer.

Args:
    mode: Enhancement mode - "auto", "api", or "local"
    api_key: Anthropic API key (uses env if None)
    enabled: Enable AI enhancement
    config: Optional EnhancementConfig object

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mode | str | 'auto' | - |
| api_key | str | None | None | - |
| enabled | bool | True | - |
| config | EnhancementConfig | None | None | - |


##### _check_claude_cli(self) → bool

Check if Claude Code CLI is available.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### enhance(self, items: list[dict], enhancement_type: str, custom_prompt: str | None = None) → list[dict]

Universal enhancement method.

Args:
    items: List of items to enhance (patterns, examples, guides, etc.)
    enhancement_type: Type of enhancement ("pattern", "example", "guide", "config", "skill", "custom")
    custom_prompt: Optional custom prompt (overrides default)

Returns:
    Enhanced items

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| items | list[dict] | - | - |
| enhancement_type | str | - | - |
| custom_prompt | str | None | None | - |

**Returns**: `list[dict]`


##### _enhance_parallel(self, batches: list[list[dict]], prompt_template: str) → list[dict]

Process batches in parallel using ThreadPoolExecutor.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| batches | list[list[dict]] | - | - |
| prompt_template | str | - | - |

**Returns**: `list[dict]`


##### _enhance_batch(self, items: list[dict], prompt_template: str) → list[dict]

Enhance a batch of items.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| items | list[dict] | - | - |
| prompt_template | str | - | - |

**Returns**: `list[dict]`


##### _call_claude(self, prompt: str, max_tokens: int = 1000) → str | None

Call Claude (API or LOCAL mode) with error handling.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| prompt | str | - | - |
| max_tokens | int | 1000 | - |

**Returns**: `str | None`


##### _call_claude_api(self, prompt: str, max_tokens: int = 1000) → str | None

Call Claude API.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| prompt | str | - | - |
| max_tokens | int | 1000 | - |

**Returns**: `str | None`


##### _call_claude_local(self, prompt: str) → str | None

Call Claude Code CLI in LOCAL mode.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| prompt | str | - | - |

**Returns**: `str | None`


##### _get_default_prompt(self, enhancement_type: str) → str

Get default prompt for enhancement type.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| enhancement_type | str | - | - |

**Returns**: `str`


##### _format_item_for_prompt(self, idx: int, item: dict) → str

Format item for inclusion in prompt.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| idx | int | - | - |
| item | dict | - | - |

**Returns**: `str`




### PatternEnhancer

Backward compatible pattern enhancer.

**Inherits from**: UnifiedEnhancer

#### Methods

##### enhance_patterns(self, patterns: list[dict]) → list[dict]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| patterns | list[dict] | - | - |

**Returns**: `list[dict]`




### TestExampleEnhancer

Backward compatible test example enhancer.

**Inherits from**: UnifiedEnhancer

#### Methods

##### enhance_examples(self, examples: list[dict]) → list[dict]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| examples | list[dict] | - | - |

**Returns**: `list[dict]`




### GuideEnhancer

Backward compatible guide enhancer.

**Inherits from**: UnifiedEnhancer

#### Methods

##### enhance_guides(self, guides: list[dict]) → list[dict]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| guides | list[dict] | - | - |

**Returns**: `list[dict]`




### ConfigEnhancer

Backward compatible config enhancer.

**Inherits from**: UnifiedEnhancer

#### Methods

##### enhance_config(self, config: list[dict]) → list[dict]

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | list[dict] | - | - |

**Returns**: `list[dict]`



