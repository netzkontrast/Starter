# How To: Format Skill Md Empty Doc Version

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Empty doc_version is preserved as empty string.

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

### Step 1: 'Empty doc_version is preserved as empty string.'

```python
'Empty doc_version is preserved as empty string.'
```

**Verification:**
```python
assert vec['metadata']['doc_version'] == ''
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

### Step 3: Assign metadata = SkillMetadata(...)

```python
metadata = SkillMetadata(name='test-skill', description='Test', doc_version='')
```

### Step 4: Assign result = adaptor.format_skill_md(...)

```python
result = adaptor.format_skill_md(sample_skill_dir, metadata)
```

### Step 5: Assign data = json.loads(...)

```python
data = json.loads(result)
```

**Verification:**
```python
assert vec['metadata']['doc_version'] == ''
```


## Complete Example

```python
# Setup
# Fixtures: sample_skill_dir

# Workflow
'Empty doc_version is preserved as empty string.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test', doc_version='')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
for vec in data['vectors']:
    assert vec['metadata']['doc_version'] == ''
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:174 | Complexity: Intermediate | Last updated: 2026-03-29*