# How To: Nav Seed Urls Used Over Start Urls

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: When nav_seed_urls is present, it should be used as the seed.

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

### Step 1: 'When nav_seed_urls is present, it should be used as the seed.'

```python
'When nav_seed_urls is present, it should be used as the seed.'
```

### Step 2: Assign mock_discover.return_value = value

```python
mock_discover.return_value = {'https://docs.example.com/a'}
```

### Step 3: Assign config = value

```python
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a'], 'nav_seed_urls': ['https://docs.example.com/nav1', 'https://docs.example.com/nav2']}]}
```

### Step 4: Assign path = self._write_config(...)

```python
path = self._write_config(config)
```

### Step 5: Call sync_config()

```python
sync_config(str(path))
```

### Step 6: Assign call_kwargs = value

```python
call_kwargs = mock_discover.call_args[1]
```

### Step 7: Call self.assertEqual()

```python
self.assertEqual(call_kwargs['seed_urls'], ['https://docs.example.com/nav1', 'https://docs.example.com/nav2'])
```

### Step 8: Call path.unlink()

```python
path.unlink()
```


## Complete Example

```python
# Workflow
'When nav_seed_urls is present, it should be used as the seed.'
mock_discover.return_value = {'https://docs.example.com/a'}
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a'], 'nav_seed_urls': ['https://docs.example.com/nav1', 'https://docs.example.com/nav2']}]}
path = self._write_config(config)
sync_config(str(path))
call_kwargs = mock_discover.call_args[1]
self.assertEqual(call_kwargs['seed_urls'], ['https://docs.example.com/nav1', 'https://docs.example.com/nav2'])
path.unlink()
```

## Next Steps


---

*Source: test_sync_config.py:483 | Complexity: Advanced | Last updated: 2026-03-29*