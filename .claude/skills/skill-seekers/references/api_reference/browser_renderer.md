# API Reference: browser_renderer.py

**Language**: Python

**Source**: `src/skill_seekers/cli/browser_renderer.py`

---

## Classes

### BrowserRenderer

Render JavaScript pages using Playwright headless Chromium.

Usage:
    renderer = BrowserRenderer()
    html = renderer.render_page("https://docs.discord.com")
    renderer.close()

Or as context manager:
    with BrowserRenderer() as renderer:
        html = renderer.render_page(url)

**Inherits from**: (none)

#### Methods

##### __init__(self, timeout: int = 30000, wait_until: str = 'networkidle')

Initialize renderer.

Args:
    timeout: Page load timeout in milliseconds (default: 30s)
    wait_until: Playwright wait condition — "networkidle", "load", "domcontentloaded"

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| timeout | int | 30000 | - |
| wait_until | str | 'networkidle' | - |


##### _ensure_browser(self) → None

Launch browser if not already running. Auto-installs chromium if needed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### render_page(self, url: str) → str

Render a page with JavaScript execution and return the HTML.

Args:
    url: URL to render

Returns:
    Fully-rendered HTML string after JavaScript execution

Raises:
    RuntimeError: If browser cannot be launched
    TimeoutError: If page load times out

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| url | str | - | - |

**Returns**: `str`


##### close(self) → None

Shut down browser and Playwright.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### __enter__(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### __exit__(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _check_playwright_available() → bool

Check if playwright package is installed.

**Returns**: `bool`



### _auto_install_chromium() → bool

Auto-install Chromium browser on first use.

Returns:
    True if install succeeded or already installed, False on failure.

**Returns**: `bool`


