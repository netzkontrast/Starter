# API Reference: test_enhance_command.py

**Language**: Python

**Source**: `tests/test_enhance_command.py`

---

## Classes

### TestIsRoot

**Inherits from**: (none)

#### Methods

##### test_returns_bool(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_not_root_when_monkeypatched(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_root_when_uid_zero(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_windows_no_getuid(self, monkeypatch)

On Windows (no os.getuid), _is_root should return False.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestPickModeExplicitTarget

**Inherits from**: (none)

#### Methods

##### test_target_gemini_forces_api(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_target_openai_forces_api(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_target_claude_forces_api(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestPickModeAutoDetect

**Inherits from**: (none)

#### Methods

##### test_anthropic_key_selects_claude(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_google_key_selects_gemini(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_openai_key_selects_openai(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_no_keys_falls_back_to_local(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_anthropic_takes_priority_over_google(self, monkeypatch)

ANTHROPIC_API_KEY should win when both are set.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestPickModeConfigAgent

**Inherits from**: (none)

#### Methods

##### _patch_config(self, monkeypatch, agent: str | None)

Patch get_config_manager to return a stub with get_default_agent().

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| agent | str | None | - | - |


##### test_config_gemini_with_key_uses_gemini(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_config_gemini_without_key_falls_to_autodetect(self, monkeypatch)

Config says gemini but no GOOGLE_API_KEY → auto-detect.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_config_agent_overridden_by_explicit_target(self, monkeypatch)

--target flag takes priority over config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestEnhanceArgumentParsing

Test that the enhance parser exposes all expected arguments.

**Inherits from**: (none)

#### Methods

##### _parse(self, argv, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| argv | None | - | - |
| tmp_path | None | - | - |


##### test_target_gemini(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_target_openai(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_api_key_stored(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_dry_run(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_no_target_defaults_none(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_invalid_target_rejected(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestEnhanceCommandMain

**Inherits from**: (none)

#### Methods

##### test_dry_run_no_ai_call(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_missing_dir_returns_error(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_root_local_mode_blocked(self, monkeypatch, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |


##### test_root_api_mode_allowed(self, monkeypatch, tmp_path)

Even as root, API mode should be selected (not blocked).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |




### TestConfigManagerDefaultAgent

**Inherits from**: (none)

#### Methods

##### test_get_default_agent_none_by_default(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_set_and_get_default_agent(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_set_default_agent_persisted(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




## Functions

### _make_args()

Build a fake Namespace with sensible defaults.

**Returns**: (none)



### _make_skill_dir(tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)


