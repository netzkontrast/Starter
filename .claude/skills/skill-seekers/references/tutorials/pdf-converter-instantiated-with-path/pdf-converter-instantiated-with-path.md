# How To: Pdf Converter Instantiated With Path

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test pdf converter instantiated with path

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

### Step 1: Assign scraper = _make_scraper(...)

```python
scraper = _make_scraper(tmp_path=tmp_path)
```

**Verification:**
```python
assert init_config['pdf_path'] == pdf_path
```

### Step 2: Assign pdf_path = str(...)

```python
pdf_path = str(tmp_path / 'manual.pdf')
```

### Step 3: Assign source = value

```python
source = {'type': 'pdf', 'path': pdf_path}
```

### Step 4: Assign unknown = self._mock_pdf_converter(...)

```python
mock_cls, _ = self._mock_pdf_converter(monkeypatch, tmp_path)
```

### Step 5: Call mock_cls.assert_called_once()

```python
mock_cls.assert_called_once()
```

### Step 6: Assign init_config = value

```python
init_config = mock_cls.call_args[0][0]
```

**Verification:**
```python
assert init_config['pdf_path'] == pdf_path
```

### Step 7: Call scraper._scrape_pdf()

```python
scraper._scrape_pdf(source)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
scraper = _make_scraper(tmp_path=tmp_path)
pdf_path = str(tmp_path / 'manual.pdf')
source = {'type': 'pdf', 'path': pdf_path}
mock_cls, _ = self._mock_pdf_converter(monkeypatch, tmp_path)
with patch('skill_seekers.cli.unified_scraper.shutil.copy'):
    scraper._scrape_pdf(source)
mock_cls.assert_called_once()
init_config = mock_cls.call_args[0][0]
assert init_config['pdf_path'] == pdf_path
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:376 | Complexity: Intermediate | Last updated: 2026-03-29*