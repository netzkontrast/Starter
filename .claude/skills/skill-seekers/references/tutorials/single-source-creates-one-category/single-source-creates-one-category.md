# How To: Single Source Creates One Category

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: test single source creates one category

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
config = {'name': 'test', 'epub_path': 'mybook.epub'}
```

### Step 2: Assign converter = EpubToSkillConverter(...)

```python
converter = EpubToSkillConverter(config)
```

### Step 3: Assign converter.extracted_data = _make_sample_extracted_data(...)

```python
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
```

### Step 4: Assign categories = converter.categorize_content(...)

```python
categories = converter.categorize_content()
```

### Step 5: Call self.assertEqual()

```python
self.assertEqual(len(categories), 1)
```

### Step 6: Call self.assertIn()

```python
self.assertIn('mybook', categories)
```


## Complete Example

```python
# Setup
if not IMPORT_OK:
    self.skipTest('epub_scraper not importable')
self.temp_dir = tempfile.mkdtemp()

# Workflow
config = {'name': 'test', 'epub_path': 'mybook.epub'}
converter = EpubToSkillConverter(config)
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
categories = converter.categorize_content()
self.assertEqual(len(categories), 1)
self.assertIn('mybook', categories)
```

## Next Steps


---

*Source: test_epub_scraper.py:528 | Complexity: Intermediate | Last updated: 2026-03-29*