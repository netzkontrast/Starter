# API Reference: test_openai_compatible_base.py

**Language**: Python

**Source**: `tests/test_adaptors/test_openai_compatible_base.py`

---

## Classes

### ConcreteTestAdaptor

Concrete subclass for testing the base class.

**Inherits from**: OpenAICompatibleAdaptor



### TestOpenAICompatibleBase

Test shared OpenAI-compatible base behavior

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_constants_used_in_env_var(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_supports_enhancement(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_valid(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_invalid(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_no_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_with_existing_content(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_creates_zip_with_platform_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_metadata_uses_constants(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_package_zip_structure(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_missing_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_wrong_format(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_missing_library(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_success_mocked(self, mock_openai_class)

**Decorators**: `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_read_reference_files(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_reference_files_truncation(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_enhancement_prompt_uses_platform_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_success_mocked(self, mock_openai_class)

**Decorators**: `@patch('openai.OpenAI')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_openai_class | None | - | - |


##### test_enhance_missing_references(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



