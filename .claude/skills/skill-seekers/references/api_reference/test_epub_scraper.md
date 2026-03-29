# API Reference: test_epub_scraper.py

**Language**: Python

**Source**: `tests/test_epub_scraper.py`

---

## Classes

### TestEpubToSkillConverterInit

Test EpubToSkillConverter initialization.

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


##### test_init_with_name_and_epub_path(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_with_full_config(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_default_description_uses_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_dir_uses_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_data_file_uses_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_requires_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_empty_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_with_special_characters_in_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubExtraction

Test EPUB content extraction.

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


##### _make_mock_book(self, spine_content = None, metadata = None, images = None)

Create a mock ebooklib EpubBook.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spine_content | None | None | - |
| metadata | None | None | - |
| images | None | None | - |


##### test_extract_basic_epub(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_metadata(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_multiple_chapters(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_code_blocks(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_images(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_heading_boundary_splitting(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_missing_file_raises_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_invalid_extension_raises_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_deps_not_installed(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_empty_spine(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_extract_spine_item_no_body(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |




### TestEpubDrmDetection

Test DRM detection logic.

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


##### _make_converter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _make_book_with_encryption(self, encryption_xml_content)

Create a mock book with META-INF/encryption.xml.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| encryption_xml_content | None | - | - |


##### test_no_drm_detected(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_drm_detected_adobe_adept(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_drm_detected_apple_fairplay(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_drm_detected_readium_lcp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_font_obfuscation_not_drm(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_drm_error_message_is_clear(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubCategorization

Test content categorization.

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


##### test_single_source_creates_one_category(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_keyword_categorization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_categories_uses_default(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_empty_sections(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_no_keyword_matches(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_single_section(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_many_sections(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_preserves_section_order(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubSkillBuilding

Test skill building (directory structure, SKILL.md, reference files).

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


##### _make_converter(self, name = 'test_book', epub_path = 'test.epub')

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | None | 'test_book' | - |
| epub_path | None | 'test.epub' | - |


##### test_build_creates_directory_structure(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_generates_skill_md(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_generates_reference_files(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_generates_index(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_md_contains_metadata(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_md_yaml_frontmatter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_without_extracted_data_fails(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_overwrites_existing_output(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_with_long_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_with_unicode_content(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubCodeBlocks

Test code block extraction and rendering.

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


##### _make_converter(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_blocks_included_in_reference_files(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_blocks_in_skill_md_top_15(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_language_grouped(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_code_block(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_block_with_html_entities(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_block_with_syntax_highlighting_spans(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_block_language_from_class(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_quality_scoring(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubTables

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


##### test_tables_in_reference_files(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_table_with_headers(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_table_no_thead(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_table(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_table_with_colspan_rowspan(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubImages

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

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_image_references_in_markdown(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_image_with_zero_bytes(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_svg_images_handled(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_image_filename_conflicts(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cover_image_identified(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_many_images(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubErrorHandling

Test error handling for various failure scenarios.

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


##### test_missing_epub_file_raises_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_not_a_file_raises_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_not_epub_extension_raises_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_corrupted_epub_raises_error(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_drm_protected_raises_error(self, mock_isfile, mock_exists, mock_epub)

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |


##### test_ebooklib_not_installed_error(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_malformed_xhtml_handled_gracefully(self, mock_isfile, mock_exists, mock_epub)

Malformed XHTML should not crash thanks to BeautifulSoup tolerant parsing.

**Decorators**: `@patch('skill_seekers.cli.epub_scraper.epub')`, `@patch('skill_seekers.cli.epub_scraper.os.path.exists', return_value=True)`, `@patch('skill_seekers.cli.epub_scraper.os.path.isfile', return_value=True)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_isfile | None | - | - |
| mock_exists | None | - | - |
| mock_epub | None | - | - |




### TestEpubJSONWorkflow

Test JSON-based workflow (load/save extracted data).

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


##### test_load_extracted_json(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_from_json(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_json_round_trip(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_load_invalid_json(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_load_nonexistent_json(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_json_with_missing_fields(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubCLIArguments

Test CLI argument parsing.

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _parse_args(self, args_list)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| args_list | None | - | - |


##### test_epub_flag_accepted(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_from_json_flag_accepted(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_name_flag_accepted(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_level_default_zero(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_dry_run_flag(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_args_accepted(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_verbose_flag(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_quiet_flag(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubHelperFunctions

Test module-level helper functions.

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_from_metadata_description(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_from_metadata_title(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_fallback(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_empty_metadata(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_score_code_quality_ranges(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sanitize_filename(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubSourceDetection

Test source detection for EPUB files.

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


##### test_epub_detected_as_epub_type(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_suggested_name(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_validation_missing_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_validation_not_a_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_with_path(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_pdf_still_detected(self)

Regression test: .pdf files still detected as pdf type.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEpubEdgeCases

Test edge cases per W3C EPUB 3.3 spec.

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


##### test_epub_no_toc(self)

EPUB without TOC should still extract using spine order.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_empty_chapters(self)

Chapters with no text content handled gracefully.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_single_chapter(self)

Single chapter produces valid output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_unicode_content(self)

CJK, Arabic, Cyrillic, emoji text preserved.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_large_section_count(self)

100+ sections processed without error.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub_nested_headings(self)

h3/h4/h5/h6 become sub-headings within sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_fixed_layout_detected(self)

Fixed-layout EPUB — we extract whatever text exists.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_epub2_vs_epub3(self)

Both EPUB 2 and EPUB 3 use the same code path — verify section building works.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _make_sample_extracted_data(num_sections = 2, include_code = False, include_tables = False, include_images = False) → dict

Create minimal extracted_data dict for testing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| num_sections | None | 2 | - |
| include_code | None | False | - |
| include_tables | None | False | - |
| include_images | None | False | - |

**Returns**: `dict`



### get_metadata(ns, key)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| ns | None | - | - |
| key | None | - | - |

**Returns**: (none)


