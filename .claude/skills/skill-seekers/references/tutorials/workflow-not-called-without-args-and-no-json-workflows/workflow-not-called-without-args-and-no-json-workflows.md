# How To: Workflow Not Called Without Args And No Json Workflows

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: When args=None and config has no workflow fields, run_workflows is never called.

## Prerequisites

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


## Step-by-Step Guide

### Step 1: 'When args=None and config has no workflow fields, run_workflows is never called.'

```python
'When args=None and config has no workflow fields, run_workflows is never called.'
```

### Step 2: Assign scraper = self._make_run_scraper(...)

```python
scraper = self._make_run_scraper()
```

### Step 3: Call mock_wf.assert_not_called()

```python
mock_wf.assert_not_called()
```

### Step 4: Call scraper.run()

```python
scraper.run(args=None)
```


## Complete Example

```python
# Workflow
'When args=None and config has no workflow fields, run_workflows is never called.'
scraper = self._make_run_scraper()
with patch('skill_seekers.cli.unified_scraper.run_workflows', create=True) as mock_wf:
    scraper.run(args=None)
mock_wf.assert_not_called()
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:548 | Complexity: Intermediate | Last updated: 2026-03-29*