# How To: Extract Images

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test extract images

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `json`
- `os`
- `shutil`
- `tempfile`
- `unittest`
- `pathlib`
- `unittest.mock`
- `ebooklib`
- `skill_seekers.cli.epub_scraper`
- `skill_seekers.cli.epub_scraper`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `bs4`
- `skill_seekers.cli.epub_scraper`
- `argparse`
- `skill_seekers.cli.arguments.epub`
- `bs4`
- `bs4`
- `bs4`
- `skill_seekers.cli.source_detector`

**Setup Required:**
```python
if not IMPORT_OK:
    self.skipTest('epub_scraper not importable')
if not EPUB_AVAILABLE:
    self.skipTest('ebooklib not installed')
self.temp_dir = tempfile.mkdtemp()
```

## Step-by-Step Guide

### Step 1: Assign images = value

```python
images = [{'media_type': 'image/png', 'data': b'\x89PNG', 'file_name': 'fig1.png'}]
```

### Step 2: Assign mock_book = self._make_mock_book(...)

```python
mock_book = self._make_mock_book(images=images)
```

### Step 3: Assign mock_epub.read_epub.return_value = mock_book

```python
mock_epub.read_epub.return_value = mock_book
```

### Step 4: Assign config = value

```python
config = {'name': 'test', 'epub_path': 'test.epub'}
```

### Step 5: Assign converter = EpubToSkillConverter(...)

```python
converter = EpubToSkillConverter(config)
```

### Step 6: Assign converter.data_file = os.path.join(...)

```python
converter.data_file = os.path.join(self.temp_dir, 'test_extracted.json')
```

### Step 7: Call converter.extract_epub()

```python
converter.extract_epub()
```

### Step 8: Call self.assertGreaterEqual()

```python
self.assertGreaterEqual(converter.extracted_data['total_images'], 1)
```


## Complete Example

```python
# Setup
if not IMPORT_OK:
    self.skipTest('epub_scraper not importable')
if not EPUB_AVAILABLE:
    self.skipTest('ebooklib not installed')
self.temp_dir = tempfile.mkdtemp()

# Workflow
images = [{'media_type': 'image/png', 'data': b'\x89PNG', 'file_name': 'fig1.png'}]
mock_book = self._make_mock_book(images=images)
mock_epub.read_epub.return_value = mock_book
config = {'name': 'test', 'epub_path': 'test.epub'}
converter = EpubToSkillConverter(config)
converter.data_file = os.path.join(self.temp_dir, 'test_extracted.json')
converter.extract_epub()
self.assertGreaterEqual(converter.extracted_data['total_images'], 1)
```

## Next Steps


---

*Source: test_epub_scraper.py:343 | Complexity: Advanced | Last updated: 2026-03-29*