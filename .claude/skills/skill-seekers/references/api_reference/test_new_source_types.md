# API Reference: test_new_source_types.py

**Language**: Python

**Source**: `tests/test_new_source_types.py`

---

## Classes

### TestSourceDetectorNewTypes

Test that SourceDetector.detect() maps new extensions to correct types.

**Inherits from**: (none)

#### Methods

##### test_detect_ipynb(self)

Test .ipynb → jupyter detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_html_extension(self)

Test .html → html detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_htm_extension(self)

Test .htm → html detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_pptx(self)

Test .pptx → pptx detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_adoc(self)

Test .adoc → asciidoc detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_asciidoc_extension(self)

Test .asciidoc → asciidoc detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_man_extension(self)

Test .man → manpage detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_man_sections(self, section)

Test .1 through .8 → manpage for simple basenames.

**Decorators**: `@pytest.mark.parametrize('section', range(1, 9))`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| section | None | - | - |


##### test_man_section_with_dotted_basename_not_detected(self)

Test that 'access.log.1' is NOT detected as a man page.

The heuristic checks that the basename (without extension) has no dots.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_rss_extension(self)

Test .rss → rss detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_atom_extension(self)

Test .atom → rss detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_xml_not_detected_as_rss(self)

Test .xml is NOT detected as rss (too generic).

The fix ensures .xml files do not get incorrectly classified as RSS feeds.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_yaml_with_openapi_content_detected(self, tmp_path)

Test .yaml with 'openapi:' key → openapi detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_yaml_with_swagger_content_detected(self, tmp_path)

Test .yaml with 'swagger:' key → openapi detection.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_yaml_without_openapi_not_detected(self, tmp_path)

Test .yaml without OpenAPI content is NOT detected as openapi.

When the YAML file doesn't contain openapi/swagger keys the detector
skips OpenAPI and falls through.  For an absolute path it will raise
ValueError (cannot determine type), which still confirms it was NOT
classified as openapi.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_looks_like_openapi_returns_false_for_missing_file(self)

Test _looks_like_openapi returns False for non-existent file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_looks_like_openapi_json_key_format(self, tmp_path)

Test _looks_like_openapi detects JSON-style keys (quoted).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestConfigValidatorNewTypes

Test ConfigValidator VALID_SOURCE_TYPES and per-type validation.

**Inherits from**: (none)

#### Methods

##### test_all_17_types_present(self)

Test that VALID_SOURCE_TYPES contains all 17 types.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unknown_type_rejected(self)

Test that an unknown source type is rejected during validation.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### _make_config(self, source: dict) → dict

Helper: wrap a source dict in a valid config structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| source | dict | - | - |

**Returns**: `dict`


##### test_epub_requires_path(self)

Test epub source validation requires 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_jupyter_requires_path(self)

Test jupyter source validation requires 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_html_requires_path(self)

Test html source validation requires 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_openapi_requires_path_or_url(self)

Test openapi source validation requires 'path' or 'url'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_openapi_accepts_url(self)

Test openapi source passes validation with 'url'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_pptx_requires_path(self)

Test pptx source validation requires 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_asciidoc_requires_path(self)

Test asciidoc source validation requires 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_confluence_requires_url_or_path(self)

Test confluence requires 'url'/'base_url' or 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_confluence_accepts_base_url(self)

Test confluence passes with base_url + space_key.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_confluence_accepts_path(self)

Test confluence passes with export path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_notion_requires_url_or_path(self)

Test notion requires 'url'/'database_id'/'page_id' or 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_notion_accepts_page_id(self)

Test notion passes with page_id.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_notion_accepts_database_id(self)

Test notion passes with database_id.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rss_requires_url_or_path(self)

Test rss source validation requires 'url' or 'path'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rss_accepts_url(self)

Test rss passes with url.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_manpage_requires_path_or_names(self)

Test manpage source validation requires 'path' or 'names'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_manpage_accepts_names(self)

Test manpage passes with 'names' list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_chat_requires_path_or_token(self)

