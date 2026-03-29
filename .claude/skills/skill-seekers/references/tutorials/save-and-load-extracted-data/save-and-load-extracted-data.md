# How To: Save And Load Extracted Data

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test JSON save/load roundtrip.

## Prerequisites

- [ ] Setup code must be executed first

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

**Setup Required:**
```python
self.temp_dir = tempfile.mkdtemp()
```

## Step-by-Step Guide

### Step 1: 'Test JSON save/load roundtrip.'

```python
'Test JSON save/load roundtrip.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test_video'}
```

### Step 3: Assign converter = VideoToSkillConverter(...)

```python
converter = VideoToSkillConverter(config)
```

### Step 4: Assign converter.result = VideoScraperResult(...)

```python
converter.result = VideoScraperResult(videos=[VideoInfo(video_id='test', source_type=VideoSourceType.YOUTUBE, title='Test')], total_duration_seconds=60.0)
```

### Step 5: Assign data_file = converter.save_extracted_data(...)

```python
data_file = converter.save_extracted_data()
```

### Step 6: Call self.assertTrue()

```python
self.assertTrue(os.path.isfile(data_file))
```

### Step 7: Assign converter2 = VideoToSkillConverter(...)

```python
converter2 = VideoToSkillConverter(config)
```

### Step 8: Call converter2.load_extracted_data()

```python
converter2.load_extracted_data(data_file)
```

### Step 9: Call self.assertEqual()

```python
self.assertEqual(len(converter2.result.videos), 1)
```

### Step 10: Call self.assertEqual()

```python
self.assertEqual(converter2.result.videos[0].title, 'Test')
```

### Step 11: Call os.unlink()

```python
os.unlink(data_file)
```


## Complete Example

```python
# Setup
self.temp_dir = tempfile.mkdtemp()

# Workflow
'Test JSON save/load roundtrip.'
from skill_seekers.cli.video_scraper import VideoToSkillConverter
from skill_seekers.cli.video_models import VideoScraperResult, VideoInfo, VideoSourceType
config = {'name': 'test_video'}
converter = VideoToSkillConverter(config)
converter.result = VideoScraperResult(videos=[VideoInfo(video_id='test', source_type=VideoSourceType.YOUTUBE, title='Test')], total_duration_seconds=60.0)
data_file = converter.save_extracted_data()
self.assertTrue(os.path.isfile(data_file))
converter2 = VideoToSkillConverter(config)
converter2.load_extracted_data(data_file)
self.assertEqual(len(converter2.result.videos), 1)
self.assertEqual(converter2.result.videos[0].title, 'Test')
os.unlink(data_file)
```

## Next Steps


---

*Source: test_video_scraper.py:848 | Complexity: Advanced | Last updated: 2026-03-29*