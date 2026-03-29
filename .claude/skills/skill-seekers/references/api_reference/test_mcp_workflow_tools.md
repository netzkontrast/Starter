# API Reference: test_mcp_workflow_tools.py

**Language**: Python

**Source**: `tests/test_mcp_workflow_tools.py`

---

## Classes

### TestListWorkflowsTool

**Inherits from**: (none)

#### Methods

##### test_empty_returns_empty_list(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_returns_bundled_workflows(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_bundled_source_label(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_returns_user_workflows(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_user_and_bundled_combined(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_descriptions_extracted(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_ignores_args_parameter(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |




### TestGetWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_missing_name_returns_error(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_empty_name_returns_error(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_not_found_returns_error_with_available(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_returns_bundled_content(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_returns_user_workflow_content(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_user_dir_takes_priority_over_bundled(self, user_dir, bundled_fixture)

User directory version shadows bundled workflow with same name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_not_found_no_available_shows_none(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |




### TestCreateWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_missing_name_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_missing_content_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_invalid_yaml_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_missing_stages_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_creates_file_in_user_dir(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_created_file_contains_content(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_duplicate_name_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_success_message_contains_name(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_creates_user_dir_if_missing(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestUpdateWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_missing_name_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_missing_content_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_invalid_yaml_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_missing_stages_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_cannot_update_bundled_only(self, user_dir, bundled_fixture)

Bundled-only workflow (not in user dir) cannot be updated.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_updates_existing_user_workflow(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_can_update_user_copy_of_bundled(self, user_dir, bundled_fixture)

User copy of bundled workflow CAN be updated.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_success_message_contains_name(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |




### TestDeleteWorkflowTool

**Inherits from**: (none)

#### Methods

##### test_missing_name_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_empty_name_returns_error(self, user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |


##### test_cannot_delete_bundled(self, user_dir, bundled_fixture)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_fixture | None | - | - |


##### test_not_found_user_workflow_returns_error(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_deletes_user_yaml_file(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_deletes_user_yml_extension(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |


##### test_success_message_contains_path(self, user_dir, bundled_names_empty, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |




### TestWorkflowRoundTrip

**Inherits from**: (none)

#### Methods

##### test_full_lifecycle(self, user_dir, bundled_names_empty, monkeypatch)

Create → list → get → update → delete a workflow end-to-end.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |
| monkeypatch | None | - | - |




### TestPathTraversalProtection

Verify all tools reject path traversal attempts in workflow names.

**Inherits from**: (none)

#### Methods

##### test_get_workflow_rejects_traversal(self, user_dir, bundled_names_empty)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |


##### test_create_workflow_rejects_traversal(self, user_dir, bundled_names_empty)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |


##### test_update_workflow_rejects_traversal(self, user_dir, bundled_names_empty)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |


##### test_delete_workflow_rejects_traversal(self, user_dir, bundled_names_empty)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |


##### test_valid_names_still_work(self, user_dir, bundled_names_empty)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| user_dir | None | - | - |
| bundled_names_empty | None | - | - |


##### test_validate_name_rejects_empty(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _text(result_list) → str

Extract text from the first TextContent element.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result_list | None | - | - |

**Returns**: `str`



### user_dir(tmp_path, monkeypatch)

Redirect USER_WORKFLOWS_DIR to a temp path for each test.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |
| monkeypatch | None | - | - |

**Returns**: (none)



### bundled_names_empty(monkeypatch)

Stub _bundled_names() to return an empty list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| monkeypatch | None | - | - |

**Returns**: (none)



### bundled_fixture(monkeypatch)

Stub _bundled_names() and _read_bundled() with two fake bundled workflows.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| monkeypatch | None | - | - |

**Returns**: (none)


