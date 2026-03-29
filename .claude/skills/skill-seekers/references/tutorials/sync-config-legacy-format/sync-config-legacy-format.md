# How To: Sync Config Legacy Format

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Legacy flat config format should work end-to-end.

## Prerequisites

**Required Modules:**
- `json`
- `subprocess`
- `sys`
- `tempfile`
- `threading`
- `unittest`
- `http.server`
- `pathlib`
- `pytest`
- `skill_seekers.cli.sync_config`


## Step-by-Step Guide

### Step 1: 'Legacy flat config format should work end-to-end.'

```python
'Legacy flat config format should work end-to-end.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test-site', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide']}
```

### Step 3: Assign path = _write_config(...)

```python
path = _write_config(config)
```

### Step 4: Assign result = sync_config(...)

```python
result = sync_config(str(path), apply=True, depth=3, rate_limit=0)
```

### Step 5: Call self.assertTrue()

```python
self.assertTrue(result['applied'])
```

### Step 6: Call self.assertGreater()

```python
self.assertGreater(len(saved['start_urls']), 1)
```

### Step 7: Call path.unlink()

```python
path.unlink()
```

### Step 8: Assign saved = json.load(...)

```python
saved = json.load(f)
```


## Complete Example

```python
# Workflow
'Legacy flat config format should work end-to-end.'
config = {'name': 'test-site', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide']}
path = _write_config(config)
result = sync_config(str(path), apply=True, depth=3, rate_limit=0)
self.assertTrue(result['applied'])
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
self.assertGreater(len(saved['start_urls']), 1)
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:439 | Complexity: Advanced | Last updated: 2026-03-29*