# API Reference: test_unified.py

**Language**: Python

**Source**: `tests/test_unified.py`

---

## Classes

### TestUnifiedCLIArguments

Test that unified subcommand parser exposes the expected CLI flags.

**Inherits from**: (none)

#### Methods

##### parser(self)

**Decorators**: `@pytest.fixture`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_api_key_stored_correctly(self, parser)

Test --api-key KEY is stored in args.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### test_enhance_level_stored_correctly(self, parser)

Test --enhance-level 2 is stored in args.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### test_enhance_level_default_is_none(self, parser)

Test --enhance-level defaults to None (per-source values apply).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### test_enhance_level_all_choices(self, parser)

Test all valid --enhance-level choices are accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### test_enhance_workflow_accepted(self, parser)

Test --enhance-workflow is accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### test_api_key_and_enhance_level_combined(self, parser)

Test --api-key and --enhance-level can be combined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |




### TestWorkflowJsonConfig

Test that UnifiedScraper.run() merges JSON workflow fields into effective_args.

**Inherits from**: (none)

#### Methods

##### _make_scraper(self, tmp_path, extra_config = None)

Build a minimal UnifiedScraper backed by a temp config file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| extra_config | None | None | - |


##### test_json_workflows_merged_when_args_none(self, tmp_path, monkeypatch)

JSON 'workflows' list is used even when args=None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_json_workflows_appended_after_cli(self, tmp_path)

CLI --enhance-workflow values come first; JSON 'workflows' appended after.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_json_workflow_stages_merged(self, tmp_path)

JSON 'workflow_stages' are appended to enhance_stage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_json_workflow_vars_converted_to_kv_strings(self, tmp_path)

JSON 'workflow_vars' dict is converted to 'key=value' strings.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_config_validator_accepts_workflow_fields(self, tmp_path)

ConfigValidator should not raise on workflow-related top-level fields.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_empty_workflow_config_no_effect(self, tmp_path)

If no JSON workflow fields exist, effective_args remains unchanged.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




## Functions

### test_detect_unified_format()

Test unified format detection and legacy rejection

**Returns**: (none)



### test_validate_unified_sources()

Test source type validation

**Returns**: (none)



### test_validate_invalid_source_type()

Test invalid source type raises error

**Returns**: (none)



### test_needs_api_merge()

Test API merge detection

**Returns**: (none)



### test_backward_compatibility()

Test legacy config rejection (removed in v2.11.0)

**Returns**: (none)



### test_detect_missing_in_docs()

Test detection of APIs missing in documentation

**Returns**: (none)



### test_detect_missing_in_code()

Test detection of APIs missing in code

**Returns**: (none)



### test_detect_signature_mismatch()

Test detection of signature mismatches

**Returns**: (none)



### test_conflict_severity()

Test conflict severity assignment

**Returns**: (none)



### test_rule_based_merge_docs_only()

Test rule-based merge for docs-only APIs

**Returns**: (none)



### test_rule_based_merge_code_only()

Test rule-based merge for code-only APIs

**Returns**: (none)



### test_rule_based_merge_matched()

Test rule-based merge for matched APIs

**Returns**: (none)



### test_merge_summary()

Test merge summary statistics

**Returns**: (none)



### test_skill_builder_basic()

Test basic skill building

**Returns**: (none)



### test_skill_builder_with_conflicts()

Test skill building with conflicts

**Returns**: (none)



### test_skill_builder_merged_apis()

Test skill building with merged APIs

**Returns**: (none)



### test_full_workflow_unified_config()

Test complete workflow with unified config

**Returns**: (none)



### test_config_file_validation()

Test validation from config file

**Returns**: (none)



### fake_run_workflows(args, context = None)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | None | - | - |
| context | None | None | - |

**Returns**: (none)


