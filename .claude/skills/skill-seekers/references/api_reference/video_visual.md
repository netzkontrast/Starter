# API Reference: video_visual.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_visual.py`

---

## Classes

### YBucketLine

A line tracked by y-coordinate across multiple frames.

**Inherits from**: (none)



### YBucketConsensusEngine

Build consensus text from OCR observations across multiple frames.

Groups OCR regions by y-coordinate into buckets, then for each bucket
selects the best text by clustering similar observations and picking
the highest-confidence cluster winner.

**Inherits from**: (none)

#### Methods

##### __init__(self, y_tolerance: float = 15.0)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| y_tolerance | float | 15.0 | - |


##### add_frame(self, frame_index: int, timestamp: float, ocr_regions: list[OCRRegion]) → None

Feed one frame's OCR regions into the engine.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| frame_index | int | - | - |
| timestamp | float | - | - |
| ocr_regions | list[OCRRegion] | - | - |

**Returns**: `None`


##### build_consensus(self) → list[YBucketLine]

Build consensus text for each y-bucket.

Algorithm:
1. Sort observations by confidence (descending).
2. Cluster observations by text similarity (ratio >= 0.6).
3. Score clusters by sum of confidence weights.
4. Winning cluster's highest-confidence observation = consensus_text.
5. Single observations with confidence < 0.4 → empty (unreliable).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[YBucketLine]`


##### get_consensus_text(self) → str

Return assembled consensus text (newline-joined lines).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### get_consensus_confidence(self) → float

Return mean consensus confidence across non-empty buckets.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `float`


##### get_bucket_y_centers(self) → set[float]

Return the set of y-center values for all buckets.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `set[float]`


##### reset(self) → None

Clear all state.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`




### TrackedTextBlock

A text block tracked across multiple video frames.

**Inherits from**: (none)



### TextBlockTracker

Track text blocks across video frames for continuity detection.

Uses y-bucket overlap matching when OCR regions are available,
falling back to text similarity matching otherwise.

**Inherits from**: (none)

#### Methods

##### __init__(self, similarity_threshold: float = 0.6, y_tolerance: float = 15.0)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| similarity_threshold | float | 0.6 | - |
| y_tolerance | float | 15.0 | - |


##### update(self, frame_index: int, timestamp: float, ocr_text: str, confidence: float, frame_type: FrameType, ocr_regions: list[OCRRegion] | None = None, panel_bbox: tuple[int, int, int, int] | None = None) → None

Process a new frame's OCR results.

For code/terminal frames: match against active blocks using panel
position (when ``panel_bbox`` is provided), y-bucket overlap (when
``ocr_regions`` are provided), or text similarity as final fallback.
For other frames: complete all active blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| frame_index | int | - | - |
| timestamp | float | - | - |
| ocr_text | str | - | - |
| confidence | float | - | - |
| frame_type | FrameType | - | - |
| ocr_regions | list[OCRRegion] | None | None | - |
| panel_bbox | tuple[int, int, int, int] | None | None | - |

**Returns**: `None`


##### _match_by_y_buckets(self, new_regions: list[OCRRegion]) → tuple[TrackedTextBlock | None, int]

Match new frame regions against active blocks by y-bucket overlap.

Returns (matched_block, block_index) or (None, -1) if no match.
A match requires >= 40% of the new frame's region y-centers to
fall within existing bucket y-centers (within tolerance).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| new_regions | list[OCRRegion] | - | - |

**Returns**: `tuple[TrackedTextBlock | None, int]`


##### _match_by_panel_position(self, panel_bbox: tuple[int, int, int, int], ocr_text: str) → tuple[TrackedTextBlock | None, int]

Match by panel x-range overlap (horizontal position).

Two panels match if their x-ranges overlap by >= 50%.
Also requires text similarity >= 0.3 to avoid matching
completely different content that happens to be in the same position.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| panel_bbox | tuple[int, int, int, int] | - | - |
| ocr_text | str | - | - |

**Returns**: `tuple[TrackedTextBlock | None, int]`


