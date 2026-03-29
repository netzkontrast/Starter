# How To: Start Urls Forwarded To Doc Config

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: start_urls from source is forwarded to the temporary doc config.

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

### Step 1: 'start_urls from source is forwarded to the temporary doc config.'

```python
'start_urls from source is forwarded to the temporary doc config.'
```

**Verification:**
```python
assert any(('start_urls' in s for c in written_configs for s in c.get('sources', [c])))
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

### Step 3: Assign source = value

```python
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation', 'start_urls': ['https://docs.example.com/intro']}
```

### Step 4: Assign written_configs = value

```python
written_configs = []
```

**Verification:**
```python
assert any(('start_urls' in s for c in written_configs for s in c.get('sources', [c])))
```

### Step 5: Assign mock_run.return_value = MagicMock(...)

```python
mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='')
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
'start_urls from source is forwarded to the temporary doc config.'
scraper = _make_scraper(tmp_path=tmp_path)
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation', 'start_urls': ['https://docs.example.com/intro']}
written_configs = []
with patch('skill_seekers.cli.unified_scraper.subprocess.run') as mock_run, patch('skill_seekers.cli.unified_scraper.json.dump', side_effect=lambda obj, _f, **_kw: written_configs.append(obj)):
    mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='')
    scraper._scrape_documentation(source)
assert any(('start_urls' in s for c in written_configs for s in c.get('sources', [c])))
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:229 | Complexity: Intermediate | Last updated: 2026-03-29*