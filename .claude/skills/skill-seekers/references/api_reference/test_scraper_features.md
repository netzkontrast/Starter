# API Reference: test_scraper_features.py

**Language**: Python

**Source**: `tests/test_scraper_features.py`

---

## Classes

### TestURLValidation

Test URL validation logic

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_valid_url_with_include_pattern(self)

Test URL matching include pattern

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_valid_url_with_api_pattern(self)

Test URL matching API pattern

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_invalid_url_with_exclude_pattern(self)

Test URL matching exclude pattern

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_invalid_url_different_domain(self)

Test URL from different domain

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_invalid_url_no_include_match(self)

Test URL not matching any include pattern

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_url_validation_no_patterns(self)

Test URL validation with no include/exclude patterns

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestLanguageDetection

Test language detection from code blocks

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_language_from_class(self)

Test language detection from CSS class

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_language_from_lang_class(self)

Test language detection from lang- prefix

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_language_from_parent(self)

Test language detection from parent pre element

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_python_from_heuristics(self)

Test Python detection from code content

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_python_from_def(self)

Test Python detection from def keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_javascript_from_const(self)

Test JavaScript detection from const keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_javascript_from_arrow(self)

Test JavaScript detection from arrow function

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_gdscript(self)

Test GDScript detection

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_cpp(self)

Test C++ detection

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_unknown(self)

Test unknown language detection

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_brush_pattern_in_pre(self)

Test brush: pattern in pre element

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_bare_class_in_pre(self)

Test bare class name in pre element

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_bare_class_in_code(self)

Test bare class name in code element

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_using_system(self)

Test C# detection from 'using System' keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_namespace(self)

Test C# detection from 'namespace' keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_property_syntax(self)

Test C# detection from property syntax

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_public_class(self)

Test C# detection from 'public class' keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_private_class(self)

Test C# detection from 'private class' keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_public_static_void(self)

Test C# detection from 'public static void' keyword

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_csharp_from_class_attribute(self)

Test C# detection from CSS class attribute

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPatternExtraction

Test pattern extraction from documentation

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_pattern_with_example_marker(self)

Test pattern extraction with 'Example:' marker

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_pattern_with_usage_marker(self)

Test pattern extraction with 'Usage:' marker

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_pattern_limit(self)

Test pattern extraction limits to 5 patterns

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCategorization

Test smart categorization logic

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_by_url(self)

Test categorization based on URL

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_by_title(self)

Test categorization based on title

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_by_content(self)

Test categorization based on content (lower priority)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_categorize_to_other(self)

Test pages that don't match any category go to 'other'

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_categories_removed(self)

Test empty categories are removed

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestLinkExtraction

Test link extraction and anchor fragment handling

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_links_strips_anchor_fragments(self)

Test that anchor fragments (#anchor) are stripped from extracted links

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_links_no_anchor_duplicates(self)

Test that multiple anchor links to same page don't create duplicates

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_links_preserves_query_params(self)

Test that query parameters are preserved when stripping anchors

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_links_relative_urls_with_anchors(self)

Test that relative URLs with anchors are handled correctly

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextCleaning

Test text cleaning utility

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_clean_multiple_spaces(self)

Test cleaning multiple spaces

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_clean_newlines(self)

Test cleaning newlines

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_clean_tabs(self)

Test cleaning tabs

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_clean_strip_whitespace(self)

Test stripping leading/trailing whitespace

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSanitizeUrl

Test the shared sanitize_url utility (see issue #284).

**Inherits from**: unittest.TestCase

#### Methods

##### test_no_brackets_unchanged(self)

URLs without brackets should pass through unchanged.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_brackets_in_path_encoded(self)

Square brackets in path should be percent-encoded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_brackets_in_query_encoded(self)

Square brackets in query should be percent-encoded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_host_not_affected(self)

Host portion should never be modified (IPv6 literals are valid there).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_already_encoded_brackets(self)

Already-encoded brackets should not be double-encoded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_empty_and_simple_urls(self)

Edge cases: empty string, simple URLs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_malformed_ipv6_url_no_crash(self)

URLs with brackets that look like broken IPv6 must not crash (issue #284).

Python 3.14 raises ValueError from urlparse() on unencoded brackets
that look like IPv6 but are malformed (e.g. from documentation examples).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unmatched_bracket_no_crash(self)

Unmatched brackets should be encoded, not crash.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestEnqueueUrlSanitization

Test that _enqueue_url sanitises bracket URLs before enqueueing (#284).

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enqueue_sanitises_brackets(self)

_enqueue_url should percent-encode brackets before adding to queue.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enqueue_dedup_with_encoded_brackets(self)

Encoded and raw bracket URLs should be treated as the same URL.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enqueue_normal_url_unchanged(self)

Normal URLs without brackets should pass through unchanged.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestMarkdownLinkBracketSanitization

Integration test: markdown content with bracket URLs should not crash (#284).

**Inherits from**: unittest.TestCase

#### Methods

##### setUp(self)

Set up test converter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_markdown_links_with_brackets(self)

Links with brackets in .md content should be sanitised when enqueued.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



