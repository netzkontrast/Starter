# How To: Format Skill Md Has Overview And References

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: Output includes overview (SKILL.md) and reference documents.

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

### Step 1: 'Output includes overview (SKILL.md) and reference documents.'

```python
'Output includes overview (SKILL.md) and reference documents.'
```

**Verification:**
```python
assert 'overview' in categories
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

**Verification:**
```python
assert 'documentation' in types
```

### Step 3: Assign metadata = SkillMetadata(...)

```python
metadata = SkillMetadata(name='test-skill', description='Test')
```

**Verification:**
```python
assert 'reference' in types
```

### Step 4: Assign result = adaptor.format_skill_md(...)

```python
result = adaptor.format_skill_md(sample_skill_dir, metadata)
```

### Step 5: Assign data = json.loads(...)

```python
data = json.loads(result)
```

### Step 6: Assign categories = value

```python
categories = {vec['metadata']['category'] for vec in data['vectors']}
```

### Step 7: Assign types = value

```python
types = {vec['metadata']['type'] for vec in data['vectors']}
```

**Verification:**
```python
assert 'overview' in categories
```


## Complete Example

```python
# Setup
# Fixtures: sample_skill_dir

# Workflow
'Output includes overview (SKILL.md) and reference documents.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
categories = {vec['metadata']['category'] for vec in data['vectors']}
types = {vec['metadata']['type'] for vec in data['vectors']}
assert 'overview' in categories
assert 'documentation' in types
assert 'reference' in types
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:186 | Complexity: Intermediate | Last updated: 2026-03-29*