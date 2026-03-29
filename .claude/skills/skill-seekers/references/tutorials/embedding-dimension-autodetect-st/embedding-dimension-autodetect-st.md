# How To: Embedding Dimension Autodetect St

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: sentence-transformers upload creates index with dimension=384.

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

### Step 1: 'sentence-transformers upload creates index with dimension=384.'

```python
'sentence-transformers upload creates index with dimension=384.'
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
assert call_kwargs.kwargs['dimension'] == 384
```

### Step 3: Assign unknown = self._make_mock_pinecone(...)

```python
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
```

### Step 4: Call monkeypatch.setattr()

```python
monkeypatch.setattr(adaptor, '_generate_st_embeddings', lambda docs: [[0.0] * 384] * len(docs))
```

### Step 5: Assign pkg = self._make_package(...)

```python
pkg = self._make_package(tmp_path)
```

### Step 6: Assign result = adaptor.upload(...)

```python
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='sentence-transformers')
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
assert call_kwargs.kwargs['dimension'] == 384
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
'sentence-transformers upload creates index with dimension=384.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_st_embeddings', lambda docs: [[0.0] * 384] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='sentence-transformers')
assert result['success'] is True
mock_pc.create_index.assert_called_once()
call_kwargs = mock_pc.create_index.call_args
assert call_kwargs.kwargs['dimension'] == 384
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:362 | Complexity: Advanced | Last updated: 2026-03-29*