##### _complete_all_active(self) → None

Move all active blocks to completed, building consensus first.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _assign_text_group(self, block: TrackedTextBlock) → None

Assign a text group ID to a completed block.

Compares consensus_lines against existing TextGroups:
- Overlap >= 60% → same group (possibly edited)
- Overlap < 60% → new group

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| block | TrackedTextBlock | - | - |

**Returns**: `None`


##### _compute_edit(self, old_lines: list[str], new_lines: list[str], timestamp: float) → TextGroupEdit | None

Compute a TextGroupEdit between old and new line lists.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| old_lines | list[str] | - | - |
| new_lines | list[str] | - | - |
| timestamp | float | - | - |

**Returns**: `TextGroupEdit | None`


##### finalize(self) → list[TrackedTextBlock]

Complete tracking, assign text groups, and return all blocks.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[TrackedTextBlock]`


##### get_text_groups(self) → list[TextGroup]

Return all text groups after finalize().

Also runs language detection on groups that don't already have
a detected_language set.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `list[TextGroup]`




## Functions

### _detect_gpu() → bool

Check if a CUDA or ROCm GPU is available for EasyOCR/PyTorch.

**Returns**: `bool`



### _get_ocr_reader()

Get or create the EasyOCR reader (lazy singleton).

**Returns**: (none)



### _detect_theme(gray_img) → str

Detect 'dark' or 'light' theme from grayscale image.

Uses median brightness: < 128 = dark theme, >= 128 = light theme.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| gray_img | None | - | - |

**Returns**: `str`



### _preprocess_frame_for_ocr(frame_path: str, frame_type: FrameType) → str

Apply frame-type-aware preprocessing before OCR.

CODE_EDITOR/TERMINAL: COLOR inversion (preserves syntax highlighting) →
grayscale → aggressive upscale → CLAHE contrast enhancement.  Produces
a high-res, high-contrast grayscale suitable for EasyOCR.

SLIDE: mild sharpening.
Others: no preprocessing.

Args:
    frame_path: Path to the original frame image.
    frame_type: Classification of the frame.

Returns:
    Path to the preprocessed image (may be a temp file or the original).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| frame_type | FrameType | - | - |

**Returns**: `str`



### _binarize_for_tesseract(grayscale_path: str) → str

Produce a clean binary image from a preprocessed grayscale, for Tesseract.

Pipeline: Gaussian blur → Otsu's threshold → morphological close.
Tesseract performs best on clean black-text-on-white binary images.

Args:
    grayscale_path: Path to a preprocessed grayscale image.

Returns:
    Path to the binary image (temp file).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| grayscale_path | str | - | - |

**Returns**: `str`



### _get_ocr_params(frame_type: FrameType) → dict

Return EasyOCR readtext kwargs tuned per frame type.

CODE_EDITOR/TERMINAL: lower thresholds, beam search, higher mag.
SLIDE/OTHER: defaults with greedy decoder.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_type | FrameType | - | - |

**Returns**: `dict`



### _has_code_tokens(text: str) → bool

Check if text contains recognizable code tokens.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text | str | - | - |

**Returns**: `bool`



### _run_tesseract_ocr(preprocessed_path: str, frame_type: FrameType) → list[tuple]

Run pytesseract on a preprocessed frame.

Creates a binarized version of the preprocessed grayscale (Tesseract
performs best on clean binary images), then runs Tesseract with
``--psm 4`` (single column of variable-size text) and LSTM engine.

Returns results in the same format as EasyOCR: list of (bbox, text, confidence).
Groups words into lines by y-coordinate.

Uses a circuit breaker: if tesseract fails once, it's disabled for the
rest of the session to avoid wasting time on repeated subprocess failures.

Args:
    preprocessed_path: Path to the preprocessed grayscale image.
    frame_type: Frame classification (reserved for future per-type tuning).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| preprocessed_path | str | - | - |
| frame_type | FrameType | - | - |

**Returns**: `list[tuple]`



### _run_multi_engine_ocr(frame_path: str, frame_type: FrameType) → tuple[list[tuple], str]

Run multiple OCR engines and ensemble the results.

Strategy:
1. Preprocess the frame (inversion + binarization for code frames).
2. Run EasyOCR on the preprocessed image.
3. Run pytesseract on the preprocessed image.
4. For each y-bucket line, pick the engine result with higher confidence.
5. Prefer results that contain recognizable code tokens.

Returns:
    Tuple of (raw_results, flat_text).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| frame_type | FrameType | - | - |

**Returns**: `tuple[list[tuple], str]`



### _ensemble_ocr_results(preprocessed_path: str, frame_type: FrameType) → tuple[list[tuple], str]

Run EasyOCR + pytesseract and merge results by y-bucket.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| preprocessed_path | str | - | - |
| frame_type | FrameType | - | - |

**Returns**: `tuple[list[tuple], str]`



### _merge_by_y_bucket(easy_results: list[tuple], tess_results: list[tuple], y_tolerance: float = 20.0) → list[tuple]

Merge two sets of OCR results by matching y-coordinate lines.

For each y-bucket, picks the result with higher confidence,
with a preference for results containing code tokens.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| easy_results | list[tuple] | - | - |
| tess_results | list[tuple] | - | - |
| y_tolerance | float | 20.0 | - |

**Returns**: `list[tuple]`



### _pick_better_ocr_result(result_a: tuple, result_b: tuple) → tuple

Pick the better of two OCR results for the same line.

Prefers code-token-containing results; ties broken by confidence.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| result_a | tuple | - | - |
| result_b | tuple | - | - |

**Returns**: `tuple`



### _ocr_with_claude_vision(frame_path: str, frame_type: FrameType) → tuple[str, float]

Use Claude Vision API to extract code from a frame.

Sends the frame image to Claude Haiku and asks it to extract all
visible code/text exactly as shown.

Returns:
    (extracted_text, confidence).  Confidence is 0.95 when successful.
    Returns ("", 0.0) if API key is not set or the call fails.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| frame_type | FrameType | - | - |

**Returns**: `tuple[str, float]`



### check_visual_dependencies() → dict[str, bool]

Check which visual extraction dependencies are available.

Returns:
    Dict mapping dependency name to availability.

**Returns**: `dict[str, bool]`



### detect_scenes(video_path: str) → list[tuple[float, float]]

Detect scene boundaries in a video using scenedetect.

Args:
    video_path: Path to video file.

Returns:
    List of (start_time, end_time) tuples for each scene in seconds.

Raises:
    RuntimeError: If required dependencies are not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_path | str | - | - |

**Returns**: `list[tuple[float, float]]`



### extract_keyframes(video_path: str, timestamps: list[float]) → list[KeyFrame]

Extract keyframes at specified timestamps using OpenCV.

Args:
    video_path: Path to video file.
    timestamps: List of timestamps (in seconds) to extract frames at.

Returns:
    List of KeyFrame objects with saved frame paths.

Raises:
    RuntimeError: If required dependencies are not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_path | str | - | - |
| timestamps | list[float] | - | - |

**Returns**: `list[KeyFrame]`



### _classify_region(gray, edges, hsv) → FrameType

Classify a single rectangular region from pre-computed arrays.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| gray | None | - | - |
| edges | None | - | - |
| hsv | None | - | - |

**Returns**: `FrameType`



### _detect_panel_dividers(gray) → tuple[list[int], list[int]]

Detect IDE panel divider positions using brightness gradients.

Panel dividers are thin lines where many rows (or columns) have a
sharp brightness change.  Returns lists of x and y positions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| gray | None | - | - |

**Returns**: `tuple[list[int], list[int]]`



### classify_frame_regions(frame_path: str) → list[tuple[int, int, int, int, FrameType]]

Classify a frame by detecting IDE panels as rectangles.

Finds panel divider lines (vertical and horizontal brightness edges),
builds a grid of rectangular panels, filters by minimum size, and
classifies each panel independently.

This handles split-screen IDE layouts where half the screen shows code
and the other half shows a game viewport or inspector.

Args:
    frame_path: Path to frame image file.

Returns:
    List of ``(x1, y1, x2, y2, FrameType)`` for each detected panel
    that meets the minimum size threshold.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |

**Returns**: `list[tuple[int, int, int, int, FrameType]]`



### _find_code_bbox(regions: list[tuple[int, int, int, int, FrameType]]) → tuple[int, int, int, int] | None

Merge all code/terminal panels into one bounding box.

Returns ``(x1, y1, x2, y2)`` covering all code regions, or None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| regions | list[tuple[int, int, int, int, FrameType]] | - | - |

**Returns**: `tuple[int, int, int, int] | None`



### _get_code_panels(regions: list[tuple[int, int, int, int, FrameType]], min_width: int = _MIN_PANEL_OCR_WIDTH) → list[tuple[int, int, int, int]]

Return bounding boxes for individual code/terminal panels.

Unlike ``_find_code_bbox`` which merges all code regions into one,
this returns each code panel separately so they can be OCR'd
independently.  Panels narrower than *min_width* pixels are
discarded — they typically contain inspector sidebars or toolbars
that produce garbage OCR.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| regions | list[tuple[int, int, int, int, FrameType]] | - | - |
| min_width | int | _MIN_PANEL_OCR_WIDTH | - |

**Returns**: `list[tuple[int, int, int, int]]`



### _crop_code_region(frame_path: str, bbox: tuple[int, int, int, int], suffix: str = '') → str

Crop the code region from a frame and save as a temp file.

Args:
    frame_path: Path to the source frame image.
    bbox: ``(x1, y1, x2, y2)`` crop rectangle.
    suffix: Optional suffix to disambiguate when cropping multiple
        panels from the same frame (e.g. ``"_p0"``, ``"_p1"``).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| bbox | tuple[int, int, int, int] | - | - |
| suffix | str | '' | - |

**Returns**: `str`



### _frame_type_from_regions(regions: list[tuple[int, int, int, int, FrameType]]) → FrameType

Derive the dominant frame type from pre-computed regions.

Same logic as ``classify_frame`` but avoids re-loading the image.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| regions | list[tuple[int, int, int, int, FrameType]] | - | - |

**Returns**: `FrameType`



### classify_frame(frame_path: str) → FrameType

Classify a video frame by its visual content.

Uses region-based panel detection: finds IDE panel boundaries,
classifies each rectangular panel, returns CODE_EDITOR/TERMINAL
if *any* panel contains code.  This handles split-screen layouts.

Args:
    frame_path: Path to frame image file.

Returns:
    FrameType classification (CODE_EDITOR if any panel has code).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |

**Returns**: `FrameType`



### extract_text_from_frame(frame_path: str, frame_type: FrameType = FrameType.OTHER) → tuple[list[tuple], str]

Extract text from a video frame using EasyOCR.

Applies frame-type-aware preprocessing and OCR parameters for
better accuracy on code, terminal, and slide frames.

Args:
    frame_path: Path to frame image file.
    frame_type: Classification of the frame content.

Returns:
    Tuple of (raw_easyocr_results, flat_text_string).
    Each raw result is (bbox, text, confidence).

Raises:
    RuntimeError: If required dependencies are not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| frame_type | FrameType | FrameType.OTHER | - |

**Returns**: `tuple[list[tuple], str]`



### _cluster_ocr_into_lines(raw_results: list[tuple], frame_type: FrameType = FrameType.OTHER) → list[OCRRegion]

Cluster EasyOCR results into line-based OCRRegions.

Groups text fragments that share similar y-coordinates into
lines, sorts within each line by x-coordinate, and builds
one OCRRegion per line.

Args:
    raw_results: List of (bbox, text, confidence) from EasyOCR.
    frame_type: Frame classification for monospace detection.

Returns:
    List of OCRRegion objects, one per detected text line.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| raw_results | list[tuple] | - | - |
| frame_type | FrameType | FrameType.OTHER | - |

**Returns**: `list[OCRRegion]`



### _fuzzy_word_match(a: str, b: str) → bool

Check if two words are likely the same despite OCR noise.

Allows single-char prefix/suffix noise (e.g. 'gpublic' vs 'public')
and common OCR confusions (l/1, O/0, rn/m).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| a | str | - | - |
| b | str | - | - |

**Returns**: `bool`



### _fix_intra_line_duplication(line: str) → str

Fix lines where OCR duplicated content.

Detects when the same token sequence appears twice adjacent,
e.g. 'public class Card public class Card : MonoBehaviour'
→ 'public class Card : MonoBehaviour'.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | str | - | - |

**Returns**: `str`



### _clean_ocr_line(line: str) → str

Remove IDE decorations and OCR artifacts from a single line.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| line | str | - | - |

**Returns**: `str`



### _assemble_structured_text(regions: list[OCRRegion], frame_type: FrameType) → str

Join OCR line regions into structured text.

CODE_EDITOR/TERMINAL: newline-separated with indentation from x-offset.
SLIDE: double-newline paragraph spacing.
Others: space-separated flat text.

Args:
    regions: List of OCRRegion objects (one per line).
    frame_type: Frame classification.

Returns:
    Formatted text string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| regions | list[OCRRegion] | - | - |
| frame_type | FrameType | - | - |

**Returns**: `str`



### _compute_frame_timestamps(video_path: str, duration: float, sample_interval: float = 0.7, min_gap: float = 0.5, start_offset: float = 0.0, end_limit: float | None = None) → list[float]

Build a deduplicated list of timestamps to extract frames at.

Combines scene-change detection (catches visual transitions) with
regular interval sampling (catches gradual changes).  Nearby
timestamps closer than *min_gap* seconds are merged.

Args:
    video_path: Path to the video file.
    duration: Total video duration in seconds.
    sample_interval: Seconds between interval samples.
    min_gap: Minimum gap between kept timestamps.
    start_offset: Start sampling at this time (seconds).
    end_limit: Stop sampling at this time (seconds). None = full duration.

Returns:
    Sorted, deduplicated list of timestamps (seconds).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_path | str | - | - |
| duration | float | - | - |
| sample_interval | float | 0.7 | - |
| min_gap | float | 0.5 | - |
| start_offset | float | 0.0 | - |
| end_limit | float | None | None | - |

**Returns**: `list[float]`



### _frames_are_similar(frame_a, frame_b, threshold: float = 3.0) → bool

Check if two OpenCV frames are visually similar.

Uses mean absolute pixel difference on downscaled grayscale.
This catches text changes on dark backgrounds that histogram
correlation would miss.

Args:
    frame_a: First BGR frame (numpy array).
    frame_b: Second BGR frame (numpy array).
    threshold: Mean pixel difference below this = "duplicate".
        Typical values: 1-2 for identical, 3-5 for minor text
        changes, 10+ for scene changes.

Returns:
    True if the frames are similar enough to skip one.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_a | None | - | - |
| frame_b | None | - | - |
| threshold | float | 3.0 | - |

**Returns**: `bool`



### _text_similarity(text_a: str, text_b: str) → float

Compute text similarity ratio using SequenceMatcher.

Args:
    text_a: First text string.
    text_b: Second text string.

Returns:
    Similarity ratio between 0.0 and 1.0.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| text_a | str | - | - |
| text_b | str | - | - |

**Returns**: `float`



### _extract_code_blocks(tracked_blocks: list[TrackedTextBlock], text_groups: list[TextGroup] | None = None) → list[CodeBlock]

Convert tracked text blocks into CodeBlock objects.

Filters for code/terminal frames with sufficient text length
and attempts language detection. When text_groups are provided
and a block has a text_group_id, uses the group's consensus text
for better quality.

Args:
    tracked_blocks: Tracked text blocks from TextBlockTracker.
    text_groups: Optional list of TextGroup objects for consensus text.

Returns:
    List of CodeBlock objects with detected language.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tracked_blocks | list[TrackedTextBlock] | - | - |
| text_groups | list[TextGroup] | None | None | - |

**Returns**: `list[CodeBlock]`



### _ocr_single_panel(frame_path: str, panel_bbox: tuple[int, int, int, int], panel_idx: int, frame_type: FrameType, full_area: int, regions: list[tuple[int, int, int, int, FrameType]], use_vision_api: bool) → FrameSubSection | None

OCR a single panel and return a FrameSubSection (or None).

Designed to be called in parallel via ThreadPoolExecutor — each
invocation is independent (unique crop path, no shared mutable state).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| frame_path | str | - | - |
| panel_bbox | tuple[int, int, int, int] | - | - |
| panel_idx | int | - | - |
| frame_type | FrameType | - | - |
| full_area | int | - | - |
| regions | list[tuple[int, int, int, int, FrameType]] | - | - |
| use_vision_api | bool | - | - |

**Returns**: `FrameSubSection | None`



### extract_visual_data(video_path: str, segments: list, output_dir: str, sample_interval: float = 0.7, min_gap: float = 0.5, similarity_threshold: float = 3.0, use_vision_api: bool = False, clip_start: float | None = None, clip_end: float | None = None) → tuple[list[KeyFrame], list[CodeBlock], TextGroupTimeline | None]

Run continuous visual extraction on a video.

Instead of extracting one frame per segment, this scans the entire
video using scene-change detection + interval sampling, deduplicates
near-identical frames, classifies each frame, runs OCR with
frame-type-aware preprocessing, preserves spatial layout, tracks
text across frames with y-bucket consensus, and builds a text group
timeline for code lifecycle tracking.

For code/terminal frames, uses multi-engine OCR (EasyOCR + pytesseract)
with ensemble voting.  When ``use_vision_api`` is True and multi-engine
confidence is below 0.5, falls back to Claude Vision API.

Args:
    video_path: Path to downloaded video file.
    segments: List of VideoSegment objects (used for duration hint).
    output_dir: Directory to save extracted frames.
    sample_interval: Seconds between interval samples (default 0.7s).
    min_gap: Minimum gap between kept timestamps (default 0.5s).
    similarity_threshold: Pixel-diff threshold for duplicate detection (default 3.0).
    use_vision_api: If True, use Claude Vision API as fallback for low-confidence
        code frames (requires ANTHROPIC_API_KEY).
    clip_start: Start of clip range in seconds (None = beginning).
    clip_end: End of clip range in seconds (None = full duration).

Returns:
    Tuple of (keyframes, code_blocks, text_group_timeline).
    text_group_timeline is None when no code frames are found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| video_path | str | - | - |
| segments | list | - | - |
| output_dir | str | - | - |
| sample_interval | float | 0.7 | - |
| min_gap | float | 0.5 | - |
| similarity_threshold | float | 3.0 | - |
| use_vision_api | bool | False | - |
| clip_start | float | None | None | - |
| clip_end | float | None | None | - |

**Returns**: `tuple[list[KeyFrame], list[CodeBlock], TextGroupTimeline | None]`



### download_video(url: str, output_dir: str, clip_start: float | None = None, clip_end: float | None = None) → str | None

Download a video using yt-dlp for visual processing.

Downloads the best quality up to 1080p. Uses separate video+audio streams
and merges them (via ffmpeg) since YouTube only offers combined streams at
360p/720p — higher resolutions require downloading video-only + audio-only
and muxing.

Args:
    url: Video URL.
    output_dir: Directory to save the downloaded file.
    clip_start: Download from this time (seconds). None = beginning.
    clip_end: Download until this time (seconds). None = full video.

Returns:
    Path to downloaded video file, or None on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| url | str | - | - |
| output_dir | str | - | - |
| clip_start | float | None | None | - |
| clip_end | float | None | None | - |

**Returns**: `str | None`



### _y_center(bbox) → float

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| bbox | None | - | - |

**Returns**: `float`


