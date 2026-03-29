# How To: Embedding Dimension Autodetect Openai

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: openai upload creates index with dimension=1536.

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

### Step 1: 'openai upload creates index with dimension=1536.'

```python
'openai upload creates index with dimension=1536.'
```

**Verification:**
```python
assert result['success'] is True
```

### Step 2: Assign adaptor = PineconeAdaptor(...)

```python
adaptor = PineconeAdaptor()
```

**Verification:**
```python
assert call_kwargs.kwargs['dimension'] == 1536
```

### Step 3: Assign unknown = self._make_mock_pinecone(...)

```python
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
```

### Step 4: Call monkeypatch.setattr()

```python
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 1536] * len(docs))
```

### Step 5: Assign pkg = self._make_package(...)

```python
pkg = self._make_package(tmp_path)
```

### Step 6: Assign result = adaptor.upload(...)

```python
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='openai')
```

**Verification:**
```python
assert result['success'] is True
```

### Step 7: Call mock_pc.create_index.assert_called_once()

```python
mock_pc.create_index.assert_called_once()
```

### Step 8: Assign call_kwargs = value

```python
call_kwargs = mock_pc.create_index.call_args
```

**Verification:**
```python
assert call_kwargs.kwargs['dimension'] == 1536
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
'openai upload creates index with dimension=1536.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 1536] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='openai')
assert result['success'] is True
mock_pc.create_index.assert_called_once()
call_kwargs = mock_pc.create_index.call_args
assert call_kwargs.kwargs['dimension'] == 1536
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:386 | Complexity: Advanced | Last updated: 2026-03-29*