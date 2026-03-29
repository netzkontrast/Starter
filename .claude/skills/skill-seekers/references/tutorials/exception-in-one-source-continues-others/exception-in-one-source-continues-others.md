# How To: Exception In One Source Continues Others

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: An exception in one scraper does not abort remaining sources.

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
# Fixtures: monkeypatch
```

## Step-by-Step Guide

### Step 1: 'An exception in one scraper does not abort remaining sources.'

```python
'An exception in one scraper does not abort remaining sources.'
```

**Verification:**
```python
assert calls['github'] == 1
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper()
```

### Step 3: Assign unknown = value

```python
scraper.config['sources'] = [{'type': 'documentation', 'base_url': 'https://a.com'}, {'type': 'github', 'repo': 'user/repo'}]
```

### Step 4: Assign calls = value

```python
calls = {'documentation': 0, 'github': 0}
```

### Step 5: Call monkeypatch.setattr()

```python
monkeypatch.setattr(scraper, '_scrape_documentation', raise_on_doc)
```

### Step 6: Call monkeypatch.setattr()

```python
monkeypatch.setattr(scraper, '_scrape_github', count_github)
```

### Step 7: Call scraper.scrape_all_sources()

```python
scraper.scrape_all_sources()
```

**Verification:**
```python
assert calls['github'] == 1
```


## Complete Example

```python
# Setup
# Fixtures: monkeypatch

# Workflow
'An exception in one scraper does not abort remaining sources.'
scraper = _make_scraper()
scraper.config['sources'] = [{'type': 'documentation', 'base_url': 'https://a.com'}, {'type': 'github', 'repo': 'user/repo'}]
calls = {'documentation': 0, 'github': 0}

def raise_on_doc(_s):
    raise RuntimeError('simulated doc failure')

def count_github(_s):
    calls['github'] += 1
monkeypatch.setattr(scraper, '_scrape_documentation', raise_on_doc)
monkeypatch.setattr(scraper, '_scrape_github', count_github)
scraper.scrape_all_sources()
assert calls['github'] == 1
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:142 | Complexity: Advanced | Last updated: 2026-03-29*