# How To: Scraped Data Appended With Pages

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test scraped data appended with pages

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
assert len(scraper.scraped_data['pdf']) == 1
```

### Step 2: Assign pdf_path = str(...)

```python
pdf_path = str(tmp_path / 'report.pdf')
```

**Verification:**
```python
assert entry['pdf_path'] == pdf_path
```

### Step 3: Assign source = value

```python
source = {'type': 'pdf', 'path': pdf_path}
```

**Verification:**
```python
assert entry['data']['pages'] == pages
```

### Step 4: Assign pages = value

```python
pages = [{'page': 1, 'content': 'Hello'}, {'page': 2, 'content': 'World'}]
```

### Step 5: Call self._mock_pdf_converter()

```python
self._mock_pdf_converter(monkeypatch, tmp_path, pages=pages)
```

**Verification:**
```python
assert len(scraper.scraped_data['pdf']) == 1
```

### Step 6: Assign entry = value

```python
entry = scraper.scraped_data['pdf'][0]
```

**Verification:**
```python
assert entry['pdf_path'] == pdf_path
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
pdf_path = str(tmp_path / 'report.pdf')
source = {'type': 'pdf', 'path': pdf_path}
pages = [{'page': 1, 'content': 'Hello'}, {'page': 2, 'content': 'World'}]
self._mock_pdf_converter(monkeypatch, tmp_path, pages=pages)
with patch('skill_seekers.cli.unified_scraper.shutil.copy'):
    scraper._scrape_pdf(source)
assert len(scraper.scraped_data['pdf']) == 1
entry = scraper.scraped_data['pdf'][0]
assert entry['pdf_path'] == pdf_path
assert entry['data']['pages'] == pages
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:401 | Complexity: Advanced | Last updated: 2026-03-29*