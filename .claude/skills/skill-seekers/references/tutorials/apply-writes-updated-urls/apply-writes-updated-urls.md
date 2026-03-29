# How To: Apply Writes Updated Urls

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test apply writes updated urls

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
mock_discover.return_value = {'https://docs.example.com/a', 'https://docs.example.com/b'}
```

### Step 2: Assign config = value

```python
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a', 'https://docs.example.com/old']}]}
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
self.assertEqual(result['added'], ['https://docs.example.com/b'])
```

### Step 7: Call self.assertEqual()

```python
self.assertEqual(result['removed'], ['https://docs.example.com/old'])
```

### Step 8: Assign urls = value

```python
urls = saved['sources'][0]['start_urls']
```

### Step 9: Call self.assertIn()

```python
self.assertIn('https://docs.example.com/a', urls)
```

### Step 10: Call self.assertIn()

```python
self.assertIn('https://docs.example.com/b', urls)
```

### Step 11: Call self.assertNotIn()

```python
self.assertNotIn('https://docs.example.com/old', urls)
```

### Step 12: Call path.unlink()

```python
path.unlink()
```

### Step 13: Assign saved = json.load(...)

```python
saved = json.load(f)
```


## Complete Example

```python
# Setup
# Fixtures: mock_discover

# Workflow
mock_discover.return_value = {'https://docs.example.com/a', 'https://docs.example.com/b'}
config = {'name': 'test', 'sources': [{'type': 'documentation', 'base_url': 'https://docs.example.com/', 'start_urls': ['https://docs.example.com/a', 'https://docs.example.com/old']}]}
path = self._write_config(config)
result = sync_config(str(path), apply=True)
self.assertTrue(result['applied'])
self.assertEqual(result['added'], ['https://docs.example.com/b'])
self.assertEqual(result['removed'], ['https://docs.example.com/old'])
with open(path, encoding='utf-8') as f:
    saved = json.load(f)
urls = saved['sources'][0]['start_urls']
self.assertIn('https://docs.example.com/a', urls)
self.assertIn('https://docs.example.com/b', urls)
self.assertNotIn('https://docs.example.com/old', urls)
path.unlink()
```

## Next Steps


---

*Source: test_sync_config.py:399 | Complexity: Advanced | Last updated: 2026-03-29*