# How To: Enhance Level Uses Cli Args Override

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: CLI --enhance-level overrides per-source enhance_level.

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
# Fixtures: tmp_path, monkeypatch
```

## Step-by-Step Guide

### Step 1: 'CLI --enhance-level overrides per-source enhance_level.'

```python
'CLI --enhance-level overrides per-source enhance_level.'
```

**Verification:**
```python
assert captured_kwargs.get('enhance_level') == 3
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

### Step 3: Assign source = value

```python
source = {'type': 'local', 'path': str(tmp_path), 'enhance_level': 1}
```

### Step 4: Assign scraper._cli_args = argparse.Namespace(...)

```python
scraper._cli_args = argparse.Namespace(enhance_level=3)
```

### Step 5: Assign captured_kwargs = value

```python
captured_kwargs = {}
```

### Step 6: Call monkeypatch.setattr()

```python
monkeypatch.setattr('skill_seekers.cli.codebase_scraper.analyze_codebase', fake_analyze)
```

### Step 7: Call scraper._scrape_local()

```python
scraper._scrape_local(source)
```

**Verification:**
```python
assert captured_kwargs.get('enhance_level') == 3
```

### Step 8: Call captured_kwargs.update()

```python
captured_kwargs.update(kwargs)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
'CLI --enhance-level overrides per-source enhance_level.'
import argparse
scraper = _make_scraper(tmp_path=tmp_path)
source = {'type': 'local', 'path': str(tmp_path), 'enhance_level': 1}
scraper._cli_args = argparse.Namespace(enhance_level=3)
captured_kwargs = {}

def fake_analyze(**kwargs):
    captured_kwargs.update(kwargs)
monkeypatch.setattr('skill_seekers.cli.codebase_scraper.analyze_codebase', fake_analyze)
scraper._scrape_local(source)
assert captured_kwargs.get('enhance_level') == 3
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:453 | Complexity: Advanced | Last updated: 2026-03-29*