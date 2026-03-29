# How To: Workflow Dry Run False Not Forwarded

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test workflow dry run false not forwarded

## Prerequisites

**Required Modules:**
- `pytest`
- `subprocess`
- `skill_seekers.cli.source_detector`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`
- `json`
- `skill_seekers.cli.source_detector`
- `subprocess`
- `argparse`
- `skill_seekers.cli.create_command`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`


## Step-by-Step Guide

### Step 1: Assign args = self._make_args(...)

```python
args = self._make_args(workflow_dry_run=False)
```

**Verification:**
```python
assert '--workflow-dry-run' not in argv
```

### Step 2: Assign argv = self._collect_argv(...)

```python
argv = self._collect_argv(args)
```

**Verification:**
```python
assert '--workflow-dry-run' not in argv
```


## Complete Example

```python
# Workflow
args = self._make_args(workflow_dry_run=False)
argv = self._collect_argv(args)
assert '--workflow-dry-run' not in argv
```

## Next Steps


---

*Source: test_create_integration_basic.py:241 | Complexity: Beginner | Last updated: 2026-03-29*