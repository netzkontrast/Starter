# API Reference: workflows_command.py

**Language**: Python

**Source**: `src/skill_seekers/cli/workflows_command.py`

---

## Functions

### _ensure_user_dir() → Path

**Returns**: `Path`



### _bundled_yaml_text(name: str) → str | None

Return raw YAML text of a bundled workflow, or None if not found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str | None`



### _workflow_yaml_text(name_or_path: str) → str | None

Resolve a workflow by name or path and return its raw YAML text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name_or_path | str | - | - |

**Returns**: `str | None`



### _list_user_workflow_names() → list[str]

Return names of user workflows (without extension) from USER_WORKFLOWS_DIR.

**Returns**: `list[str]`



### cmd_list() → int

List all available workflows.

**Returns**: `int`



### cmd_show(name: str) → int

Print YAML content of a workflow.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `int`



### cmd_copy(names: list[str]) → int

Copy one or more bundled workflows to user dir.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | list[str] | - | - |

**Returns**: `int`



### cmd_add(file_paths: list[str], override_name: str | None = None) → int

Install one or more custom YAML workflows into user dir.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| file_paths | list[str] | - | - |
| override_name | str | None | None | - |

**Returns**: `int`



### cmd_remove(names: list[str]) → int

Delete one or more user workflows.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | list[str] | - | - |

**Returns**: `int`



### cmd_validate(name_or_path: str) → int

Parse and validate a workflow.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name_or_path | str | - | - |

**Returns**: `int`



### main(argv = None) → None

Entry point for skill-seekers-workflows.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| argv | None | None | - |

**Returns**: `None`


