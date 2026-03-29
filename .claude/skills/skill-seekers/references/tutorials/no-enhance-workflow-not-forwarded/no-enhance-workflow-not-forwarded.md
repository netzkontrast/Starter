# How To: No Enhance Workflow Not Forwarded

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test no enhance workflow not forwarded

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
args = self._make_args(enhance_workflow=None)
```

**Verification:**
```python
assert '--enhance-workflow' not in argv
```

### Step 2: Assign argv = self._collect_argv(...)

```python
argv = self._collect_argv(args)
```

**Verification:**
```python
assert '--enhance-workflow' not in argv
```


## Complete Example

```python
# Workflow
args = self._make_args(enhance_workflow=None)
argv = self._collect_argv(args)
assert '--enhance-workflow' not in argv
```

## Next Steps


---

*Source: test_create_integration_basic.py:188 | Complexity: Beginner | Last updated: 2026-03-29*