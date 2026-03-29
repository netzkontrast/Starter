# API Reference: test_video_scraper.py

**Language**: Python

**Source**: `tests/test_video_scraper.py`

---

## Classes

### TestVideoModels

Test video data models (enums + dataclasses).

**Inherits from**: unittest.TestCase

#### Methods

##### test_video_source_type_enum(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_transcript_source_enum(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segment_content_type_enum(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_chapter_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_transcript_segment_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_segment_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_segment_timestamp_display(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_segment_timestamp_display_hours(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_info_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_source_config_validation(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_scraper_result_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_word_timestamp_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_block_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoMetadata

Test video metadata extraction functions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_extract_video_id_standard_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_video_id_short_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_video_id_embed_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_video_id_shorts_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_video_id_not_youtube(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_video_source_type_youtube(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_video_source_type_vimeo(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_local_metadata(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoTranscript

Test transcript extraction functions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_parse_srt(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_vtt(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_srt_with_html_tags(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_whisper_stub_raises(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_transcript_fallback_to_subtitle(self)

Test that get_transcript falls back to subtitle files.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoSegmenter

Test video segmentation.

**Inherits from**: unittest.TestCase

#### Methods

##### test_segment_by_chapters(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segment_by_time_window(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segment_video_uses_chapters(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segment_video_fallback_to_time_window(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segment_content_type_classification(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoSourceDetection

Test SourceDetector recognizes video URLs and file extensions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_detect_youtube_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_youtube_short_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_youtube_playlist(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_youtube_channel(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_vimeo_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_mp4_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_mkv_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_webm_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_avi_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_mov_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_video_file_exists(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_video_url_no_error(self)

URL-based video sources should not raise during validation.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoArguments

Test video CLI argument definitions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_video_arguments_dict(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_add_video_arguments(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_enhance_level_defaults_to_zero(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_unified_parser_has_video(self)

Test video subcommand is registered in main parser.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoToSkillConverter

Test the main VideoToSkillConverter class.

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


##### test_init_with_url(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_init_with_video_file(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_skill_from_loaded_data(self)

Test build_skill works with pre-loaded result data.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_save_and_load_extracted_data(self)

Test JSON save/load roundtrip.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoVisualStubs

Test Tier 2 visual extraction stubs raise proper errors.

**Inherits from**: unittest.TestCase

#### Methods

##### test_check_visual_dependencies(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_scenes_raises_without_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_keyframes_raises_without_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_classify_frame_raises_without_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_text_raises_without_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoCreateCommandIntegration

Test create command routes video sources correctly.

**Inherits from**: unittest.TestCase

#### Methods

##### test_create_command_routing_youtube_url(self)

Test that CreateCommand routes YouTube URLs to video scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_command_routing_video_file(self)

Test that CreateCommand routes video files to video scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_arguments_include_video(self)

Test that create arguments include video mode.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoConfigValidator

Test that video is a valid source type in config validator.

**Inherits from**: unittest.TestCase

#### Methods

##### test_video_in_valid_source_types(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoHelperFunctions

Test module-level helper functions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_sanitize_filename(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sanitize_filename_max_length(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_duration(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_count(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_infer_description_from_video(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestOCRPreprocessing

Test frame-type-aware OCR preprocessing functions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_get_ocr_params_code_editor(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_ocr_params_terminal(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_ocr_params_slide(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_ocr_params_other(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preprocess_returns_original_for_other(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preprocess_returns_original_for_webcam(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSpatialLayout

Test OCR spatial layout preservation functions.

**Inherits from**: unittest.TestCase

#### Methods

##### test_cluster_empty_results(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cluster_single_result(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cluster_two_lines(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cluster_same_line_fragments(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cluster_monospace_flag(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_assemble_code_editor_newlines(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_assemble_slide_double_newlines(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_assemble_other_flat(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_assemble_empty_regions(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextContinuity

Test cross-frame text tracking and code block detection.

**Inherits from**: unittest.TestCase

#### Methods

##### test_text_similarity_identical(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_similarity_empty(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_similarity_different(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_similarity_similar(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_creates_new_block(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_merges_similar_frames(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_creates_separate_blocks_for_different_text(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_completes_on_non_code_frame(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_ignores_short_text(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_code_blocks_filters_short(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_code_blocks_maps_context(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_code_blocks_skips_non_code_frames(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_visual_data_returns_tuple(self)

Verify extract_visual_data returns (keyframes, code_blocks) tuple.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_text_from_frame_returns_tuple(self)

Verify extract_text_from_frame returns (raw_results, flat_text) tuple.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestOutputFormatting

Test type-aware output formatting in reference markdown.

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


##### test_reference_md_code_block_formatting(self)

Test that code editor OCR is wrapped in fenced code blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_reference_md_slide_formatting(self)

Test that slide OCR is formatted as blockquotes.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_md_code_block_count(self)

Test that SKILL.md overview includes code block count.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestYBucketConsensus

Test the Y-bucket consensus engine for multi-frame OCR.

**Inherits from**: unittest.TestCase

#### Methods

##### test_single_frame_single_region(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_consensus_from_multiple_frames(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multiple_lines_tracked(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_low_confidence_single_observation_empty(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_consensus_text_joins_lines(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_reset_clears_state(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_bucket_y_centers(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextGroupLifecycle

Test text group assignment and edit detection.

**Inherits from**: unittest.TestCase

#### Methods

##### test_single_block_creates_group(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_same_text_reappears_same_group(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_different_text_creates_new_group(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_edit_detected_between_appearances(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_y_bucket_matching(self)

Test that y-bucket matching works for consecutive code frames.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_compute_edit_no_changes(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_compute_edit_with_additions(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_compute_edit_with_removals(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextGroupTimeline

Test TextGroupTimeline data structure.

**Inherits from**: unittest.TestCase

#### Methods

##### test_timeline_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_groups_at_time(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_group_full_text(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_group_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_block_text_group_id(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_info_timeline_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_info_no_timeline_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_extract_visual_data_returns_3_tuple(self)

Verify extract_visual_data returns (keyframes, code_blocks, timeline) tuple.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestAudioVisualAlignment

Test audio-visual alignment building and rendering.

**Inherits from**: unittest.TestCase

#### Methods

##### test_alignment_serialization(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_audio_visual_alignments(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_alignments_no_overlap(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_reference_md_code_timeline_section(self)

Test that Code Timeline section renders correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_reference_md_audio_visual_section(self)

Test that Audio-Visual Alignment section renders correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestDarkThemePreprocessing

Tests for dark theme detection and frame preprocessing.

**Inherits from**: unittest.TestCase

#### Methods

##### test_detect_theme_dark(self)

Dark image (median < 128) returns 'dark'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_theme_light(self)

Light image (median >= 128) returns 'light'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preprocess_inverts_dark_frame(self)

Verify dark code frame gets inverted to produce lighter output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preprocess_keeps_light_frame_orientation(self)

Verify light code frame is binarized but not double-inverted.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestMultiEngineOCR

Tests for multi-engine OCR ensemble voting.

**Inherits from**: unittest.TestCase

#### Methods

##### test_tesseract_ocr_returns_correct_format(self)

Verify _run_tesseract_ocr returns (bbox, text, confidence) tuples.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multi_engine_picks_higher_confidence(self)

Mock both engines: higher confidence result wins.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multi_engine_code_token_preference(self)

Result with code tokens preferred over garbage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_multi_engine_single_engine_fallback(self)

When one engine returns nothing, use the other.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestClaudeVisionOCR

Tests for Claude Vision API OCR fallback.

**Inherits from**: unittest.TestCase

#### Methods

##### test_vision_ocr_no_api_key(self)

Returns empty when ANTHROPIC_API_KEY is not set.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_vision_ocr_success(self)

Mock anthropic client returns extracted code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_vision_fallback_on_low_confidence(self)

Vision API is only called when multi-engine conf < 0.5.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRegionDetection

Tests for IDE panel detection and region-based classification.

**Inherits from**: unittest.TestCase

#### Methods

##### test_single_panel_no_dividers(self)

A uniform frame produces a single full-frame region.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_vertical_divider_splits_panels(self)

A bright vertical line creates two separate panels.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_find_code_bbox_merges_regions(self)

_find_code_bbox merges multiple code panels into one box.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_find_code_bbox_returns_none_for_no_code(self)

_find_code_bbox returns None when no code regions exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_small_panels_filtered_out(self)

Panels smaller than minimum size thresholds are excluded.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_crop_code_region(self)

_crop_code_region saves a cropped version of the frame.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPerPanelOCR

Tests for per-panel sub-section OCR tracking.

**Inherits from**: unittest.TestCase

#### Methods

##### test_get_code_panels_returns_individual_panels(self)

_get_code_panels returns separate bboxes instead of merging.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_code_panels_includes_terminals(self)

_get_code_panels returns terminal panels too.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_code_panels_filters_narrow_panels(self)

_get_code_panels drops panels narrower than min_width.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_code_panels_custom_min_width(self)

_get_code_panels respects custom min_width.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_frame_subsection_serialization(self)

FrameSubSection to_dict/from_dict round-trips correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_keyframe_with_sub_sections(self)

KeyFrame serialization preserves sub_sections.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_panel_position_matching(self)

Two calls with overlapping x-range bbox match the same block.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_tracker_separate_panels_tracked_separately(self)

Two calls with non-overlapping bboxes create separate blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextGroupPanelId

Tests for panel_id propagation to TextGroup.

**Inherits from**: unittest.TestCase

#### Methods

##### test_text_group_inherits_panel_id(self)

Panel ID propagates from TrackedTextBlock to TextGroup.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_text_group_panel_id_serialization(self)

TextGroup panel_id survives to_dict/from_dict.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoEnhanceSourceDetection

Test video source detection in utils and enhance_skill.

**Inherits from**: unittest.TestCase

#### Methods

##### test_utils_detect_video_source(self)

_determine_source_metadata classifies video_ files as video_tutorial.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_utils_non_video_not_detected(self)

Regular reference files are not classified as video_tutorial.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoEnhancementPrompt

Test video-specific enhancement prompt building.

**Inherits from**: unittest.TestCase

#### Methods

##### test_is_video_source_true(self)

_is_video_source returns True for video_tutorial references.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_is_video_source_false(self)

_is_video_source returns False for non-video references.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_prompt_contains_key_instructions(self)

Video enhancement prompt contains video-specific instructions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_prompt_dispatched_automatically(self)

_build_enhancement_prompt dispatches to video prompt when video source detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoWorkflowAutoInjection

Test that video scraper auto-injects video-tutorial workflow.

**Inherits from**: unittest.TestCase

#### Methods

##### test_workflow_auto_injected(self)

When no workflow specified, video-tutorial is injected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_not_overridden(self)

When user specifies workflow, it is NOT overridden.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_tutorial_yaml_exists(self)

video-tutorial.yaml workflow file is bundled.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTimeClipping

Test --start-time / --end-time clipping support.

**Inherits from**: unittest.TestCase

#### Methods

##### test_parse_time_seconds_integer(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_seconds_float(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_mmss(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_hhmmss(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_zero(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_decimal_mmss(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_invalid_raises(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_empty_raises(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parse_time_too_many_colons_raises(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_arguments_include_start_end_time(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_arguments_include_start_end_time(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_argument_parsing_defaults_none(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_argument_parsing_with_values(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_transcript_clip_filters_segments(self)

Verify transcript segments are filtered to clip range.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_transcript_clip_start_only(self)

Verify only clip_start filters correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_playlist_plus_clip_rejected(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_start_gte_end_rejected(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_valid_clip_no_errors(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_info_clip_roundtrip(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_video_info_no_clip_roundtrip(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_source_config_clip_fields(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_source_config_clip_defaults_none(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_converter_init_with_clip_times(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_converter_init_without_clip_times(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segmenter_time_window_with_offset(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_segmenter_time_window_offset_with_transcript(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCleanOcrLine

Tests for _clean_ocr_line() in video_visual.py.

**Inherits from**: unittest.TestCase

#### Methods

##### test_strips_leading_line_numbers(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_strips_ide_decorations(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_strips_collapse_markers(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preserves_normal_code(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestFixIntraLineDuplication

Tests for _fix_intra_line_duplication() in video_visual.py.

**Inherits from**: unittest.TestCase

#### Methods

##### test_fixes_simple_duplication(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_preserves_non_duplicated(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_short_lines_unchanged(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestIsLikelyCode

Tests for _is_likely_code() in video_scraper.py.

**Inherits from**: unittest.TestCase

#### Methods

##### test_true_for_real_code(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_false_for_ui_junk(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_code_tokens_must_exceed_ui(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestTextGroupLanguageDetection

Tests for language detection in get_text_groups().

**Inherits from**: unittest.TestCase

#### Methods

##### test_groups_get_language_detected(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSkipWebcamOcr

Tests that WEBCAM/OTHER frame types skip OCR.

**Inherits from**: unittest.TestCase

#### Methods

##### test_webcam_frame_type_excluded_from_ocr_condition(self)

Verify the condition in the OCR block excludes WEBCAM/OTHER.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestReferenceSkipsJunkCodeFences

Tests that _is_likely_code() prevents junk from becoming code fences.

**Inherits from**: unittest.TestCase

#### Methods

##### test_junk_text_not_in_code_fence(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_real_code_in_code_fence(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestFuzzyWordMatch

Tests for _fuzzy_word_match() in video_visual.py.

**Inherits from**: unittest.TestCase

#### Methods

##### test_exact_match(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_prefix_noise(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_different_words(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _make_sample_video_info()

Build a minimal VideoInfo dict for testing.

**Returns**: (none)



### _make_sample_transcript_segments()

Build a list of TranscriptSegment objects for testing.

**Returns**: (none)



### _make_sample_srt_content()

Build sample SRT subtitle content.

**Returns**: (none)



### _make_sample_vtt_content()

Build sample WebVTT subtitle content.

**Returns**: (none)


