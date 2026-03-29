# How To: Chunk Overlap Tokens Parameter

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Test --chunk-overlap-tokens controls RAGChunker overlap.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `pytest`
- `json`
- `pathlib`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.package_skill`
- `skill_seekers.cli.adaptors.langchain`
- `skill_seekers.cli.adaptors.langchain`
- `skill_seekers.cli.adaptors.langchain`
- `skill_seekers.cli.package_skill`
- `skill_seekers.cli.package_skill`
- `skill_seekers.cli.package_skill`
- `skill_seekers.cli.adaptors.base`
- `skill_seekers.cli.package_skill`

**Setup Required:**
```python
# Fixtures: tmp_path
```

## Step-by-Step Guide

### Step 1: 'Test --chunk-overlap-tokens controls RAGChunker overlap.'

```python
'Test --chunk-overlap-tokens controls RAGChunker overlap.'
```

**Verification:**
```python
assert success
```

### Step 2: Assign skill_dir = create_test_skill(...)

```python
skill_dir = create_test_skill(tmp_path, large_doc=True)
```

**Verification:**
```python
assert package_path.exists()
```

### Step 3: Assign unknown = package_skill(...)

```python
success, package_path = package_skill(skill_dir=skill_dir, open_folder_after=False, skip_quality_check=True, target='langchain', enable_chunking=True, chunk_max_tokens=256, chunk_overlap_tokens=50)
```

**Verification:**
```python
assert success2
```

### Step 4: Assign unknown = package_skill(...)

```python
success2, package_path2 = package_skill(skill_dir=skill_dir, open_folder_after=False, skip_quality_check=True, target='langchain', enable_chunking=True, chunk_max_tokens=256, chunk_overlap_tokens=128)
```

**Verification:**
```python
assert package_path2.exists()
```

### Step 5: Assign data_default = json.load(...)

```python
data_default = json.load(f)
```

**Verification:**
```python
assert len(data_large_overlap) >= len(data_default), f'Large overlap ({len(data_large_overlap)}) should produce >= chunks than default ({len(data_default)})'
```

### Step 6: Assign data_large_overlap = json.load(...)

```python
data_large_overlap = json.load(f)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Test --chunk-overlap-tokens controls RAGChunker overlap.'
from skill_seekers.cli.package_skill import package_skill
skill_dir = create_test_skill(tmp_path, large_doc=True)
success, package_path = package_skill(skill_dir=skill_dir, open_folder_after=False, skip_quality_check=True, target='langchain', enable_chunking=True, chunk_max_tokens=256, chunk_overlap_tokens=50)
assert success
assert package_path.exists()
with open(package_path) as f:
    data_default = json.load(f)
success2, package_path2 = package_skill(skill_dir=skill_dir, open_folder_after=False, skip_quality_check=True, target='langchain', enable_chunking=True, chunk_max_tokens=256, chunk_overlap_tokens=128)
assert success2
assert package_path2.exists()
with open(package_path2) as f:
    data_large_overlap = json.load(f)
assert len(data_large_overlap) >= len(data_default), f'Large overlap ({len(data_large_overlap)}) should produce >= chunks than default ({len(data_default)})'
```

## Next Steps


---

*Source: test_chunking_integration.py:361 | Complexity: Intermediate | Last updated: 2026-03-29*