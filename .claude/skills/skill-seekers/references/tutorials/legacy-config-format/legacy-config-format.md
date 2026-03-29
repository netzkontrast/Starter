# How To: Legacy Config Format

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test legacy config format

## Prerequisites

**Required Modules:**
- `json`
- `tempfile`
- `unittest`
- `pathlib`
- `unittest.mock`
- `skill_seekers.cli.sync_config`
- `skill_seekers.cli.parsers`
- `skill_seekers.cli.main`
- `argparse`
- `skill_seekers.cli.arguments.sync_config`
- `argparse`
- `skill_seekers.cli.arguments.sync_config`
- `skill_seekers.mcp.tools`
- `asyncio`
- `skill_seekers.mcp.tools.sync_config_tools`


## Step-by-Step Guide

### Step 1: Assign mock_discover.return_value = value

```python
mock_discover.return_value = {'https://docs.example.com/a'}
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a', 'https://docs.example.com/old']}
```

### Step 3: Assign path = self._write_config(...)

```python
path = self._write_config(config)
```

### Step 4: Assign result = sync_config(...)

```python
result = sync_config(str(path), apply=True)
```

### Step 5: Call self.assertTrue()

```python
self.assertTrue(result['applied'])
```

### Step 6: Call self.assertEqual()

```python
self.assertEqual(result['removed'], ['https://docs.example.com/old'])
```

### Step 7: Call self.assertEqual()

```python
self.assertEqual(saved['start_urls'], ['https://docs.example.com/a'])
```

### Step 8: Call path.unlink()

```python
path.unlink()
```

### Step 9: Assign saved = json.load(...)

```python
saved = json.load(f)
```


## Complete Example

```python
# Workflow
mock_discover.return_value = {'https://docs.example.com/a'}
config = {'name': 'test', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a', 'https://docs.example.com/old']}
path = self._write_config(config)
result = sync_config(str(path), apply=True)
self.assertTrue(result['applied'])
self.assertEqual(result['removed'], ['https://docs.example.com/old'])
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
self.assertEqual(saved['start_urls'], ['https://docs.example.com/a'])
path.unlink()
```

## Next Steps


---

*Source: test_sync_config.py:463 | Complexity: Advanced | Last updated: 2026-03-29*