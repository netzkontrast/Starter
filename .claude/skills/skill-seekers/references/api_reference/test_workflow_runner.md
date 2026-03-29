# API Reference: test_workflow_runner.py

**Language**: Python

**Source**: `tests/test_workflow_runner.py`

---

## Classes

### TestCollectWorkflowVars

**Inherits from**: (none)

#### Methods

##### test_no_vars(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_single_var(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_vars(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_var_with_equals_in_value(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extra_context_merged(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extra_context_overridden_by_var(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_invalid_var_skipped(self)

Entries without '=' are silently skipped.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsNoFlags

**Inherits from**: (none)

#### Methods

##### test_returns_false_empty_when_no_flags(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_returns_false_when_empty_lists(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsSingle

Single --enhance-workflow flag.

**Inherits from**: (none)

#### Methods

##### test_single_workflow_executes(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_single_workflow_failed_load_skipped(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_single_workflow_run_failure_continues(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsMultiple

Multiple --enhance-workflow flags (chaining).

**Inherits from**: (none)

#### Methods

##### test_two_workflows_both_execute(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_three_workflows_in_order(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_partial_failure_partial_success(self)

One workflow fails to load; the other should still run.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsInlineStages

--enhance-stage flags (combined into one inline workflow).

**Inherits from**: (none)

#### Methods

##### test_inline_stages_execute(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_inline_stage_without_colon(self)

Stage spec without ':' uses the whole string as both name and prompt.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsMixed

Both --enhance-workflow and --enhance-stage provided.

**Inherits from**: (none)

#### Methods

##### test_named_then_inline(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsVariables

**Inherits from**: (none)

#### Methods

##### test_variables_passed_to_run(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunWorkflowsDryRun

**Inherits from**: (none)

#### Methods

##### test_dry_run_calls_preview_not_run(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_dry_run_multiple_workflows_all_previewed(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestBundledPresetsLoad

Verify WorkflowEngine can load each bundled preset by name.

These are real integration tests – they actually read the YAML files
shipped inside the package via importlib.resources.

**Inherits from**: (none)

#### Methods

##### test_bundled_preset_loads(self, preset_name)

**Decorators**: `@pytest.mark.parametrize('preset_name', BUNDLED_NAMES)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| preset_name | None | - | - |


##### test_bundled_preset_stages_have_required_fields(self, preset_name)

**Decorators**: `@pytest.mark.parametrize('preset_name', BUNDLED_NAMES)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| preset_name | None | - | - |


##### test_unknown_preset_raises_file_not_found(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_list_bundled_workflows_returns_all(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_list_user_workflows_empty_when_no_user_dir(self, tmp_path, monkeypatch)

list_user_workflows returns [] when ~/.config/skill-seekers/workflows/ does not exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




## Functions

### make_args(enhance_workflow = None, enhance_stage = None, var = None, workflow_dry_run = False)

Build a minimal argparse.Namespace for testing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| enhance_workflow | None | None | - |
| enhance_stage | None | None | - |
| var | None | None | - |
| workflow_dry_run | None | False | - |

**Returns**: (none)



### side_effect(name)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | None | - | - |

**Returns**: (none)


