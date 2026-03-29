# How To: Sync Config Idempotent

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Running sync twice with --apply should be a no-op the second time.

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

### Step 1: 'Running sync twice with --apply should be a no-op the second time.'

```python
'Running sync twice with --apply should be a no-op the second time.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': []}]}
```

### Step 3: Assign path = _write_config(...)

```python
path = _write_config(config)
```

### Step 4: Assign result1 = sync_config(...)

```python
result1 = sync_config(str(path), apply=True, depth=3, rate_limit=0)
```

### Step 5: Call self.assertTrue()

```python
self.assertTrue(result1['applied'])
```

### Step 6: Call self.assertGreater()

```python
self.assertGreater(len(result1['added']), 0)
```

### Step 7: Assign result2 = sync_config(...)

```python
result2 = sync_config(str(path), apply=True, depth=3, rate_limit=0)
```

### Step 8: Call self.assertFalse()

```python
self.assertFalse(result2['applied'])
```

### Step 9: Call self.assertEqual()

```python
self.assertEqual(result2['added'], [])
```

### Step 10: Call self.assertEqual()

```python
self.assertEqual(result2['removed'], [])
```

### Step 11: Call path.unlink()

```python
path.unlink()
```


## Complete Example

```python
# Workflow
'Running sync twice with --apply should be a no-op the second time.'
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': []}]}
path = _write_config(config)
result1 = sync_config(str(path), apply=True, depth=3, rate_limit=0)
self.assertTrue(result1['applied'])
self.assertGreater(len(result1['added']), 0)
result2 = sync_config(str(path), apply=True, depth=3, rate_limit=0)
self.assertFalse(result2['applied'])
self.assertEqual(result2['added'], [])
self.assertEqual(result2['removed'], [])
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:318 | Complexity: Advanced | Last updated: 2026-03-29*