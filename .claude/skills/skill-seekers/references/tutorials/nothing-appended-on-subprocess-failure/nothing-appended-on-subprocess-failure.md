# How To: Nothing Appended On Subprocess Failure

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: If subprocess returns non-zero, scraped_data["documentation"] stays empty.

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

### Step 1: 'If subprocess returns non-zero, scraped_data["documentation"] stays empty.'

```python
'If subprocess returns non-zero, scraped_data["documentation"] stays empty.'
```

**Verification:**
```python
assert scraper.scraped_data['documentation'] == []
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

### Step 3: Assign source = value

```python
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation'}
```

**Verification:**
```python
assert scraper.scraped_data['documentation'] == []
```

### Step 4: Assign mock_run.return_value = MagicMock(...)

```python
mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='err')
```

### Step 5: Call scraper._scrape_documentation()

```python
scraper._scrape_documentation(source)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'If subprocess returns non-zero, scraped_data["documentation"] stays empty.'
scraper = _make_scraper(tmp_path=tmp_path)
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation'}
with patch('skill_seekers.cli.unified_scraper.subprocess.run') as mock_run:
    mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='err')
    scraper._scrape_documentation(source)
assert scraper.scraped_data['documentation'] == []
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:187 | Complexity: Intermediate | Last updated: 2026-03-29*