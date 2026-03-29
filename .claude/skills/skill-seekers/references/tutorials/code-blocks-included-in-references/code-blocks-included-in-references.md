# How To: Code Blocks Included In References

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Code blocks are included in reference files.

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

### Step 1: 'Code blocks are included in reference files.'

```python
'Code blocks are included in reference files.'
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
converter.extracted_data = _make_sample_extracted_data(include_code=True)
```

### Step 6: Call converter.build_skill()

```python
converter.build_skill()
```

### Step 7: Assign ref_file = value

```python
ref_file = Path(self.temp_dir) / 'test_skill' / 'references' / 'test.md'
```

### Step 8: Assign content = ref_file.read_text(...)

```python
content = ref_file.read_text()
```

### Step 9: Call self.assertIn()

```python
self.assertIn('```python', content)
```

### Step 10: Call self.assertIn()

```python
self.assertIn('def hello_', content)
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
'Code blocks are included in reference files.'
config = {'name': 'test_skill', 'docx_path': 'test.docx'}
converter = self.WordToSkillConverter(config)
converter.skill_dir = str(Path(self.temp_dir) / 'test_skill')
converter.extracted_data = _make_sample_extracted_data(include_code=True)
converter.build_skill()
ref_file = Path(self.temp_dir) / 'test_skill' / 'references' / 'test.md'
content = ref_file.read_text()
self.assertIn('```python', content)
self.assertIn('def hello_', content)
```

## Next Steps


---

*Source: test_word_scraper.py:330 | Complexity: Advanced | Last updated: 2026-03-29*