# How To: Cli Dry Run

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: CLI dry-run should print diff and exit 0.

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

### Step 1: 'CLI dry-run should print diff and exit 0.'

```python
'CLI dry-run should print diff and exit 0.'
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
result = subprocess.run([sys.executable, '-m', 'skill_seekers.cli.sync_config', '--config', str(path), '--depth', '3', '--rate-limit', '0'], capture_output=True, text=True, timeout=30)
```

### Step 5: Call self.assertEqual()

```python
self.assertEqual(result.returncode, 0, f'CLI failed: {result.stderr}')
```

### Step 6: Assign combined = value

```python
combined = result.stderr.lower() + result.stdout.lower()
```

### Step 7: Call self.assertIn()

```python
self.assertIn('new page', combined, f"Expected 'new page' in output: {combined}")
```

### Step 8: Call path.unlink()

```python
path.unlink()
```


## Complete Example

```python
# Workflow
'CLI dry-run should print diff and exit 0.'
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': self.base_url, 'start_urls': [f'http://127.0.0.1:{self.port}/docs/faq'], 'nav_seed_urls': [self.base_url]}]}
path = _write_config(config)
result = subprocess.run([sys.executable, '-m', 'skill_seekers.cli.sync_config', '--config', str(path), '--depth', '3', '--rate-limit', '0'], capture_output=True, text=True, timeout=30)
self.assertEqual(result.returncode, 0, f'CLI failed: {result.stderr}')
combined = result.stderr.lower() + result.stdout.lower()
self.assertIn('new page', combined, f"Expected 'new page' in output: {combined}")
path.unlink()
```

## Next Steps


---

*Source: test_sync_config_e2e.py:477 | Complexity: Advanced | Last updated: 2026-03-29*