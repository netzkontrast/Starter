# How To: Build Skill Creates Reference Files

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: build_skill creates reference markdown files.

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

### Step 1: 'build_skill creates reference markdown files.'

```python
'build_skill creates reference markdown files.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test_skill', 'docx_path': 'test.docx'}
```

### Step 3: Assign converter = self.WordToSkillConverter(...)

```python
converter = self.WordToSkillConverter(config)
```

### Step 4: Assign converter.skill_dir = str(...)

```python
converter.skill_dir = str(Path(self.temp_dir) / 'test_skill')
```

### Step 5: Assign converter.extracted_data = _make_sample_extracted_data(...)

```python
converter.extracted_data = _make_sample_extracted_data(num_sections=2)
```

### Step 6: Call converter.build_skill()

```python
converter.build_skill()
```

### Step 7: Assign refs_dir = value

```python
refs_dir = Path(self.temp_dir) / 'test_skill' / 'references'
```

### Step 8: Call self.assertTrue()

```python
self.assertTrue((refs_dir / 'test.md').exists())
```

### Step 9: Call self.assertTrue()

```python
self.assertTrue((refs_dir / 'index.md').exists())
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
'build_skill creates reference markdown files.'
config = {'name': 'test_skill', 'docx_path': 'test.docx'}
converter = self.WordToSkillConverter(config)
converter.skill_dir = str(Path(self.temp_dir) / 'test_skill')
converter.extracted_data = _make_sample_extracted_data(num_sections=2)
converter.build_skill()
refs_dir = Path(self.temp_dir) / 'test_skill' / 'references'
self.assertTrue((refs_dir / 'test.md').exists())
self.assertTrue((refs_dir / 'index.md').exists())
```

## Next Steps


---

*Source: test_word_scraper.py:272 | Complexity: Advanced | Last updated: 2026-03-29*