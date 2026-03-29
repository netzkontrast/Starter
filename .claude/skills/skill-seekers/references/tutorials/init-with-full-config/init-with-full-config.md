# How To: Init With Full Config

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test init with full config

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
self.temp_dir = tempfile.mkdtemp()
```

## Step-by-Step Guide

### Step 1: Assign config = value

```python
config = {'name': 'mybook', 'epub_path': '/path/to/book.epub', 'description': 'Custom description', 'categories': {'ch1': ['intro']}}
```

### Step 2: Assign converter = EpubToSkillConverter(...)

```python
converter = EpubToSkillConverter(config)
```

### Step 3: Call self.assertEqual()

```python
self.assertEqual(converter.name, 'mybook')
```

### Step 4: Call self.assertEqual()

```python
self.assertEqual(converter.epub_path, '/path/to/book.epub')
```

### Step 5: Call self.assertEqual()

```python
self.assertEqual(converter.description, 'Custom description')
```

### Step 6: Call self.assertEqual()

```python
self.assertEqual(converter.categories, {'ch1': ['intro']})
```


## Complete Example

```python
# Setup
if not IMPORT_OK:
    self.skipTest('epub_scraper not importable')
self.temp_dir = tempfile.mkdtemp()

# Workflow
config = {'name': 'mybook', 'epub_path': '/path/to/book.epub', 'description': 'Custom description', 'categories': {'ch1': ['intro']}}
converter = EpubToSkillConverter(config)
self.assertEqual(converter.name, 'mybook')
self.assertEqual(converter.epub_path, '/path/to/book.epub')
self.assertEqual(converter.description, 'Custom description')
self.assertEqual(converter.categories, {'ch1': ['intro']})
```

## Next Steps


---

*Source: test_epub_scraper.py:137 | Complexity: Intermediate | Last updated: 2026-03-29*