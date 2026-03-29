# How To: Format Skill Md Vectors Have Metadata

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Each vector has id and metadata fields.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `json`
- `pytest`
- `skill_seekers.cli.adaptors.base`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `sys`
- `types`
- `unittest.mock`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors.pinecone_adaptor`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `sys`
- `types`
- `unittest.mock`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors.weaviate`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.adaptors`
- `skill_seekers.cli.arguments.common`
- `skill_seekers.cli.arguments.create`
- `argparse`
- `skill_seekers.cli.arguments.common`
- `argparse`
- `skill_seekers.cli.arguments.common`
- `skill_seekers.cli.arguments.package`

**Setup Required:**
```python
# Fixtures: sample_skill_dir
```

## Step-by-Step Guide

### Step 1: 'Each vector has id and metadata fields.'

```python
'Each vector has id and metadata fields.'
```

**Verification:**
```python
assert len(data['vectors']) > 0
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

**Verification:**
```python
assert 'id' in vec
```

### Step 3: Assign metadata = SkillMetadata(...)

```python
metadata = SkillMetadata(name='test-skill', description='Test', doc_version='16.2')
```

**Verification:**
```python
assert 'metadata' in vec
```

### Step 4: Assign result = adaptor.format_skill_md(...)

```python
result = adaptor.format_skill_md(sample_skill_dir, metadata)
```

**Verification:**
```python
assert 'text' in vec['metadata']
```

### Step 5: Assign data = json.loads(...)

```python
data = json.loads(result)
```

**Verification:**
```python
assert 'source' in vec['metadata']
```


## Complete Example

```python
# Setup
# Fixtures: sample_skill_dir

# Workflow
'Each vector has id and metadata fields.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test', doc_version='16.2')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
assert len(data['vectors']) > 0
for vec in data['vectors']:
    assert 'id' in vec
    assert 'metadata' in vec
    assert 'text' in vec['metadata']
    assert 'source' in vec['metadata']
    assert 'category' in vec['metadata']
    assert 'file' in vec['metadata']
    assert 'type' in vec['metadata']
    assert 'version' in vec['metadata']
    assert 'doc_version' in vec['metadata']
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:133 | Complexity: Intermediate | Last updated: 2026-03-29*