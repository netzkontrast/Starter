# How To: Converter

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: pytest, workflow, integration

## Overview

Workflow: Create a converter with tmp output directory.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `logging`
- `os`
- `pytest`
- `skill_seekers.cli.doc_scraper`

**Setup Required:**
```python
# Fixtures: tmp_path
```

## Step-by-Step Guide

### Step 1: 'Create a converter with tmp output directory.'

```python
'Create a converter with tmp output directory.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test-site', 'base_url': 'https://example.com', 'selectors': {'title': 'title', 'code_blocks': 'pre code'}, 'url_patterns': {'include': [], 'exclude': []}, 'rate_limit': 0, 'max_pages': 100}
```

### Step 3: Assign conv = DocToSkillConverter(...)

```python
conv = DocToSkillConverter(config)
```

### Step 4: Assign conv.data_dir = str(...)

```python
conv.data_dir = str(tmp_path / 'test-site_data')
```

### Step 5: Assign conv.skill_dir = str(...)

```python
conv.skill_dir = str(tmp_path / 'test-site')
```

### Step 6: Call os.makedirs()

```python
os.makedirs(os.path.join(conv.data_dir, 'pages'), exist_ok=True)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Create a converter with tmp output directory.'
config = {'name': 'test-site', 'base_url': 'https://example.com', 'selectors': {'title': 'title', 'code_blocks': 'pre code'}, 'url_patterns': {'include': [], 'exclude': []}, 'rate_limit': 0, 'max_pages': 100}
conv = DocToSkillConverter(config)
conv.data_dir = str(tmp_path / 'test-site_data')
conv.skill_dir = str(tmp_path / 'test-site')
os.makedirs(os.path.join(conv.data_dir, 'pages'), exist_ok=True)
return conv
```

## Next Steps


---

*Source: test_scrape_count.py:12 | Complexity: Intermediate | Last updated: 2026-03-29*