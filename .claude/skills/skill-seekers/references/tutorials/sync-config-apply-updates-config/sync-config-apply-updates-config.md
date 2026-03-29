# How To: Sync Config Apply Updates Config

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: --apply should write all discovered URLs to the config.

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

### Step 1: '--apply should write all discovered URLs to the config.'

```python
'--apply should write all discovered URLs to the config.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide']}]}
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

### Step 6: Assign saved_urls = value

```python
saved_urls = saved['sources'][0]['start_urls']
```

### Step 7: Call self.assertEqual()

```python
self.assertEqual(len(saved_urls), result['total_discovered'])
```

### Step 8: Assign expected = value

```python
expected = {f'http://127.0.0.1:{self.port}{p}' for p in _ALL_DOC_URLS_PATHS}
```

### Step 9: Call path.unlink()

```python
path.unlink()
```

### Step 10: Assign saved = json.load(...)

```python
saved = json.load(f)
```

### Step 11: Call self.assertIn()

```python
self.assertIn(url, saved_urls, f'Expected URL missing from saved config: {url}')
```


## Complete Example

```python
# Workflow
'--apply should write all discovered URLs to the config.'
config = {'name': 'test-site', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/guide']}]}
path = _write_config(config)
result = sync_config(str(path), apply=True, depth=3, rate_limit=0)
self.assertTrue(result['applied'])
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
saved_urls = saved['sources'][0]['start_urls']
self.assertEqual(len(saved_urls), result['total_discovered'])
expected = {f'http://127.0.0.1:{self.port}{p}' for p in _ALL_DOC_URLS_PATHS}
for url in expected:
    self.assertIn(url, saved_urls, f'Expected URL missing from saved config: {url}')
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:287 | Complexity: Advanced | Last updated: 2026-03-29*