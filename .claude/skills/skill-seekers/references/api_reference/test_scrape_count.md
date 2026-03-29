# API Reference: test_scrape_count.py

**Language**: Python

**Source**: `tests/test_scrape_count.py`

---

## Classes

### TestPageCounting

Tests for pages_saved and pages_skipped counters.

**Inherits from**: (none)

#### Methods

##### test_initial_counters_are_zero(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |


##### test_save_page_increments_saved_counter(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |


##### test_save_page_increments_skipped_for_empty_content(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |


##### test_save_page_increments_skipped_for_short_content(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |


##### test_save_page_increments_skipped_for_missing_content(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |


##### test_multiple_saves_track_correctly(self, converter)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |




### TestCompletionMessages

Tests for scrape completion log messages.

**Inherits from**: (none)

#### Methods

##### test_completion_message_shows_saved_and_skipped(self, converter, caplog)

The completion message should report saved/skipped breakdown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |


##### test_completion_message_no_skipped(self, converter, caplog)

When nothing is skipped, don't mention skipped count.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |




### TestSPADetection

Tests for SPA site detection warnings (#321).

**Inherits from**: (none)

#### Methods

##### test_spa_warning_when_zero_saved(self, converter, caplog)

Warn when 0 pages saved out of many visited.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |


##### test_spa_warning_when_mostly_skipped(self, converter, caplog)

Warn when >80% of pages are skipped.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |


##### test_no_spa_warning_when_mostly_saved(self, converter, caplog)

No warning when most pages are saved.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |


##### test_no_spa_warning_for_small_scrapes(self, converter, caplog)

Don't warn for very small scrapes (< 5 pages).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |




### TestBuildSkillError

Tests for improved build_skill error message.

**Inherits from**: (none)

#### Methods

##### test_build_skill_error_suggests_cause(self, converter, caplog)

build_skill should suggest SPA as cause when 0 pages saved.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |


##### test_build_skill_error_generic_when_no_skips(self, converter, caplog)

build_skill with no data and no skips = generic error (not SPA).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| converter | None | - | - |
| caplog | None | - | - |




## Functions

### converter(tmp_path)

Create a converter with tmp output directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)


