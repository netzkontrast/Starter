# How To: Format Skill Md

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: workflow, integration

## Overview

Workflow: Test formatting SKILL.md as Haystack Documents.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `json`
- `pytest`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors.base`

**Setup Required:**
```python
# Fixtures: tmp_path
```

## Step-by-Step Guide

### Step 1: 'Test formatting SKILL.md as Haystack Documents.'

```python
'Test formatting SKILL.md as Haystack Documents.'
```

**Verification:**
```python
assert len(documents) == 3
```

### Step 2: Assign skill_dir = value

```python
skill_dir = tmp_path / 'test_skill'
```

**Verification:**
```python
assert 'content' in doc
```

### Step 3: Call skill_dir.mkdir()

```python
skill_dir.mkdir()
```

**Verification:**
```python
assert 'meta' in doc
```

### Step 4: Assign skill_md = value

```python
skill_md = skill_dir / 'SKILL.md'
```

**Verification:**
```python
assert doc['meta']['source'] == 'test_skill'
```

### Step 5: Call skill_md.write_text()

```python
skill_md.write_text('# Test Skill\n\nThis is a test skill for Haystack format.')
```

**Verification:**
```python
assert doc['meta']['version'] == '1.0.0'
```

### Step 6: Assign refs_dir = value

```python
refs_dir = skill_dir / 'references'
```

**Verification:**
```python
assert 'category' in doc['meta']
```

### Step 7: Call refs_dir.mkdir()

```python
refs_dir.mkdir()
```

**Verification:**
```python
assert 'file' in doc['meta']
```

### Step 8: Call unknown.write_text()

```python
(refs_dir / 'getting_started.md').write_text('# Getting Started\n\nQuick start.')
```

**Verification:**
```python
assert 'type' in doc['meta']
```

### Step 9: Call unknown.write_text()

```python
(refs_dir / 'api.md').write_text('# API Reference\n\nAPI docs.')
```

**Verification:**
```python
assert 'overview' in categories
```

### Step 10: Assign adaptor = get_adaptor(...)

```python
adaptor = get_adaptor('haystack')
```

**Verification:**
```python
assert 'getting started' in categories or 'api' in categories
```

### Step 11: Assign metadata = SkillMetadata(...)

```python
metadata = SkillMetadata(name='test_skill', description='Test skill', version='1.0.0')
```

### Step 12: Assign documents_json = adaptor.format_skill_md(...)

```python
documents_json = adaptor.format_skill_md(skill_dir, metadata)
```

### Step 13: Assign documents = json.loads(...)

```python
documents = json.loads(documents_json)
```

**Verification:**
```python
assert len(documents) == 3
```

### Step 14: Assign categories = value

```python
categories = {doc['meta']['category'] for doc in documents}
```

**Verification:**
```python
assert 'overview' in categories
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Test formatting SKILL.md as Haystack Documents.'
skill_dir = tmp_path / 'test_skill'
skill_dir.mkdir()
skill_md = skill_dir / 'SKILL.md'
skill_md.write_text('# Test Skill\n\nThis is a test skill for Haystack format.')
refs_dir = skill_dir / 'references'
refs_dir.mkdir()
(refs_dir / 'getting_started.md').write_text('# Getting Started\n\nQuick start.')
(refs_dir / 'api.md').write_text('# API Reference\n\nAPI docs.')
adaptor = get_adaptor('haystack')
metadata = SkillMetadata(name='test_skill', description='Test skill', version='1.0.0')
documents_json = adaptor.format_skill_md(skill_dir, metadata)
documents = json.loads(documents_json)
assert len(documents) == 3
for doc in documents:
    assert 'content' in doc
    assert 'meta' in doc
    assert doc['meta']['source'] == 'test_skill'
    assert doc['meta']['version'] == '1.0.0'
    assert 'category' in doc['meta']
    assert 'file' in doc['meta']
    assert 'type' in doc['meta']
categories = {doc['meta']['category'] for doc in documents}
assert 'overview' in categories
assert 'getting started' in categories or 'api' in categories
```

## Next Steps


---

*Source: test_haystack_adaptor.py:23 | Complexity: Advanced | Last updated: 2026-03-29*