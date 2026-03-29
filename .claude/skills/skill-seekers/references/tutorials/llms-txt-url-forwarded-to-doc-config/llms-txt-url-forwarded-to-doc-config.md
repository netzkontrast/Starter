# How To: Llms Txt Url Forwarded To Doc Config

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: llms_txt_url from source is forwarded to the temporary doc config.

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

### Step 1: 'llms_txt_url from source is forwarded to the temporary doc config.'

```python
'llms_txt_url from source is forwarded to the temporary doc config.'
```

**Verification:**
```python
assert any(('llms_txt_url' in s for c in written_configs for s in c.get('sources', [c])))
```

### Step 2: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

### Step 3: Assign source = value

```python
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation', 'llms_txt_url': 'https://docs.example.com/llms.txt'}
```

### Step 4: Assign written_configs = value

```python
written_configs = []
```

### Step 5: Assign original_json_dump = value

```python
original_json_dump = json.dumps
```

**Verification:**
```python
assert any(('llms_txt_url' in s for c in written_configs for s in c.get('sources', [c])))
```

### Step 6: Call written_configs.append()

```python
written_configs.append(obj)
```

### Step 7: Assign mock_run.return_value = MagicMock(...)

```python
mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='')
```

### Step 8: Call scraper._scrape_documentation()

```python
scraper._scrape_documentation(source)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'llms_txt_url from source is forwarded to the temporary doc config.'
scraper = _make_scraper(tmp_path=tmp_path)
source = {'base_url': 'https://docs.example.com/', 'type': 'documentation', 'llms_txt_url': 'https://docs.example.com/llms.txt'}
written_configs = []
original_json_dump = json.dumps

def capture_dump(obj, f, **kwargs):
    if isinstance(f, str):
        return original_json_dump(obj, f, **kwargs)
    written_configs.append(obj)
    return original_json_dump(obj)
with patch('skill_seekers.cli.unified_scraper.subprocess.run') as mock_run, patch('skill_seekers.cli.unified_scraper.json.dump', side_effect=lambda obj, _f, **_kw: written_configs.append(obj)):
    mock_run.return_value = MagicMock(returncode=1, stdout='', stderr='')
    scraper._scrape_documentation(source)
assert any(('llms_txt_url' in s for c in written_configs for s in c.get('sources', [c])))
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:198 | Complexity: Advanced | Last updated: 2026-03-29*