# How To: Http Error Handled Gracefully

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: HTTP errors should not crash the discovery.

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
# Fixtures: mock_get
```

## Step-by-Step Guide

### Step 1: 'HTTP errors should not crash the discovery.'

```python
'HTTP errors should not crash the discovery.'
```

### Step 2: Assign mock_get.side_effect = ConnectionError(...)

```python
mock_get.side_effect = ConnectionError('Network error')
```

### Step 3: Assign result = discover_urls(...)

```python
result = discover_urls(base_url='https://docs.example.com/', seed_urls=['https://docs.example.com/'], depth=1, rate_limit=0)
```

### Step 4: Call self.assertEqual()

```python
self.assertEqual(result, set())
```


## Complete Example

```python
# Setup
# Fixtures: mock_get

# Workflow
'HTTP errors should not crash the discovery.'
mock_get.side_effect = ConnectionError('Network error')
result = discover_urls(base_url='https://docs.example.com/', seed_urls=['https://docs.example.com/'], depth=1, rate_limit=0)
self.assertEqual(result, set())
```

## Next Steps


---

*Source: test_sync_config.py:315 | Complexity: Intermediate | Last updated: 2026-03-29*