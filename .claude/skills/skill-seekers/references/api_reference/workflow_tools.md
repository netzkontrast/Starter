# API Reference: workflow_tools.py

**Language**: Python

**Source**: `src/skill_seekers/mcp/tools/workflow_tools.py`

---

## Classes

### TextContent

**Inherits from**: (none)

#### Methods

##### __init__(self, type: str, text: str)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| type | str | - | - |
| text | str | - | - |




## Functions

### _validate_name(name: str) → str

Validate workflow name to prevent path traversal (CWE-22).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str`



### _ensure_user_dir() → Path

**Returns**: `Path`



### _bundled_names() → list[str]

**Returns**: `list[str]`



### _user_names() → list[str]

**Returns**: `list[str]`



### _read_bundled(name: str) → str | None

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str | None`



### _read_workflow(name: str) → str | None

Read YAML text: user dir first, then bundled.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `str | None`



### _validate_yaml(text: str) → dict

Parse and basic-validate workflow YAML; returns parsed dict.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `dict`



### list_workflows_tool(_args: dict) → list

Return all workflows with name, description, and source.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _args | dict | - | - |

**Returns**: `list`



### get_workflow_tool(args: dict) → list

Return full YAML content of a named workflow.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | dict | - | - |

**Returns**: `list`



### create_workflow_tool(args: dict) → list

Write a new workflow YAML to the user directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | dict | - | - |

**Returns**: `list`



### update_workflow_tool(args: dict) → list

Overwrite an existing user workflow. Cannot update bundled workflows.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | dict | - | - |

**Returns**: `list`



### delete_workflow_tool(args: dict) → list

Remove a user workflow by name. Bundled workflows cannot be deleted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | dict | - | - |

**Returns**: `list`


