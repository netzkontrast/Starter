# API Reference: test_workflows_command.py

**Language**: Python

**Source**: `tests/test_workflows_command.py`

---

## Classes

### TestCmdList

**Inherits from**: (none)

#### Methods

##### test_shows_bundled_and_user(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_no_workflows(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_only_bundled(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |




### TestCmdShow

**Inherits from**: (none)

#### Methods

##### test_show_bundled(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_show_not_found(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_show_user_workflow(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |




### TestCmdCopy

**Inherits from**: (none)

#### Methods

##### test_copy_bundled_to_user_dir(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_copy_nonexistent(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_copy_overwrites_existing(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_copy_multiple(self, capsys, tmp_user_dir)

Copying multiple bundled workflows installs all of them.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_copy_partial_failure_continues(self, capsys, tmp_user_dir)

A missing workflow doesn't prevent others from being copied.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |




### TestCmdAdd

**Inherits from**: (none)

#### Methods

##### test_add_valid_yaml(self, capsys, tmp_user_dir, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| sample_yaml_file | None | - | - |


##### test_add_with_override_name(self, capsys, tmp_user_dir, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| sample_yaml_file | None | - | - |


##### test_add_invalid_yaml(self, capsys, tmp_path, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_path | None | - | - |
| tmp_user_dir | None | - | - |


##### test_add_nonexistent_file(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_add_wrong_extension(self, capsys, tmp_path, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_path | None | - | - |
| tmp_user_dir | None | - | - |


##### test_add_overwrites_with_warning(self, capsys, tmp_user_dir, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| sample_yaml_file | None | - | - |


##### test_add_multiple_files(self, capsys, tmp_user_dir, tmp_path)

Adding multiple YAML files installs all of them.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| tmp_path | None | - | - |


##### test_add_multiple_name_flag_rejected(self, capsys, tmp_user_dir, tmp_path)

--name with multiple files returns error without installing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| tmp_path | None | - | - |


##### test_add_partial_failure_continues(self, capsys, tmp_user_dir, tmp_path)

A bad file in the middle doesn't prevent valid files from installing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| tmp_path | None | - | - |




### TestCmdRemove

**Inherits from**: (none)

#### Methods

##### test_remove_user_workflow(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_remove_bundled_refused(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_remove_nonexistent(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_remove_yml_extension(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_remove_multiple(self, capsys, tmp_user_dir)

Removing multiple workflows deletes all of them.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_remove_partial_failure_continues(self, capsys, tmp_user_dir)

A missing workflow doesn't prevent others from being removed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |




### TestCmdValidate

**Inherits from**: (none)

#### Methods

##### test_validate_bundled_by_name(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_validate_file_path(self, capsys, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| sample_yaml_file | None | - | - |


##### test_validate_not_found(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_validate_invalid_content(self, capsys, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_path | None | - | - |




### TestMain

**Inherits from**: (none)

#### Methods

##### test_main_no_action_exits_0(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_main_list(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_validate_success(self, capsys, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| sample_yaml_file | None | - | - |


##### test_main_show_success(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_show_not_found_exits_1(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_copy_single(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_copy_multiple(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_copy_not_found_exits_1(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_add_single_file(self, capsys, tmp_user_dir, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| sample_yaml_file | None | - | - |


##### test_main_add_multiple_files(self, capsys, tmp_user_dir, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| tmp_path | None | - | - |


##### test_main_add_with_name_flag(self, capsys, tmp_user_dir, sample_yaml_file)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| sample_yaml_file | None | - | - |


##### test_main_add_name_rejected_for_multiple(self, capsys, tmp_user_dir, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |
| tmp_path | None | - | - |


##### test_main_remove_single(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_remove_multiple(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_remove_bundled_refused(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |


##### test_main_remove_not_found_exits_1(self, capsys, tmp_user_dir)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |
| tmp_user_dir | None | - | - |




### TestWorkflowsParserArgumentBinding

Verify nargs='+' parsers produce lists with correct attribute names.

**Inherits from**: (none)

#### Methods

##### _parse(self, argv)

Parse argv through the standalone main() parser by capturing args.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| argv | None | - | - |


##### test_copy_single_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_copy_multiple_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_add_single_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_add_multiple_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_add_name_flag_captured(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_remove_single_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_remove_multiple_produces_list(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### tmp_user_dir(tmp_path, monkeypatch)

Redirect USER_WORKFLOWS_DIR to a temp directory.

Uses patch.object on the captured module reference so the patch is applied
to the same module dict that the functions reference via __globals__,
regardless of any sys.modules manipulation by other tests.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |
| monkeypatch | None | - | - |

**Returns**: (none)



### sample_yaml_file(tmp_path)

Write MINIMAL_YAML to a temp file and return its path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)



### _mock_bundled(names = ('default', 'minimal', 'security-focus'))

Patch list_bundled_workflows on the captured module object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| names | None | ('default', 'minimal', 'security-focus') | - |

**Returns**: (none)



### _mock_bundled_text(name_to_text: dict)

Patch _bundled_yaml_text on the captured module object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name_to_text | dict | - | - |

**Returns**: (none)



### _bundled_yaml_text(name)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | None | - | - |

**Returns**: (none)


