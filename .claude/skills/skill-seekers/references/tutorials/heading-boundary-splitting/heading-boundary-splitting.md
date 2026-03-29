# How To: Heading Boundary Splitting

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test heading boundary splitting

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

### Step 1: Assign spine = value

```python
spine = [('ch1', '<html><body><h1>First Heading</h1><p>First content</p><h2>Second Heading</h2><p>Second content</p></body></html>')]
```

### Step 2: Assign mock_book = self._make_mock_book(...)

```python
mock_book = self._make_mock_book(spine_content=spine)
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

### Step 8: Assign pages = value

```python
pages = converter.extracted_data['pages']
```

### Step 9: Call self.assertEqual()

```python
self.assertEqual(len(pages), 2)
```

### Step 10: Call self.assertEqual()

```python
self.assertEqual(pages[0]['heading'], 'First Heading')
```

### Step 11: Call self.assertEqual()

```python
self.assertEqual(pages[1]['heading'], 'Second Heading')
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
spine = [('ch1', '<html><body><h1>First Heading</h1><p>First content</p><h2>Second Heading</h2><p>Second content</p></body></html>')]
mock_book = self._make_mock_book(spine_content=spine)
mock_epub.read_epub.return_value = mock_book
config = {'name': 'test', 'epub_path': 'test.epub'}
converter = EpubToSkillConverter(config)
converter.data_file = os.path.join(self.temp_dir, 'test_extracted.json')
converter.extract_epub()
pages = converter.extracted_data['pages']
self.assertEqual(len(pages), 2)
self.assertEqual(pages[0]['heading'], 'First Heading')
self.assertEqual(pages[1]['heading'], 'Second Heading')
```

## Next Steps


---

*Source: test_epub_scraper.py:358 | Complexity: Advanced | Last updated: 2026-03-29*