# How To: Upload Success Has Url Key

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: upload() success return dict includes 'url' key (prevents KeyError in package_skill.py).

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

### Step 1: "upload() success return dict includes 'url' key (prevents KeyError in package_skill.py)."

```python
"upload() success return dict includes 'url' key (prevents KeyError in package_skill.py)."
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
assert 'url' in result
```

### Step 3: Assign unknown = self._make_mock_pinecone(...)

```python
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
```

**Verification:**
```python
assert result['url'] is None
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
result = adaptor.upload(pkg, api_key='fake-key')
```

**Verification:**
```python
assert result['success'] is True
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
"upload() success return dict includes 'url' key (prevents KeyError in package_skill.py)."
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 1536] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key')
assert result['success'] is True
assert 'url' in result
assert result['url'] is None
```

## Next Steps


---

*Source: test_pinecone_adaptor.py:343 | Complexity: Intermediate | Last updated: 2026-03-29*