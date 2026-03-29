# How To: Skill Md Includes Section Overview

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: SKILL.md includes a Section Overview.

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

### Step 1: 'SKILL.md includes a Section Overview.'

```python
'SKILL.md includes a Section Overview.'
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
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
```

### Step 6: Call converter.build_skill()

```python
converter.build_skill()
```

### Step 7: Assign skill_md = value

```python
skill_md = Path(self.temp_dir) / 'test_skill' / 'SKILL.md'
```

### Step 8: Assign content = skill_md.read_text(...)

```python
content = skill_md.read_text()
```

### Step 9: Call self.assertIn()

```python
self.assertIn('Section Overview', content)
```

### Step 10: Call self.assertIn()

```python
self.assertIn('Total Sections', content)
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
'SKILL.md includes a Section Overview.'
config = {'name': 'test_skill', 'docx_path': 'test.docx'}
converter = self.WordToSkillConverter(config)
converter.skill_dir = str(Path(self.temp_dir) / 'test_skill')
converter.extracted_data = _make_sample_extracted_data(num_sections=3)
converter.build_skill()
skill_md = Path(self.temp_dir) / 'test_skill' / 'SKILL.md'
content = skill_md.read_text()
self.assertIn('Section Overview', content)
self.assertIn('Total Sections', content)
```

## Next Steps


---

*Source: test_word_scraper.py:301 | Complexity: Advanced | Last updated: 2026-03-29*