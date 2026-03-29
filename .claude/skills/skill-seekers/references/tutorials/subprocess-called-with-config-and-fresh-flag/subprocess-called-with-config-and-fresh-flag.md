# How To: Subprocess Called With Config And Fresh Flag

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: subprocess.run is called with --config and --fresh for the doc scraper.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `json`
- `pathlib`
- `unittest.mock`
- `skill_seekers.cli.unified_scraper`
- `argparse`
- `argparse`
- `contextlib`
- `skill_seekers.cli.unified_scraper`
- `skill_seekers.cli.workflow_runner`

**Setup Required:**
```python
# Fixtures: tmp_path
```

## Step-by-Step Guide

### Step 1: 'subprocess.run is called with --config and --fresh for the doc scraper.'

```python
'subprocess.run is called with --config and --fresh for the doc scraper.'
```

**Verification:**
```python
assert mock_run.called
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

**Verification:**
```python
assert '--fresh' in cmd_args
```

### Step 3: Assign source = value

```python
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation'}
```

**Verification:**
```python
assert '--config' in cmd_args
```

### Step 4: Assign cmd_args = value

```python
cmd_args = mock_run.call_args[0][0]
```

**Verification:**
```python
assert '--fresh' in cmd_args
```

### Step 5: Assign mock_run.return_value = MagicMock(...)

```python
mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='error')
```

### Step 6: Call scraper._scrape_documentation()

```python
scraper._scrape_documentation(source)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'subprocess.run is called with --config and --fresh for the doc scraper.'
scraper = _make_scraper(tmp_path=tmp_path)
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation'}
with patch('skill_seekers.cli.unified_scraper.subprocess.run') as mock_run:
    mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='error')
    scraper._scrape_documentation(source)
assert mock_run.called
cmd_args = mock_run.call_args[0][0]
assert '--fresh' in cmd_args
assert '--config' in cmd_args
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:173 | Complexity: Intermediate | Last updated: 2026-03-29*