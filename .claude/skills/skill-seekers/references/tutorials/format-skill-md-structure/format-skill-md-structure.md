# How To: Format Skill Md Structure

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: format_skill_md returns valid JSON with expected structure.

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

### Step 1: 'format_skill_md returns valid JSON with expected structure.'

```python
'format_skill_md returns valid JSON with expected structure.'
```

**Verification:**
```python
assert 'index_name' in data
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

**Verification:**
```python
assert 'namespace' in data
```

### Step 3: Assign metadata = SkillMetadata(...)

```python
metadata = SkillMetadata(name='test-skill', description='Test skill', version='1.0.0', doc_version='16.2')
```

**Verification:**
```python
assert 'dimension' in data
```

### Step 4: Assign result = adaptor.format_skill_md(...)

```python
result = adaptor.format_skill_md(sample_skill_dir, metadata)
```

**Verification:**
```python
assert 'metric' in data
```

### Step 5: Assign data = json.loads(...)

```python
data = json.loads(result)
```

**Verification:**
```python
assert 'vectors' in data
```


## Complete Example

```python
# Setup
# Fixtures: sample_skill_dir

# Workflow
'format_skill_md returns valid JSON with expected structure.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test skill', version='1.0.0', doc_version='16.2')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
assert 'index_name' in data
assert 'namespace' in data
assert 'dimension' in data
assert 'metric' in data
assert 'vectors' in data
assert data['dimension'] == 1536
assert data['metric'] == 'cosine'
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:111 | Complexity: Intermediate | Last updated: 2026-03-29*