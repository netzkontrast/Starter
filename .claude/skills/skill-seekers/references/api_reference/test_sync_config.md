# API Reference: test_sync_config.py

**Language**: Python

**Source**: `tests/test_sync_config.py`

---

## Classes

### TestDiffUrls

Test the URL diffing logic.

**Inherits from**: unittest.TestCase

#### Methods

##### test_no_changes(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_added_urls(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_removed_urls(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_both_added_and_removed(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_configured(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_discovered(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_results_sorted(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestIsValidUrl

Test the URL filtering logic.

**Inherits from**: unittest.TestCase

#### Methods

##### test_url_under_base(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_url_not_under_base(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_include_pattern_match(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_include_pattern_no_match(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_exclude_pattern(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_include_and_exclude(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_patterns_all_valid(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestConfigHelpers

Test config extraction for both unified and legacy formats.

**Inherits from**: unittest.TestCase

#### Methods

##### test_unified_format(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unified_format_second_source(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unified_format_invalid_index(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_legacy_flat_format(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_source_found(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_set_start_urls_unified(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_set_start_urls_legacy(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestDiscoverUrls

Test BFS link discovery with mocked HTTP responses.

**Inherits from**: unittest.TestCase

#### Methods

##### _make_html(self, links: list[str]) → str

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| links | list[str] | - | - |

**Returns**: `str`


##### test_basic_discovery(self, mock_get)

Discover links from a single seed page.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_depth_limiting(self, mock_get)

URLs at depth > limit should be discovered but not followed.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_max_pages_limit(self, mock_get)

Stop after max_pages.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_include_exclude_patterns(self, mock_get)

Include/exclude patterns are respected.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_http_error_handled_gracefully(self, mock_get)

HTTP errors should not crash the discovery.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_fragments_stripped(self, mock_get)

URL fragments (#anchor) should be stripped.

**Decorators**: `@patch('skill_seekers.cli.sync_config.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |




### TestSyncConfigIntegration

Test the full sync_config workflow with mocked HTTP.

**Inherits from**: unittest.TestCase

#### Methods

##### _write_config(self, config: dict) → Path

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `Path`


##### test_dry_run_does_not_modify_file(self, mock_discover)

**Decorators**: `@patch('skill_seekers.cli.sync_config.discover_urls')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_discover | None | - | - |


##### test_apply_writes_updated_urls(self, mock_discover)

**Decorators**: `@patch('skill_seekers.cli.sync_config.discover_urls')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_discover | None | - | - |


##### test_no_changes_does_not_write(self, mock_discover)

**Decorators**: `@patch('skill_seekers.cli.sync_config.discover_urls')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_discover | None | - | - |


##### test_missing_source_returns_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_legacy_config_format(self, mock_discover)

**Decorators**: `@patch('skill_seekers.cli.sync_config.discover_urls')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_discover | None | - | - |


##### test_nav_seed_urls_used_over_start_urls(self, mock_discover)

When nav_seed_urls is present, it should be used as the seed.

**Decorators**: `@patch('skill_seekers.cli.sync_config.discover_urls')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_discover | None | - | - |




### TestSyncConfigCLI

Test CLI argument parsing and subcommand registration.

**Inherits from**: unittest.TestCase

#### Methods

##### test_sync_config_parser_registered(self)

sync-config should be a registered subcommand.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_in_command_modules(self)

sync-config should be in COMMAND_MODULES.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_arguments_created(self)

Argument parser should accept all expected flags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_default_values(self)

Default values should be sensible.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSyncConfigMCPTool

Test MCP tool wrapper.

**Inherits from**: unittest.TestCase

#### Methods

##### test_mcp_tool_importable(self)

The sync_config MCP tool should be importable.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_mcp_tool_missing_config_path(self)

Missing config_path should return an error.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



