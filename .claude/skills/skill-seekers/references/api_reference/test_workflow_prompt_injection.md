# API Reference: test_workflow_prompt_injection.py

**Language**: Python

**Source**: `tests/test_workflow_prompt_injection.py`

---

## Classes

### TestPromptInjectionCheckWorkflow

Validate the standalone prompt-injection-check workflow.

**Inherits from**: (none)

#### Methods

##### test_workflow_loads(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_has_stages(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_injection_scan_stage_present(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_injection_scan_has_prompt(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_injection_scan_targets_all(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_applies_to_all_source_types(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_post_process_metadata(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestDefaultWorkflowHasInjectionScan

Validate that default.yaml runs injection_scan first.

**Inherits from**: (none)

#### Methods

##### test_injection_scan_is_first_stage(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_injection_scan_has_prompt(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSecurityFocusHasInjectionScan

Validate that security-focus.yaml runs injection_scan first.

**Inherits from**: (none)

#### Methods

##### test_injection_scan_is_first_stage(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_injection_scan_has_prompt(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _load_bundled_yaml(name: str) → dict

Load a bundled workflow YAML by name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| name | str | - | - |

**Returns**: `dict`


