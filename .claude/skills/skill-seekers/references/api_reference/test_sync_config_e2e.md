# API Reference: test_sync_config_e2e.py

**Language**: Python

**Source**: `tests/test_sync_config_e2e.py`

---

## Classes

### _TestHandler

Serve pages from the in-memory _SITE_PAGES dict.

**Inherits from**: SimpleHTTPRequestHandler

#### Methods

##### do_GET(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### log_message(self, format)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| format | None | - | - |




### TestSyncConfigE2E

End-to-end tests using a local HTTP server with realistic HTML.

**Inherits from**: unittest.TestCase

#### Methods

##### setUpClass(cls)

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |


##### tearDownClass(cls)

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |


##### test_discover_finds_all_doc_pages(self)

BFS should discover all 8 /docs/ pages from the root.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_excludes_blog(self)

Pages outside /docs/ base_url should be excluded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_excludes_external(self)

External URLs (github.com) should be excluded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_depth_1_finds_direct_links_only(self)

Depth 1 from root should find guide, api, faq but NOT nested pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_with_include_pattern(self)

Include pattern should filter results.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_with_exclude_pattern(self)

Exclude pattern should remove matching pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discover_max_pages_limit(self)

max_pages should cap discovery.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_dry_run_detects_new_pages(self)

Dry-run should detect pages missing from the config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_apply_updates_config(self)

--apply should write all discovered URLs to the config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_idempotent(self)

Running sync twice with --apply should be a no-op the second time.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_detects_removed_pages(self)

Pages in config but not discovered should show as removed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_preserves_other_config_fields(self)

--apply should only modify start_urls, preserving all other fields.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_with_nav_seed_urls(self)

nav_seed_urls should be used as BFS seeds instead of start_urls.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sync_config_legacy_format(self)

Legacy flat config format should work end-to-end.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSyncConfigCLIE2E

Test the CLI entry point via subprocess.

**Inherits from**: unittest.TestCase

#### Methods

##### setUpClass(cls)

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |


##### tearDownClass(cls)

**Decorators**: `@classmethod`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cls | None | - | - |


##### test_cli_dry_run(self)

CLI dry-run should print diff and exit 0.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cli_apply(self)

CLI --apply should update the config file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cli_help(self)

CLI --help should print usage and exit 0.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cli_missing_config_exits_nonzero(self)

CLI with a non-existent config should fail.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSyncConfigRealSite

Integration test against a real public docs site.

Skipped by default (use ``-m integration`` to run).
Uses httpbin.org which is a stable, small public HTTP test service.

**Inherits from**: unittest.TestCase

#### Methods

##### test_discover_urls_real_http(self)

discover_urls should work against a real HTTP server.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _start_server() → tuple[HTTPServer, int]

Start a local HTTP server on a random port. Returns (server, port).

**Returns**: `tuple[HTTPServer, int]`



### _write_config(config: dict) → Path

Write a config dict to a temp JSON file and return its path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| config | dict | - | - |

**Returns**: `Path`


