# API Reference: test_opencode_skill_splitter.py

**Language**: Python

**Source**: `tests/test_opencode_skill_splitter.py`

---

## Classes

### TestOpenCodeSkillSplitter

Test skill splitting for OpenCode

**Inherits from**: unittest.TestCase

#### Methods

##### _create_skill(self, temp_dir, name = 'test-skill', content = None, refs = None)

Helper to create a test skill directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| temp_dir | None | - | - |
| name | None | 'test-skill' | - |
| content | None | None | - |
| refs | None | None | - |


##### test_needs_splitting_small(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_needs_splitting_large(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_sections(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_sections_strips_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_split_creates_sub_skills(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_split_router_has_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_split_sub_skills_have_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_split_by_references(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_split_needed(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_group_small_sections(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestOpenCodeSkillConverter

Test bi-directional skill format converter

**Inherits from**: unittest.TestCase

#### Methods

##### test_import_opencode_skill(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_import_opencode_skill_no_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_import_missing_skill(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_export_to_claude(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_export_to_markdown(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_roundtrip_opencode(self)

Test import from OpenCode -> export to OpenCode preserves content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestGitHubActionsTemplate

Test that GitHub Actions template exists and is valid YAML.

**Inherits from**: unittest.TestCase

#### Methods

##### test_template_exists(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_template_has_required_keys(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_template_lists_all_targets(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



