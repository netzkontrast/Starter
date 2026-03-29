# How To: Post Process Metadata

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test post process metadata

## Prerequisites

**Required Modules:**
- `__future__`
- `yaml`
- `importlib.resources`


## Step-by-Step Guide

### Step 1: Assign data = _load_bundled_yaml(...)

```python
data = _load_bundled_yaml('prompt-injection-check')
```

**Verification:**
```python
assert meta.get('security_scanned') is True
```

### Step 2: Assign meta = data.get.get(...)

```python
meta = data.get('post_process', {}).get('add_metadata', {})
```

**Verification:**
```python
assert meta.get('security_scanned') is True
```


## Complete Example

```python
# Workflow
data = _load_bundled_yaml('prompt-injection-check')
meta = data.get('post_process', {}).get('add_metadata', {})
assert meta.get('security_scanned') is True
```

## Next Steps


---

*Source: test_workflow_prompt_injection.py:63 | Complexity: Beginner | Last updated: 2026-03-29*