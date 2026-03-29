# How To: Extract Basic Epub

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test extract basic epub

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

### Step 1: Assign mock_book = self._make_mock_book(...)

```python
mock_book = self._make_mock_book()
```

### Step 2: Assign mock_epub.read_epub.return_value = mock_book

```python
mock_epub.read_epub.return_value = mock_book
```

### Step 3: Assign config = value

```python
config = {'name': 'test', 'epub_path': 'test.epub'}
```

### Step 4: Assign converter = EpubToSkillConverter(...)

```python
converter = EpubToSkillConverter(config)
```

### Step 5: Assign converter.data_file = os.path.join(...)

```python
converter.data_file = os.path.join(self.temp_dir, 'test_extracted.json')
```

### Step 6: Assign result = converter.extract_epub(...)

```python
result = converter.extract_epub()
```

### Step 7: Call self.assertTrue()

```python
self.assertTrue(result)
```

### Step 8: Call self.assertIsNotNone()

```python
self.assertIsNotNone(converter.extracted_data)
```

### Step 9: Call self.assertGreaterEqual()

```python
self.assertGreaterEqual(len(converter.extracted_data['pages']), 1)
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
mock_book = self._make_mock_book()
mock_epub.read_epub.return_value = mock_book
config = {'name': 'test', 'epub_path': 'test.epub'}
converter = EpubToSkillConverter(config)
converter.data_file = os.path.join(self.temp_dir, 'test_extracted.json')
result = converter.extract_epub()
self.assertTrue(result)
self.assertIsNotNone(converter.extracted_data)
self.assertGreaterEqual(len(converter.extracted_data['pages']), 1)
```

## Next Steps


---

*Source: test_epub_scraper.py:267 | Complexity: Advanced | Last updated: 2026-03-29*