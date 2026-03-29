# API Reference: test_workflow_tools_mcp.py

**Language**: Python

**Source**: `tests/test_workflow_tools_mcp.py`

---

## Classes

### TestListWorkflowsTool

**Inherits from**: (none)

#### Methods

##### test_lists_bundled_and_user(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_empty_lists(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |




### TestGetWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_get_bundled(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_not_found(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_missing_name_param(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_user_workflow(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |




### TestCreateWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_create_new_workflow(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_create_duplicate_fails(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_create_invalid_yaml(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_create_missing_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_missing_content(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestUpdateWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_update_user_workflow(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_update_bundled_refused(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_update_invalid_yaml(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_update_user_override_of_bundled_name(self, tmp_user_dir)

A user workflow with same name as bundled should be updatable.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |




### TestDeleteWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_delete_user_workflow(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_delete_bundled_refused(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_delete_nonexistent(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_delete_yml_extension(self, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_user_dir | None | - | - |


##### test_delete_missing_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### tmp_user_dir(tmp_path, monkeypatch)

Redirect USER_WORKFLOWS_DIR in workflow_tools to a temp dir.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |
| monkeypatch | None | - | - |

**Returns**: (none)



### _mock_bundled_names(names = ('default', 'security-focus'))

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | None | ('default', 'security-focus') | - |

**Returns**: (none)



### _mock_bundled_text(mapping: dict)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| mapping | dict | - | - |

**Returns**: (none)



### _text(result) → str

Extract text from first TextContent in result.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result | None | - | - |

**Returns**: `str`



### _read(name)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | None | - | - |

**Returns**: (none)


