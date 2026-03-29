# How To: Build Skill Creates Skill Md

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: build_skill creates SKILL.md with correct content.

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

### Step 1: 'build_skill creates SKILL.md with correct content.'

```python
'build_skill creates SKILL.md with correct content.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test_skill', 'docx_path': 'test.docx', 'description': 'Test description for docs'}
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
converter.extracted_data = _make_sample_extracted_data()
```

### Step 6: Call converter.build_skill()

```python
converter.build_skill()
```

### Step 7: Assign skill_md = value

```python
skill_md = Path(self.temp_dir) / 'test_skill' / 'SKILL.md'
```

### Step 8: Call self.assertTrue()

```python
self.assertTrue(skill_md.exists())
```

### Step 9: Assign content = skill_md.read_text(...)

```python
content = skill_md.read_text()
```

### Step 10: Call self.assertIn()

```python
self.assertIn('test_skill', content)
```

### Step 11: Call self.assertIn()

```python
self.assertIn('Test description for docs', content)
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
'build_skill creates SKILL.md with correct content.'
config = {'name': 'test_skill', 'docx_path': 'test.docx', 'description': 'Test description for docs'}
converter = self.WordToSkillConverter(config)
converter.skill_dir = str(Path(self.temp_dir) / 'test_skill')
converter.extracted_data = _make_sample_extracted_data()
converter.build_skill()
skill_md = Path(self.temp_dir) / 'test_skill' / 'SKILL.md'
self.assertTrue(skill_md.exists())
content = skill_md.read_text()
self.assertIn('test_skill', content)
self.assertIn('Test description for docs', content)
```

## Next Steps


---

*Source: test_word_scraper.py:252 | Complexity: Advanced | Last updated: 2026-03-29*