Test chat source validation requires 'path' or 'token'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_chat_accepts_path(self)

Test chat passes with export path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_chat_accepts_token_with_channel(self)

Test chat passes with API token + channel.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestUnifiedSkillBuilderGenericMerge

Test _generic_merge, _append_extra_sources, and _SOURCE_LABELS.

**Inherits from**: (none)

#### Methods

##### _make_builder(self, tmp_path) → UnifiedSkillBuilder

Create a minimal builder instance for testing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |

**Returns**: `UnifiedSkillBuilder`


##### test_generic_merge_produces_valid_markdown(self, tmp_path)

Test _generic_merge with two source types produces markdown.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_includes_yaml_frontmatter(self, tmp_path)

Test _generic_merge includes YAML frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_attributes_content_to_sources(self, tmp_path)

Test _generic_merge attributes content to correct source labels.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_single_source_section(self, tmp_path)

Test section unique to one source has 'From <Label>' attribution.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_multi_source_section(self, tmp_path)

Test section shared by multiple sources gets sub-headings per source.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_footer(self, tmp_path)

Test _generic_merge ends with the standard footer.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_generic_merge_merged_from_line(self, tmp_path)

Test _generic_merge includes 'Merged from:' with correct labels.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_append_extra_sources_adds_sections(self, tmp_path)

Test _append_extra_sources adds new sections to base content.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_append_extra_sources_preserves_footer(self, tmp_path)

Test _append_extra_sources keeps the footer intact.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_source_labels_has_all_17_types(self)

Test _SOURCE_LABELS has entries for all 17 source types.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_source_labels_values_are_nonempty_strings(self)

Test all _SOURCE_LABELS values are non-empty strings.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCommandModules

Test that all 10 new source types are wired into CLI.

**Inherits from**: (none)

#### Methods

##### test_new_types_in_command_modules(self)

Test all 10 new source types are in COMMAND_MODULES.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_command_modules_values_are_module_paths(self)

Test COMMAND_MODULES values look like importable module paths.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_new_parser_names_include_all_10(self)

Test that get_parser_names() includes all 10 new source types.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_total_parser_count(self)

Test total PARSERS count is 36 (25 original + 10 new + 1 doctor).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_duplicate_parser_names(self)

Test no duplicate parser names exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_command_module_count(self)

Test COMMAND_MODULES has expected number of entries.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSourceDetectorValidation

Test validate_source for new file-based source types.

**Inherits from**: (none)

#### Methods

##### test_validation_passes_for_existing_jupyter(self, tmp_path)

Test validation passes for an existing .ipynb file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validation_raises_for_nonexistent_jupyter(self)

Test validation raises ValueError for non-existent file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validation_passes_for_existing_html(self, tmp_path)

Test validation passes for an existing .html file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validation_raises_for_nonexistent_pptx(self)

Test validation raises ValueError for non-existent pptx.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validation_passes_for_existing_openapi(self, tmp_path)

Test validation passes for an existing OpenAPI spec file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validation_raises_for_nonexistent_asciidoc(self)

Test validation raises ValueError for non-existent asciidoc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validation_raises_for_nonexistent_manpage(self)

Test validation raises ValueError for non-existent manpage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validation_passes_for_existing_manpage(self, tmp_path)

Test validation passes for an existing man page file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_rss_url_validation_no_file_check(self)

Test rss validation passes for URL-based source (no file check).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rss_validation_raises_for_nonexistent_file(self)

Test rss validation raises for non-existent local file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rss_validation_passes_for_existing_file(self, tmp_path)

Test rss validation passes for an existing .rss file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_validation_passes_for_directory_types(self, tmp_path)

Test validation passes when source is a directory (e.g., html dir).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestCreateCommandRouting

Test that CreateCommand._route_to_scraper maps new types to _route_generic.

**Inherits from**: (none)

#### Methods

##### test_route_to_scraper_source_coverage(self)

Test _route_to_scraper method handles all 10 new types.

We inspect the method source to verify each type has a branch.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_generic_route_module_names(self)

Test _route_generic is called with correct module names.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



