# API Reference: test_issue_277_discord_e2e.py

**Language**: Python

**Source**: `tests/test_issue_277_discord_e2e.py`

---

## Classes

### TestIssue277DiscordDocsE2E

E2E: Reproduce @skeith's report with real Discord docs.

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### tearDown(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _detect_variants(self)

Helper: detect llms.txt variants, skip test if site unreachable.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_llms_txt_exists(self)

Verify Discord docs has llms.txt (precondition for the bug).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_llms_txt_urls_no_index_html_md(self)

Core test: URLs extracted from Discord llms.txt must NOT get /index.html.md appended.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_full_pipeline_no_404_urls(self)

Full pipeline: detector -> downloader -> parser -> converter -> queue.

Simulates what `skill-seekers create https://docs.discord.com` does,
without actually scraping pages.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



