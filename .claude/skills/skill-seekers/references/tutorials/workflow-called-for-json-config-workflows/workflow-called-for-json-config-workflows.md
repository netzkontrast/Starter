# How To: Workflow Called For Json Config Workflows

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: workflow, integration

## Overview

Workflow: When config has 'workflows' list, run_workflows is called even with args=None.

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

### Step 1: "When config has 'workflows' list, run_workflows is called even with args=None."

```python
"When config has 'workflows' list, run_workflows is called even with args=None."
```

**Verification:**
```python
assert 'minimal' in (captured.get('workflows') or [])
```

### Step 2: Assign scraper = self._make_run_scraper(...)

```python
scraper = self._make_run_scraper(extra_config={'workflows': ['minimal']})
```

### Step 3: Assign captured = value

```python
captured = {}
```

### Step 4: Assign orig_us = getattr(...)

```python
orig_us = getattr(us_mod, 'run_workflows', None)
```

### Step 5: Assign orig_wr = getattr(...)

```python
orig_wr = getattr(wr_mod, 'run_workflows', None)
```

### Step 6: Assign us_mod.run_workflows = fake_run_workflows

```python
us_mod.run_workflows = fake_run_workflows
```

### Step 7: Assign wr_mod.run_workflows = fake_run_workflows

```python
wr_mod.run_workflows = fake_run_workflows
```

**Verification:**
```python
assert 'minimal' in (captured.get('workflows') or [])
```

### Step 8: Assign unknown = getattr(...)

```python
captured['workflows'] = getattr(args, 'enhance_workflow', None)
```

### Step 9: Call scraper.run()

```python
scraper.run(args=None)
```

### Step 10: Assign us_mod.run_workflows = orig_us

```python
us_mod.run_workflows = orig_us
```

### Step 11: Assign wr_mod.run_workflows = orig_wr

```python
wr_mod.run_workflows = orig_wr
```

### Step 12: Call delattr()

```python
delattr(us_mod, 'run_workflows')
```

### Step 13: Call delattr()

```python
delattr(wr_mod, 'run_workflows')
```


## Complete Example

```python
# Workflow
"When config has 'workflows' list, run_workflows is called even with args=None."
scraper = self._make_run_scraper(extra_config={'workflows': ['minimal']})
captured = {}

def fake_run_workflows(args, context=None):
    captured['workflows'] = getattr(args, 'enhance_workflow', None)
import contextlib
import skill_seekers.cli.unified_scraper as us_mod
import skill_seekers.cli.workflow_runner as wr_mod
orig_us = getattr(us_mod, 'run_workflows', None)
orig_wr = getattr(wr_mod, 'run_workflows', None)
us_mod.run_workflows = fake_run_workflows
wr_mod.run_workflows = fake_run_workflows
try:
    scraper.run(args=None)
finally:
    if orig_us is None:
        with contextlib.suppress(AttributeError):
            delattr(us_mod, 'run_workflows')
    else:
        us_mod.run_workflows = orig_us
    if orig_wr is None:
        with contextlib.suppress(AttributeError):
            delattr(wr_mod, 'run_workflows')
    else:
        wr_mod.run_workflows = orig_wr
assert 'minimal' in (captured.get('workflows') or [])
```

## Next Steps


---

*Source: test_unified_scraper_orchestration.py:576 | Complexity: Advanced | Last updated: 2026-03-29*