# How To: Package Creates Json

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: Test packaging skill into JSON file.

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

### Step 1: 'Test packaging skill into JSON file.'

```python
'Test packaging skill into JSON file.'
```

**Verification:**
```python
assert output_path.exists()
```

### Step 2: Assign skill_dir = value

```python
skill_dir = tmp_path / 'test_skill'
```

**Verification:**
```python
assert output_path.suffix == '.json'
```

### Step 3: Call skill_dir.mkdir()

```python
skill_dir.mkdir()
```

**Verification:**
```python
assert 'haystack' in output_path.name
```

### Step 4: Call unknown.write_text()

```python
(skill_dir / 'SKILL.md').write_text('# Test\n\nTest content.')
```

**Verification:**
```python
assert isinstance(documents, list)
```

### Step 5: Assign adaptor = get_adaptor(...)

```python
adaptor = get_adaptor('haystack')
```

**Verification:**
```python
assert len(documents) > 0
```

### Step 6: Assign output_path = adaptor.package(...)

```python
output_path = adaptor.package(skill_dir, tmp_path)
```

**Verification:**
```python
assert 'content' in documents[0]
```

### Step 7: Assign documents = json.load(...)

```python
documents = json.load(f)
```

**Verification:**
```python
assert 'meta' in documents[0]
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Test packaging skill into JSON file.'
skill_dir = tmp_path / 'test_skill'
skill_dir.mkdir()
(skill_dir / 'SKILL.md').write_text('# Test\n\nTest content.')
adaptor = get_adaptor('haystack')
output_path = adaptor.package(skill_dir, tmp_path)
assert output_path.exists()
assert output_path.suffix == '.json'
assert 'haystack' in output_path.name
with open(output_path) as f:
    documents = json.load(f)
assert isinstance(documents, list)
assert len(documents) > 0
assert 'content' in documents[0]
assert 'meta' in documents[0]
```

## Next Steps


---

*Source: test_haystack_adaptor.py:65 | Complexity: Intermediate | Last updated: 2026-03-29*