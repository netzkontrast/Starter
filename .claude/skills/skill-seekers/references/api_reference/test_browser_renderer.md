# API Reference: test_browser_renderer.py

**Language**: Python

**Source**: `tests/test_browser_renderer.py`

---

## Classes

### TestPlaywrightAvailability

Test that playwright is properly detected.

**Inherits from**: (none)

#### Methods

##### test_playwright_is_available(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_auto_install_succeeds(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestBrowserRendererReal

Real end-to-end tests with actual Chromium.

**Inherits from**: (none)

#### Methods

##### test_render_simple_page(self)

Render a real page and get HTML back.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_render_returns_js_content(self)

Verify that JS-generated content is captured (not just the shell).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_pages_reuse_browser(self)

Rendering multiple pages should reuse the same browser instance.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_close_cleans_up(self)

After close(), internal state is None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_context_manager_cleans_up(self)

Context manager calls close on exit.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_timeout_parameter(self)

Custom timeout is respected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_wait_until_parameter(self)

Custom wait_until is respected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestDocScraperBrowserIntegration

Test that doc_scraper correctly accepts browser config.

**Inherits from**: (none)

#### Methods

##### test_browser_mode_config_sets_attribute(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_browser_mode_default_false(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_render_with_browser_returns_html(self)

Test the _render_with_browser helper directly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestBrowserArgument

Test --browser argument is registered in CLI.

**Inherits from**: (none)

#### Methods

##### test_scrape_parser_accepts_browser_flag(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_parser_browser_default_false(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



