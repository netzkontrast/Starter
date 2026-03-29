# How To: Cli Apply

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: CLI --apply should update the config file.

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

### Step 1: 'CLI --apply should update the config file.'

```python
'CLI --apply should update the config file.'
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/faq'], 'nav_seed_urls': [self.base_url]}]}
```

### Step 3: Assign path = _write_config(...)

```python
path = _write_config(config)
```

### Step 4: Assign result = subprocess.run(...)

```python
result = subprocess.run([sys.executable, '-m', 'skill_seekers.cli.sync_config', '--config', str(path), '--apply', '--depth', '3', '--rate-limit', '0'], capture_output=True, text=True, timeout=30)
```

### Step 5: Call self.assertEqual()

```python
self.assertEqual(result.returncode, 0, f'CLI failed: {result.stderr}')
```

### Step 6: Call self.assertGreater()

```python
self.assertGreater(len(saved['sources'][0]['start_urls']), 0)
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
'CLI --apply should update the config file.'
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/faq'], 'nav_seed_urls': [self.base_url]}]}
path = _write_config(config)
result = subprocess.run([sys.executable, '-m', 'skill_seekers.cli.sync_config', '--config', str(path), '--apply', '--depth', '3', '--rate-limit', '0'], capture_output=True, text=True, timeout=30)
self.assertEqual(result.returncode, 0, f'CLI failed: {result.stderr}')
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
self.assertGreater(len(saved['sources'][0]['start_urls']), 0)
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:517 | Complexity: Advanced | Last updated: 2026-03-29*