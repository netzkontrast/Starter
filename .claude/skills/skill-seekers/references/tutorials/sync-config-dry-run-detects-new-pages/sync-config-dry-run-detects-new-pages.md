# How To: Sync Config Dry Run Detects New Pages

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Dry-run should detect pages missing from the config.

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

### Step 1: 'Dry-run should detect pages missing from the config.'

```python
'Dry-run should detect pages missing from the config.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide', f'http://127.0.0.1:{self.port}/docs/faq']}]}
```

### Step 3: Assign path = _write_config(...)

```python
path = _write_config(config)
```

### Step 4: Assign result = sync_config(...)

```python
result = sync_config(str(path), apply=False, depth=3, rate_limit=0)
```

### Step 5: Call self.assertFalse()

```python
self.assertFalse(result['applied'])
```

### Step 6: Call self.assertGreater()

```python
self.assertGreater(len(result['added']), 0, 'Should detect new pages')
```

### Step 7: Call self.assertGreaterEqual()

```python
self.assertGreaterEqual(result['total_discovered'], 6)
```

### Step 8: Call self.assertEqual()

```python
self.assertEqual(len(saved['sources'][0]['start_urls']), 2)
```

### Step 9: Call path.unlink()

```python
path.unlink()
```

### Step 10: Assign saved = json.load(...)

```python
saved = json.load(f)
```


## Complete Example

```python
# Workflow
'Dry-run should detect pages missing from the config.'
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide', f'http://127.0.0.1:{self.port}/docs/faq']}]}
path = _write_config(config)
result = sync_config(str(path), apply=False, depth=3, rate_limit=0)
self.assertFalse(result['applied'])
self.assertGreater(len(result['added']), 0, 'Should detect new pages')
self.assertGreaterEqual(result['total_discovered'], 6)
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
self.assertEqual(len(saved['sources'][0]['start_urls']), 2)
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:256 | Complexity: Advanced | Last updated: 2026-03-29*