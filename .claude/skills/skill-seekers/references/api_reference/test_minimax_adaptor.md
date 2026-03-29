# API Reference: test_minimax_adaptor.py

**Language**: Python

**Source**: `tests/test_adaptors/test_minimax_adaptor.py`

---

## Classes

### TestMiniMaxAdaptor

Test MiniMax AI adaptor functionality

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test adaptor

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_platform_info(self)

Test platform identifiers

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_platform_available(self)

Test that minimax platform is registered

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_valid(self)

Test valid MiniMax API keys (any string >10 chars)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_invalid(self)

Test invalid API keys

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_env_var_name(self)

Test environment variable name

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_supports_enhancement(self)

Test enhancement support

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_no_frontmatter(self)

Test that MiniMax format has no YAML frontmatter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_with_existing_content(self)

Test formatting when SKILL.md already has substantial content

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_without_references(self)

Test formatting without references directory

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_creates_zip(self)

Test that package creates ZIP file with correct structure

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_metadata_content(self)

Test that packaged ZIP contains correct metadata

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_output_path_as_file(self)

Test packaging when output_path is a file path

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_without_references(self)

Test packaging without reference files

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_missing_library(self)

Test upload when openai library is not installed

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_invalid_file(self)

Test upload with invalid file

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_wrong_format(self)

Test upload with wrong file format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_success(self)

Test successful upload - skipped (needs real API for integration test)

**Decorators**: `@unittest.skip('covered by test_upload_success_mocked')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_missing_references(self)

Test enhance when no reference files exist

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_success_mocked(self, mock_openai_class)

Test successful enhancement with mocked OpenAI client

**Decorators**: `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_enhance_missing_library(self)

Test enhance when openai library is not installed

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_reference_files(self)

Test reading reference files

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_reference_files_empty_dir(self)

Test reading from empty references directory

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_reference_files_nonexistent(self)

Test reading from nonexistent directory

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_reference_files_truncation(self)

Test that large reference files are truncated

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_enhancement_prompt(self)

Test enhancement prompt generation

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_enhancement_prompt_no_existing(self)

Test enhancement prompt when no existing SKILL.md

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_config_initialization(self)

Test adaptor initializes with config

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_default_config(self)

Test adaptor initializes with empty config by default

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_excludes_backup_files(self)

Test that backup files are excluded from package

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_success_mocked(self, mock_openai_class)

Test successful upload with mocked OpenAI client

**Decorators**: `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_upload_network_error(self, mock_openai_class)

Test upload with network timeout error

**Decorators**: `@unittest.skipUnless(APITimeoutError, 'openai library not installed')`, `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_upload_connection_error(self, mock_openai_class)

Test upload with connection error

**Decorators**: `@unittest.skipUnless(APIConnectionError, 'openai library not installed')`, `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_validate_api_key_format(self)

Test that API key validation uses length-based check

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestMiniMaxAdaptorIntegration

Integration tests for MiniMax AI adaptor (require MINIMAX_API_KEY)

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test adaptor

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_with_real_api(self)

Test enhancement with real MiniMax API

**Decorators**: `@unittest.skipUnless(os.getenv('MINIMAX_API_KEY'), 'MINIMAX_API_KEY not set - skipping integration test')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_with_real_api(self)

Test upload validation with real MiniMax API

**Decorators**: `@unittest.skipUnless(os.getenv('MINIMAX_API_KEY'), 'MINIMAX_API_KEY not set - skipping integration test')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_real(self)

Test validating a real API key

**Decorators**: `@unittest.skipUnless(os.getenv('MINIMAX_API_KEY'), 'MINIMAX_API_KEY not set - skipping integration test')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



