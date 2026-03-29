# How To: Embedding Before Index Creation

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: If embedding generation fails, index is never created (no side-effects).

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
# Fixtures: tmp_path, monkeypatch
```

## Step-by-Step Guide

### Step 1: 'If embedding generation fails, index is never created (no side-effects).'

```python
'If embedding generation fails, index is never created (no side-effects).'
```

**Verification:**
```python
assert result['success'] is False
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

### Step 3: Assign unknown = self._make_mock_pinecone(...)

```python
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
```

### Step 4: Call monkeypatch.setattr()

```python
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', fail_embeddings)
```

### Step 5: Assign pkg = self._make_package(...)

```python
pkg = self._make_package(tmp_path)
```

### Step 6: Assign result = adaptor.upload(...)

```python
result = adaptor.upload(pkg, api_key='fake-key')
```

**Verification:**
```python
assert result['success'] is False
```

### Step 7: Call mock_pc.create_index.assert_not_called()

```python
mock_pc.create_index.assert_not_called()
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
'If embedding generation fails, index is never created (no side-effects).'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)

def fail_embeddings(_docs):
    raise RuntimeError('OPENAI_API_KEY not set')
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', fail_embeddings)
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key')
assert result['success'] is False
mock_pc.create_index.assert_not_called()
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:409 | Complexity: Intermediate | Last updated: 2026-03-29*