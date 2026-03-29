# How To: Chunk Overlap Scales With Chunk Size

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: Test that overlap auto-scales when chunk_tokens is non-default but overlap is default.

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

### Step 1: 'Test that overlap auto-scales when chunk_tokens is non-default but overlap is default.'

```python
'Test that overlap auto-scales when chunk_tokens is non-default but overlap is default.'
```

**Verification:**
```python
assert len(chunks_default) > 1
```

### Step 2: Assign adaptor = get_adaptor(...)

```python
adaptor = get_adaptor('langchain')
```

**Verification:**
```python
assert len(chunks_large) >= 1
```

### Step 3: Assign skill_dir = create_test_skill(...)

```python
skill_dir = create_test_skill(tmp_path, large_doc=True)
```

### Step 4: Call adaptor._build_skill_metadata()

```python
adaptor._build_skill_metadata(skill_dir)
```

### Step 5: Assign content = unknown.read_text(...)

```python
content = (skill_dir / 'SKILL.md').read_text()
```

### Step 6: Assign chunks_default = adaptor._maybe_chunk_content(...)

```python
chunks_default = adaptor._maybe_chunk_content(content, {'source': 'test'}, enable_chunking=True, chunk_max_tokens=DEFAULT_CHUNK_TOKENS, chunk_overlap_tokens=DEFAULT_CHUNK_OVERLAP_TOKENS)
```

### Step 7: Assign chunks_large = adaptor._maybe_chunk_content(...)

```python
chunks_large = adaptor._maybe_chunk_content(content, {'source': 'test'}, enable_chunking=True, chunk_max_tokens=1024, chunk_overlap_tokens=DEFAULT_CHUNK_OVERLAP_TOKENS)
```

**Verification:**
```python
assert len(chunks_default) > 1
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Test that overlap auto-scales when chunk_tokens is non-default but overlap is default.'
from skill_seekers.cli.adaptors.base import DEFAULT_CHUNK_TOKENS, DEFAULT_CHUNK_OVERLAP_TOKENS
adaptor = get_adaptor('langchain')
skill_dir = create_test_skill(tmp_path, large_doc=True)
adaptor._build_skill_metadata(skill_dir)
content = (skill_dir / 'SKILL.md').read_text()
chunks_default = adaptor._maybe_chunk_content(content, {'source': 'test'}, enable_chunking=True, chunk_max_tokens=DEFAULT_CHUNK_TOKENS, chunk_overlap_tokens=DEFAULT_CHUNK_OVERLAP_TOKENS)
chunks_large = adaptor._maybe_chunk_content(content, {'source': 'test'}, enable_chunking=True, chunk_max_tokens=1024, chunk_overlap_tokens=DEFAULT_CHUNK_OVERLAP_TOKENS)
assert len(chunks_default) > 1
assert len(chunks_large) >= 1
```

## Next Steps


---

*Source: test_chunking_integration.py:406 | Complexity: Intermediate | Last updated: 2026-03-29*