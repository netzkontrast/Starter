# How To: Single Docx Creates Single Category

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: With docx_path set, categorize_content creates a single category.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `json`
- `os`
- `shutil`
- `tempfile`
- `unittest`
- `pathlib`
- `mammoth`
- `docx`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `sys`
- `pathlib`
- `skill_seekers.cli.main`
- `skill_seekers.cli.word_scraper`
- `bs4`
- `skill_seekers.cli.word_scraper`
- `bs4`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.word_scraper`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`
- `skill_seekers.cli.source_detector`

**Setup Required:**
```python
if not WORD_AVAILABLE:
    self.skipTest('mammoth and python-docx not installed')
from skill_seekers.cli.word_scraper import WordToSkillConverter
self.WordToSkillConverter = WordToSkillConverter
self.temp_dir = tempfile.mkdtemp()
```

## Step-by-Step Guide

### Step 1: 'With docx_path set, categorize_content creates a single category.'

```python
'With docx_path set, categorize_content creates a single category.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'docx_path': 'test.docx'}
```

### Step 3: Assign converter = self.WordToSkillConverter(...)

```python
converter = self.WordToSkillConverter(config)
```

### Step 4: Assign converter.extracted_data = _make_sample_extracted_data(...)

```python
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
```

### Step 5: Assign categories = converter.categorize_content(...)

```python
categories = converter.categorize_content()
```

### Step 6: Call self.assertEqual()

```python
self.assertEqual(len(categories), 1)
```

### Step 7: Call self.assertIn()

```python
self.assertIn('test', categories)
```

### Step 8: Call self.assertEqual()

```python
self.assertEqual(len(categories['test']['pages']), 3)
```


## Complete Example

```python
# Setup
if not WORD_AVAILABLE:
    self.skipTest('mammoth and python-docx not installed')
from skill_seekers.cli.word_scraper import WordToSkillConverter
self.WordToSkillConverter = WordToSkillConverter
self.temp_dir = tempfile.mkdtemp()

# Workflow
'With docx_path set, categorize_content creates a single category.'
config = {'name': 'test', 'docx_path': 'test.docx'}
converter = self.WordToSkillConverter(config)
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
categories = converter.categorize_content()
self.assertEqual(len(categories), 1)
self.assertIn('test', categories)
self.assertEqual(len(categories['test']['pages']), 3)
```

## Next Steps


---

*Source: test_word_scraper.py:161 | Complexity: Advanced | Last updated: 2026-03-29*