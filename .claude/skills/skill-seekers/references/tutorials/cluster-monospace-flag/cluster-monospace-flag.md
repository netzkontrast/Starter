# How To: Cluster Monospace Flag

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test cluster monospace flag

## Prerequisites

**Required Modules:**
- `os`
- `shutil`
- `tempfile`
- `unittest`
- `yt_dlp`
- `youtube_transcript_api`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_metadata`
- `skill_seekers.cli.video_transcript`
- `skill_seekers.cli.video_transcript`
- `skill_seekers.cli.video_transcript`
- `skill_seekers.cli.video_transcript`
- `skill_seekers.cli.video_transcript`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.arguments.video`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `skill_seekers.cli.main`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.arguments.create`
- `skill_seekers.cli.config_validator`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_models`
- `numpy`
- `skill_seekers.cli.video_visual`
- `numpy`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `unittest.mock`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `sys`
- `unittest.mock`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.utils`
- `skill_seekers.cli.utils`
- `unittest.mock`
- `skill_seekers.cli.enhance_skill`
- `unittest.mock`
- `skill_seekers.cli.enhance_skill`
- `unittest.mock`
- `skill_seekers.cli.enhance_skill`
- `unittest.mock`
- `skill_seekers.cli.enhance_skill`
- `argparse`
- `argparse`
- `importlib.resources`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.arguments.video`
- `skill_seekers.cli.arguments.create`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_segmenter`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `unittest.mock`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_scraper`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `inspect`
- `inspect`
- `inspect`
- `cv2`
- `numpy`
- `cv2`
- `numpy`
- `pytesseract`
- `cv2`
- `numpy`
- `cv2`
- `numpy`
- `cv2`
- `numpy`
- `cv2`
- `numpy`
- `cv2`
- `numpy`
- `pathlib`


## Step-by-Step Guide

### Step 1: Assign raw = value

```python
raw = [([[0, 0], [100, 0], [100, 20], [0, 20]], 'test', 0.9)]
```

### Step 2: Assign code_regions = _cluster_ocr_into_lines(...)

```python
code_regions = _cluster_ocr_into_lines(raw, FrameType.CODE_EDITOR)
```

### Step 3: Call self.assertTrue()

```python
self.assertTrue(code_regions[0].is_monospace)
```

### Step 4: Assign terminal_regions = _cluster_ocr_into_lines(...)

```python
terminal_regions = _cluster_ocr_into_lines(raw, FrameType.TERMINAL)
```

### Step 5: Call self.assertTrue()

```python
self.assertTrue(terminal_regions[0].is_monospace)
```

### Step 6: Assign slide_regions = _cluster_ocr_into_lines(...)

```python
slide_regions = _cluster_ocr_into_lines(raw, FrameType.SLIDE)
```

### Step 7: Call self.assertFalse()

```python
self.assertFalse(slide_regions[0].is_monospace)
```


## Complete Example

```python
# Workflow
from skill_seekers.cli.video_visual import _cluster_ocr_into_lines
from skill_seekers.cli.video_models import FrameType
raw = [([[0, 0], [100, 0], [100, 20], [0, 20]], 'test', 0.9)]
code_regions = _cluster_ocr_into_lines(raw, FrameType.CODE_EDITOR)
self.assertTrue(code_regions[0].is_monospace)
terminal_regions = _cluster_ocr_into_lines(raw, FrameType.TERMINAL)
self.assertTrue(terminal_regions[0].is_monospace)
slide_regions = _cluster_ocr_into_lines(raw, FrameType.SLIDE)
self.assertFalse(slide_regions[0].is_monospace)
```

## Next Steps


---

*Source: test_video_scraper.py:1121 | Complexity: Intermediate | Last updated: 2026-03-29*