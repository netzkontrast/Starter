# API Reference: test_cli_refactor_e2e.py

**Language**: Python

**Source**: `tests/test_cli_refactor_e2e.py`

---

## Classes

### TestParserSync

E2E tests for parser synchronization (Issue #285).

**Inherits from**: (none)

#### Methods

##### test_scrape_interactive_flag_works(self)

Test that --interactive flag (previously missing) now works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_chunk_for_rag_flag_works(self)

Test that --chunk-for-rag flag (previously missing) now works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_verbose_flag_works(self)

Test that --verbose flag (previously missing) now works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_url_flag_works(self)

Test that --url flag (previously missing) now works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_all_flags_present(self)

Test that github command has all expected flags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPresetSystem

E2E tests for preset system (Issue #268).

**Inherits from**: (none)

#### Methods

##### test_analyze_preset_flag_exists(self)

Test that analyze command has --preset flag.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_analyze_preset_list_flag_exists(self)

Test that analyze command has --preset-list flag.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preset_list_shows_presets(self)

Test that --preset-list shows all available presets.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_deprecated_quick_flag_shows_warning(self, tmp_path)

Test that --quick flag shows deprecation warning.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_deprecated_comprehensive_flag_shows_warning(self, tmp_path)

Test that --comprehensive flag shows deprecation warning.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestBackwardCompatibility

E2E tests for backward compatibility.

**Inherits from**: (none)

#### Methods

##### test_old_scrape_command_still_works(self)

Test that old scrape command invocations still work.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unified_cli_and_standalone_have_same_args(self)

Test that unified CLI and standalone have identical arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestProgrammaticAPI

Test that the shared argument functions work programmatically.

**Inherits from**: (none)

#### Methods

##### test_import_shared_scrape_arguments(self)

Test that shared scrape arguments can be imported.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_import_shared_github_arguments(self)

Test that shared github arguments can be imported.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_import_analyze_presets(self)

Test that analyze presets can be imported.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestIntegration

Integration tests for the complete flow.

**Inherits from**: (none)

#### Methods

##### test_unified_cli_subcommands_registered(self)

Test that all subcommands are properly registered.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_help_detailed(self)

Test that scrape help shows all argument details.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_analyze_help_shows_presets(self)

Test that analyze help prominently shows preset information.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestE2EWorkflow

End-to-end workflow tests.

**Inherits from**: (none)

#### Methods

##### test_dry_run_scrape_with_new_args(self, tmp_path)

Test scraping with previously missing arguments (dry run).

**Decorators**: `@pytest.mark.slow`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_analyze_with_preset_flag(self, tmp_path)

Test analyze with preset flag (no dry-run available).

**Decorators**: `@pytest.mark.slow`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestVarFlagRouting

Test that --var flag is correctly routed through create command.

**Inherits from**: (none)

#### Methods

##### test_var_flag_accepted_by_create(self)

Test that --var flag is accepted (not 'unrecognized') by create command.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_var_flag_accepted_by_analyze(self)

Test that --var flag is accepted by analyze command.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_var_flag_not_rejected_in_create_local(self, tmp_path)

Test --var KEY=VALUE doesn't cause 'unrecognized arguments' in create.

**Decorators**: `@pytest.mark.slow`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestBackwardCompatibleFlags

Test that deprecated flag aliases still work.

**Inherits from**: (none)

#### Methods

##### test_no_preserve_code_alias_accepted_by_package(self)

Test --no-preserve-code (old name) is still accepted by package command.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_preserve_code_alias_accepted_by_scrape(self)

Test --no-preserve-code (old name) is still accepted by scrape command.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_preserve_code_alias_accepted_by_create(self)

Test --no-preserve-code (old name) is still accepted by create command.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



