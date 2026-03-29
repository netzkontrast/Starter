# How To: Dry Run Does Not Modify File

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test dry run does not modify file

## Prerequisites

- [ ] Setup code must be executed first

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

**Setup Required:**
```python
# Fixtures: mock_discover
```

## Step-by-Step Guide

### Step 1: Assign mock_discover.return_value = value

```python
mock_discover.return_value = {'https://docs.example.com/a', 'https://docs.example.com/b', 'https://docs.example.com/c'}
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a']}]}
```

### Step 3: Assign path = self._write_config(...)

```python
path = self._write_config(config)
```

### Step 4: Assign result = sync_config(...)

```python
result = sync_config(str(path), apply=False)
```

### Step 5: Call self.assertFalse()

```python
self.assertFalse(result['applied'])
```

### Step 6: Call self.assertEqual()

```python
self.assertEqual(len(result['added']), 2)
```

### Step 7: Call self.assertEqual()

```python
self.assertEqual(len(saved['sources'][0]['start_urls']), 1)
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
# Setup
# Fixtures: mock_discover

# Workflow
mock_discover.return_value = {'https://docs.example.com/a', 'https://docs.example.com/b', 'https://docs.example.com/c'}
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a']}]}
path = self._write_config(config)
result = sync_config(str(path), apply=False)
self.assertFalse(result['applied'])
self.assertEqual(len(result['added']), 2)
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
self.assertEqual(len(saved['sources'][0]['start_urls']), 1)
path.unlink()
```

## Next Steps


---

*Source: test_sync_config.py:369 | Complexity: Advanced | Last updated: 2026-03-29*