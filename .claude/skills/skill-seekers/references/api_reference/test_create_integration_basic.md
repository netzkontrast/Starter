# API Reference: test_create_integration_basic.py

**Language**: Python

**Source**: `tests/test_create_integration_basic.py`

---

## Classes

### TestCreateCommandBasic

Basic integration tests for create command (dry-run mode).

**Inherits from**: (none)

#### Methods

##### test_create_command_help(self)

Test that create command help works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_detects_web_url(self)

Test that web URLs are detected and routed correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_detects_github_repo(self)

Test that GitHub repos are detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_detects_local_directory(self, tmp_path)

Test that local directories are detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_create_detects_pdf_file(self, tmp_path)

Test that PDF files are detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_create_detects_config_file(self, tmp_path)

Test that config files are detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_create_invalid_source_shows_error(self)

Test that invalid sources raise a helpful ValueError.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_supports_universal_flags(self)

Test that universal flags are accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCreateCommandArgvForwarding

Unit tests for _add_common_args argv forwarding.

**Inherits from**: (none)

#### Methods

##### _make_args(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _collect_argv(self, args)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| args | None | - | - |


##### test_single_enhance_workflow_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_enhance_workflows_all_forwarded(self)

Each workflow must appear as a separate --enhance-workflow flag.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_enhance_workflow_not_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_single_enhance_stage_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_enhance_stages_all_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_stage_none_not_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_single_var_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_vars_all_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_var_none_not_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_dry_run_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_dry_run_false_not_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_and_stage_both_forwarded(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestBackwardCompatibility

Test that old commands still work.

**Inherits from**: (none)

#### Methods

##### test_scrape_command_still_works(self)

Old scrape command should still function.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_command_still_works(self)

Old github command should still function.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_analyze_command_still_works(self)

Old analyze command should still function.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_main_help_shows_all_commands(self)

Main help should show both old and new commands.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflows_command_still_works(self)

The new workflows subcommand is accessible via the main CLI.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



