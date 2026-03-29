# API Reference: test_source_detector.py

**Language**: Python

**Source**: `tests/test_source_detector.py`

---

## Classes

### TestWebDetection

Test web URL detection.

**Inherits from**: (none)

#### Methods

##### test_detect_full_https_url(self)

Full HTTPS URL should be detected as web.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_full_http_url(self)

Full HTTP URL should be detected as web.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_domain_only(self)

Domain without protocol should add https:// and detect as web.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_complex_url(self)

Complex URL with path should be detected as web.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_suggested_name_removes_www(self)

Should remove www. prefix from suggested name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_suggested_name_removes_docs(self)

Should remove docs. prefix from suggested name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestGitHubDetection

Test GitHub repository detection.

**Inherits from**: (none)

#### Methods

##### test_detect_owner_repo_format(self)

owner/repo format should be detected as GitHub.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_github_https_url(self)

Full GitHub HTTPS URL should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_github_url_with_git_suffix(self)

GitHub URL with .git should strip suffix.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_github_url_without_protocol(self)

GitHub URL without protocol should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_owner_repo_with_dots_and_dashes(self)

Repo names with dots and dashes should work.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestLocalDetection

Test local directory detection.

**Inherits from**: (none)

#### Methods

##### test_detect_relative_directory(self, tmp_path)

Relative directory path should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_detect_absolute_directory(self, tmp_path)

Absolute directory path should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_detect_current_directory(self)

Current directory (.) should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPDFDetection

Test PDF file detection.

**Inherits from**: (none)

#### Methods

##### test_detect_pdf_extension(self)

File with .pdf extension should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_pdf_with_path(self)

PDF file with path should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_suggested_name_removes_pdf_extension(self)

Suggested name should not include .pdf extension.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestConfigDetection

Test config file detection.

**Inherits from**: (none)

#### Methods

##### test_detect_json_extension(self)

File with .json extension should be detected as config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_config_with_path(self)

Config file with path should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestValidation

Test source validation.

**Inherits from**: (none)

#### Methods

##### test_validate_existing_directory(self, tmp_path)

Validation should pass for existing directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validate_nonexistent_directory(self)

Validation should fail for nonexistent directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_existing_pdf(self, tmp_path)

Validation should pass for existing PDF.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validate_nonexistent_pdf(self)

Validation should fail for nonexistent PDF.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_existing_config(self, tmp_path)

Validation should pass for existing config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validate_nonexistent_config(self)

Validation should fail for nonexistent config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestAmbiguousCases

Test handling of ambiguous inputs.

**Inherits from**: (none)

#### Methods

##### test_invalid_input_raises_error(self)

Invalid input should raise clear error with examples.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_takes_precedence_over_web(self)

GitHub URL should be detected as github, not web.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_directory_takes_precedence_over_domain(self, tmp_path)

Existing directory should be detected even if it looks like domain.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestRawInputPreservation

Test that raw_input is preserved correctly.

**Inherits from**: (none)

#### Methods

##### test_raw_input_preserved_for_web(self)

Original input should be stored in raw_input.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_raw_input_preserved_for_github(self)

Original input should be stored even after parsing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_raw_input_preserved_for_local(self, tmp_path)

Original input should be stored before path normalization.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestEdgeCases

Test edge cases and corner cases.

**Inherits from**: (none)

#### Methods

##### test_trailing_slash_in_url(self)

URLs with and without trailing slash should work.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_uppercase_in_github_repo(self)

GitHub repos with uppercase should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_numbers_in_repo_name(self)

GitHub repos with numbers should be detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_nested_directory_path(self, tmp_path)

Nested directory paths should work.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |



