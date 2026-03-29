# How To: Get Transcript Fallback To Subtitle

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test that get_transcript falls back to subtitle files.

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

### Step 1: 'Test that get_transcript falls back to subtitle files.'

```python
'Test that get_transcript falls back to subtitle files.'
```

### Step 2: Assign tmp_dir = tempfile.mkdtemp(...)

```python
tmp_dir = tempfile.mkdtemp()
```

### Step 3: Assign video_path = os.path.join(...)

```python
video_path = os.path.join(tmp_dir, 'test.mp4')
```

### Step 4: Assign srt_path = os.path.join(...)

```python
srt_path = os.path.join(tmp_dir, 'test.srt')
```

### Step 5: Assign video_info = VideoInfo(...)

```python
video_info = VideoInfo(video_id='local123', source_type=VideoSourceType.LOCAL_FILE, file_path=video_path)
```

### Step 6: Assign config = VideoSourceConfig(...)

```python
config = VideoSourceConfig()
```

### Step 7: Assign unknown = get_transcript(...)

```python
segments, source = get_transcript(video_info, config)
```

### Step 8: Call self.assertEqual()

```python
self.assertEqual(source, TranscriptSource.SUBTITLE_FILE)
```

### Step 9: Call self.assertEqual()

```python
self.assertEqual(len(segments), 3)
```

### Step 10: Call shutil.rmtree()

```python
shutil.rmtree(tmp_dir)
```

### Step 11: Call f.write()

```python
f.write('fake')
```

### Step 12: Call f.write()

```python
f.write(_make_sample_srt_content())
```


## Complete Example

```python
# Workflow
'Test that get_transcript falls back to subtitle files.'
from skill_seekers.cli.video_transcript import get_transcript
from skill_seekers.cli.video_models import TranscriptSource, VideoInfo, VideoSourceConfig, VideoSourceType
tmp_dir = tempfile.mkdtemp()
try:
    video_path = os.path.join(tmp_dir, 'test.mp4')
    srt_path = os.path.join(tmp_dir, 'test.srt')
    with open(video_path, 'w') as f:
        f.write('fake')
    with open(srt_path, 'w', encoding='utf-8') as f:
        f.write(_make_sample_srt_content())
    video_info = VideoInfo(video_id='local123', source_type=VideoSourceType.LOCAL_FILE, file_path=video_path)
    config = VideoSourceConfig()
    segments, source = get_transcript(video_info, config)
    self.assertEqual(source, TranscriptSource.SUBTITLE_FILE)
    self.assertEqual(len(segments), 3)
finally:
    shutil.rmtree(tmp_dir)
```

## Next Steps


---

*Source: test_video_scraper.py:477 | Complexity: Advanced | Last updated: 2026-03-29*