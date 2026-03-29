# API Reference: enhance_command.py

**Language**: Python

**Source**: `src/skill_seekers/cli/enhance_command.py`

---

## Functions

### _is_root() → bool

Return True if the current process is running as root (UID 0).

**Returns**: `bool`



### _get_api_keys() → dict[str, str | None]

Collect API keys from environment.

**Returns**: `dict[str, str | None]`



### _get_config_default_agent() → str | None

Read ai_enhancement.default_agent from config manager (best-effort).

**Returns**: `str | None`



### _pick_mode(args) → tuple[str, str | None]

Decide between 'api' and 'local' mode.

Returns:
    (mode, target) — mode is "api" or "local";
                     target is the platform name ("claude", "gemini", "openai")
                     or None for local mode.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | None | - | - |

**Returns**: `tuple[str, str | None]`



### _run_api_mode(args, target: str) → int

Delegate to enhance_skill.py (platform adaptor path).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | None | - | - |
| target | str | - | - |

**Returns**: `int`



### _run_local_mode(args) → int

Delegate to LocalSkillEnhancer from enhance_skill_local.py.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | None | - | - |

**Returns**: `int`



### main() → int

**Returns**: `int`


