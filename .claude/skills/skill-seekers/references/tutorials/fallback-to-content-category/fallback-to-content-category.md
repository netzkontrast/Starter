# How To: Fallback To Content Category

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Without docx_path and no categories config, uses 'content' category.

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

### Step 1: "Without docx_path and no categories config, uses 'content' category."

```python
"Without docx_path and no categories config, uses 'content' category."
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'docx_path': ''}
```

### Step 3: Assign converter = self.WordToSkillConverter(...)

```python
converter = self.WordToSkillConverter(config)
```

### Step 4: Assign converter.docx_path = ''

```python
converter.docx_path = ''
```

### Step 5: Assign converter.extracted_data = _make_sample_extracted_data(...)

```python
converter.extracted_data = _make_sample_extracted_data(num_sections=1)
```

### Step 6: Assign categories = converter.categorize_content(...)

```python
categories = converter.categorize_content()
```

### Step 7: Call self.assertIsInstance()

```python
self.assertIsInstance(categories, dict)
```

### Step 8: Call self.assertGreater()

```python
self.assertGreater(len(categories), 0)
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
"Without docx_path and no categories config, uses 'content' category."
config = {'name': 'test', 'docx_path': ''}
converter = self.WordToSkillConverter(config)
converter.docx_path = ''
converter.extracted_data = _make_sample_extracted_data(num_sections=1)
categories = converter.categorize_content()
self.assertIsInstance(categories, dict)
self.assertGreater(len(categories), 0)
```

## Next Steps


---

*Source: test_word_scraper.py:211 | Complexity: Advanced | Last updated: 2026-03-29*