# How To: Build Skill From Loaded Data

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test build_skill works with pre-loaded result data.

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

### Step 1: 'Test build_skill works with pre-loaded result data.'

```python
'Test build_skill works with pre-loaded result data.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test_video', 'output': os.path.join(self.temp_dir, 'test_video')}
```

### Step 3: Assign converter = VideoToSkillConverter(...)

```python
converter = VideoToSkillConverter(config)
```

### Step 4: Assign converter.result = VideoScraperResult(...)

```python
converter.result = VideoScraperResult(videos=[VideoInfo(video_id='test123', source_type=VideoSourceType.YOUTUBE, source_url='https://youtube.com/watch?v=test123', title='Test Video', description='A test video.', duration=120.0, channel_name='Test', view_count=1000, transcript_source=TranscriptSource.YOUTUBE_MANUAL, segments=[VideoSegment(index=0, start_time=0.0, end_time=60.0, duration=60.0, transcript='Hello world test content.', chapter_title='Intro', content='### Intro (00:00 - 01:00)\n\nHello world test content.', content_type=SegmentContentType.INTRO, confidence=0.9), VideoSegment(index=1, start_time=60.0, end_time=120.0, duration=60.0, transcript='Main content here.', chapter_title='Main', content='### Main (01:00 - 02:00)\n\nMain content here.', content_type=SegmentContentType.EXPLANATION, confidence=0.9)])], total_duration_seconds=120.0, total_segments=2)
```

### Step 5: Assign skill_dir = converter.build_skill(...)

```python
skill_dir = converter.build_skill()
```

### Step 6: Call self.assertTrue()

```python
self.assertTrue(os.path.isdir(skill_dir))
```

### Step 7: Call self.assertTrue()

```python
self.assertTrue(os.path.isfile(os.path.join(skill_dir, 'SKILL.md')))
```

### Step 8: Call self.assertTrue()

```python
self.assertTrue(os.path.isdir(os.path.join(skill_dir, 'references')))
```

### Step 9: Call self.assertTrue()

```python
self.assertTrue(os.path.isdir(os.path.join(skill_dir, 'video_data')))
```

### Step 10: Call self.assertIn()

```python
self.assertIn('Test Video', skill_content)
```

### Step 11: Call self.assertIn()

```python
self.assertIn('Video Tutorials', skill_content)
```

### Step 12: Assign skill_content = f.read(...)

```python
skill_content = f.read()
```


## Complete Example

```python
# Setup
self.temp_dir = tempfile.mkdtemp()

# Workflow
'Test build_skill works with pre-loaded result data.'
from skill_seekers.cli.video_scraper import VideoToSkillConverter
from skill_seekers.cli.video_models import VideoScraperResult, VideoInfo, VideoSourceType, TranscriptSource, VideoSegment, SegmentContentType
config = {'name': 'test_video', 'output': os.path.join(self.temp_dir, 'test_video')}
converter = VideoToSkillConverter(config)
converter.result = VideoScraperResult(videos=[VideoInfo(video_id='test123', source_type=VideoSourceType.YOUTUBE, source_url='https://youtube.com/watch?v=test123', title='Test Video', description='A test video.', duration=120.0, channel_name='Test', view_count=1000, transcript_source=TranscriptSource.YOUTUBE_MANUAL, segments=[VideoSegment(index=0, start_time=0.0, end_time=60.0, duration=60.0, transcript='Hello world test content.', chapter_title='Intro', content='### Intro (00:00 - 01:00)\n\nHello world test content.', content_type=SegmentContentType.INTRO, confidence=0.9), VideoSegment(index=1, start_time=60.0, end_time=120.0, duration=60.0, transcript='Main content here.', chapter_title='Main', content='### Main (01:00 - 02:00)\n\nMain content here.', content_type=SegmentContentType.EXPLANATION, confidence=0.9)])], total_duration_seconds=120.0, total_segments=2)
skill_dir = converter.build_skill()
self.assertTrue(os.path.isdir(skill_dir))
self.assertTrue(os.path.isfile(os.path.join(skill_dir, 'SKILL.md')))
self.assertTrue(os.path.isdir(os.path.join(skill_dir, 'references')))
self.assertTrue(os.path.isdir(os.path.join(skill_dir, 'video_data')))
with open(os.path.join(skill_dir, 'SKILL.md'), encoding='utf-8') as f:
    skill_content = f.read()
self.assertIn('Test Video', skill_content)
self.assertIn('Video Tutorials', skill_content)
```

## Next Steps


---

*Source: test_video_scraper.py:775 | Complexity: Advanced | Last updated: 2026-03-29*