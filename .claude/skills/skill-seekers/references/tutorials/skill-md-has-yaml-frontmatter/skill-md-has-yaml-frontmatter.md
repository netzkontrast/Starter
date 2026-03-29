# How To: Skill Md Has Yaml Frontmatter

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: SKILL.md starts with valid YAML frontmatter.

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

### Step 1: 'SKILL.md starts with valid YAML frontmatter.'

```python
'SKILL.md starts with valid YAML frontmatter.'
```

### Step 2: Assign config = value

```python
config = {'name': 'myskill', 'docx_path': 'doc.docx'}
```

### Step 3: Assign converter = self.WordToSkillConverter(...)

```python
converter = self.WordToSkillConverter(config)
```

### Step 4: Assign converter.skill_dir = str(...)

```python
converter.skill_dir = str(Path(self.temp_dir) / 'myskill')
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
skill_md = Path(self.temp_dir) / 'myskill' / 'SKILL.md'
```

### Step 8: Assign content = skill_md.read_text(...)

```python
content = skill_md.read_text()
```

### Step 9: Call self.assertTrue()

```python
self.assertTrue(content.startswith('---\n'))
```

### Step 10: Call self.assertIn()

```python
self.assertIn('name:', content)
```

### Step 11: Call self.assertIn()

```python
self.assertIn('description:', content)
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
'SKILL.md starts with valid YAML frontmatter.'
config = {'name': 'myskill', 'docx_path': 'doc.docx'}
converter = self.WordToSkillConverter(config)
converter.skill_dir = str(Path(self.temp_dir) / 'myskill')
converter.extracted_data = _make_sample_extracted_data()
converter.build_skill()
skill_md = Path(self.temp_dir) / 'myskill' / 'SKILL.md'
content = skill_md.read_text()
self.assertTrue(content.startswith('---\n'))
self.assertIn('name:', content)
self.assertIn('description:', content)
```

## Next Steps


---

*Source: test_word_scraper.py:286 | Complexity: Advanced | Last updated: 2026-03-29*