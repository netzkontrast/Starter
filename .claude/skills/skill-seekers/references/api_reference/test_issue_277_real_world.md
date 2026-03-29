# API Reference: test_issue_277_real_world.py

**Language**: Python

**Source**: `tests/test_issue_277_real_world.py`

---

## Classes

### TestIssue277RealWorld

Integration test for Issue #277 using real MikroORM URLs

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter with MikroORM-like configuration

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_mikro_orm_urls_from_issue_277(self)

Test the exact URLs that caused 404 errors in issue #277

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_404_causing_urls_generated(self)

Verify that no URLs matching the 404 error pattern are generated

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_blind_index_html_md_appending(self)

Verify non-.md URLs don't get /index.html.md appended (core fix)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_deduplication_prevents_multiple_requests(self)

Verify that multiple anchors on same page don't create duplicate requests

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_md_files_with_anchors_preserved(self)

Test that .md files with anchors are handled correctly

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_real_scraping_scenario_no_404s(self, mock_get)

Integration test: Simulate real scraping scenario with llms.txt URLs.
Verify that the converted URLs would not cause 404 errors.

**Decorators**: `@patch('skill_seekers.cli.doc_scraper.requests.get')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_get | None | - | - |


##### test_issue_277_error_message_urls(self)

Test the exact URLs that appeared in error messages from the issue report.
These were the actual 404-causing URLs that need to be fixed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestIssue277DiscordDocs

Test for Discord docs case reported by @skeith

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_docs_no_index_html_md(self)

Discord docs don't serve .md files - no /index.html.md should be appended

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_docs_md_urls_preserved(self)

Discord llms.txt has .md URLs that should be preserved

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_discord_docs_mixed_urls(self)

Mix of .md and non-.md URLs from Discord docs

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



