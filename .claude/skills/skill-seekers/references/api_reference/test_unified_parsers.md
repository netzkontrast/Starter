# API Reference: test_unified_parsers.py

**Language**: Python

**Source**: `tests/test_unified_parsers.py`

---

## Classes

### TestRstParser

Test RST parser with comprehensive example.

**Inherits from**: (none)

#### Methods

##### rst_content(self)

**Decorators**: `@pytest.fixture`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### parsed_doc(self, rst_content)

**Decorators**: `@pytest.fixture`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| rst_content | None | - | - |


##### test_parsing_success(self, parsed_doc)

Test that parsing succeeds.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_title_extraction(self, parsed_doc)

Test title extraction from first heading.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_headings_count(self, parsed_doc)

Test that all headings are extracted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_heading_levels(self, parsed_doc)

Test heading levels are correct.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_tables_count(self, parsed_doc)

Test that tables are extracted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_table_headers(self, parsed_doc)

Test table headers are correctly extracted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_table_rows(self, parsed_doc)

Test table rows are extracted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_blocks_count(self, parsed_doc)

Test code blocks extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_block_language(self, parsed_doc)

Test code block language detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_block_quality(self, parsed_doc)

Test code block quality scoring.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_cross_references(self, parsed_doc)

Test cross-references extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_cross_reference_types(self, parsed_doc)

Test cross-reference types.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_admonitions(self, parsed_doc)

Test admonition extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_field_lists(self, parsed_doc)

Test field list extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_substitutions(self, parsed_doc)

Test substitution extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_to_markdown(self, parsed_doc)

Test markdown conversion.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_to_skill_format(self, parsed_doc)

Test skill format conversion.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |




### TestMarkdownParser

Test Markdown parser.

**Inherits from**: (none)

#### Methods

##### md_content(self)

**Decorators**: `@pytest.fixture`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### parsed_doc(self, md_content)

**Decorators**: `@pytest.fixture`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| md_content | None | - | - |


##### test_parsing_success(self, parsed_doc)

Test that parsing succeeds.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_frontmatter_metadata(self, parsed_doc)

Test frontmatter metadata extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_title_from_frontmatter(self, parsed_doc)

Test title extraction from frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_headings_count(self, parsed_doc)

Test headings extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_heading_levels(self, parsed_doc)

Test heading levels.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_tables_count(self, parsed_doc)

Test table extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_table_structure(self, parsed_doc)

Test table structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_blocks_count(self, parsed_doc)

Test code block extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_block_language(self, parsed_doc)

Test code block language.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_code_block_quality(self, parsed_doc)

Test code block quality scoring.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_admonitions(self, parsed_doc)

Test admonition extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_images_count(self, parsed_doc)

Test image extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_image_source(self, parsed_doc)

Test image source.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |


##### test_external_links(self, parsed_doc)

Test external link extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parsed_doc | None | - | - |




### TestAutoDetection

Test auto-detection of format.

**Inherits from**: (none)

#### Methods

##### test_rst_detection(self)

Test RST format auto-detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_markdown_detection(self)

Test Markdown format auto-detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestQualityScorer

Test quality scoring.

**Inherits from**: (none)

#### Methods

##### test_good_python_code_score(self)

Test quality score for good Python code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_code_score(self)

Test quality score for empty code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_good_table_score(self)

Test quality score for good table.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_language_detection(self)

Test language detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



