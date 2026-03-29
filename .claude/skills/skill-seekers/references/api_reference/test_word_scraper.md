# API Reference: test_word_scraper.py

**Language**: Python

**Source**: `tests/test_word_scraper.py`

---

## Classes

### TestWordToSkillConverterInit

Test WordToSkillConverter initialization and basic functionality.

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


##### test_init_with_name_and_docx_path(self)

Test initialization with name and docx path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_with_full_config(self)

Test initialization with full config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_requires_name(self)

Test that missing 'name' field raises an error.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_default_description_uses_name(self)

Test that default description is generated from name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_dir_uses_name(self)

Test that skill_dir is derived from name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_name_auto_detected_from_filename(self)

Test name can be extracted from filename via infer_description_from_word.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordCategorization

Test content categorization functionality.

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


##### test_single_docx_creates_single_category(self)

With docx_path set, categorize_content creates a single category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_keyword_based_categorization(self)

Test keyword-based categorization without docx_path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_fallback_to_content_category(self)

Without docx_path and no categories config, uses 'content' category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordSkillBuilding

Test skill structure generation.

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


##### test_build_skill_creates_directory_structure(self)

build_skill creates required directory structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_skill_creates_skill_md(self)

build_skill creates SKILL.md with correct content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_skill_creates_reference_files(self)

build_skill creates reference markdown files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_md_has_yaml_frontmatter(self)

SKILL.md starts with valid YAML frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_md_includes_section_overview(self)

SKILL.md includes a Section Overview.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordCodeBlocks

Test code block extraction and inclusion.

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


##### test_code_blocks_included_in_references(self)

Code blocks are included in reference files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_examples_in_skill_md(self)

SKILL.md includes code examples section when code is present.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_language_detected_in_statistics(self)

Language statistics are included in SKILL.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordTables

Test table extraction and rendering.

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


##### test_tables_rendered_in_references(self)

Tables are rendered as markdown tables in reference files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_table_summary_in_skill_md(self)

Table summary section appears in SKILL.md when tables exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordImages

Test image extraction and handling.

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


##### test_images_saved_to_assets(self)

Images are saved to the assets/ directory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_image_references_in_markdown(self)

Images are referenced with markdown syntax in reference files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordErrorHandling

Test error handling for invalid inputs.

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


##### test_missing_docx_file_raises_error(self)

extract_docx raises FileNotFoundError for missing file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_invalid_config_raises_error(self)

Non-dict config raises TypeError or AttributeError.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_missing_name_raises_key_error(self)

Config without 'name' raises KeyError.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_non_docx_file_raises_value_error(self)

extract_docx raises ValueError for non-.docx files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_doc_file_raises_value_error(self)

extract_docx raises ValueError for .doc (old Word format).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_extension_file_raises_value_error(self)

extract_docx raises ValueError for file with no extension.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordJSONWorkflow

Test building skills from extracted JSON.

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


##### test_load_from_json(self)

load_extracted_data loads the JSON correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_from_json_without_extraction(self)

JSON workflow skips extract_docx() and goes directly to build.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_built_from_json_has_skill_md(self)

build_skill() works after load_extracted_data().

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordCLIArguments

Test word subcommand CLI argument parsing via the main CLI.

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_docx_argument_accepted(self)

--docx flag is accepted for the word subcommand.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_api_key_accepted(self)

--api-key is accepted for word subcommand.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_level_accepted(self)

--enhance-level is accepted for word subcommand.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_workflow_accepted(self)

--enhance-workflow is accepted and stores a list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_dry_run_accepted(self)

--workflow-dry-run is accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_dry_run_accepted(self)

--dry-run is accepted for word subcommand.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_from_json_accepted(self)

--from-json is accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_name_accepted(self)

--name is accepted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordHelperFunctions

Test module-level helper functions.

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_section_basic(self)

_build_section returns a well-formed dict.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_table_from_html(self)

_extract_table_from_html extracts headers and rows.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_score_code_quality_basic(self)

_score_code_quality returns a score in [0, 10].

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_score_code_quality_empty(self)

_score_code_quality returns 0.0 for empty code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_from_word_subject(self)

infer_description_from_word uses subject field when available.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_from_word_fallback(self)

infer_description_from_word falls back to name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestWordSourceDetection

Test .docx source detection in SourceDetector.

**Inherits from**: unittest.TestCase

#### Methods

##### test_docx_detected_as_word_type(self)

SourceDetector.detect() returns type='word' for .docx files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_docx_validation_missing_file(self)

validate_source raises ValueError for missing .docx file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_pdf_still_detected(self)

Existing PDF detection is unaffected by Word support.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _make_sample_extracted_data(num_sections = 2, include_code = False, include_tables = False, include_images = False)

Helper to build a minimal extracted_data dict for testing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| num_sections | None | 2 | - |
| include_code | None | False | - |
| include_tables | None | False | - |
| include_images | None | False | - |

**Returns**: (none)


