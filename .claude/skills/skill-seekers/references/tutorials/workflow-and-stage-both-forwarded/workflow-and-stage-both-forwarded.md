# How To: Workflow And Stage Both Forwarded

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test workflow and stage both forwarded

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
args = self._make_args(enhance_workflow=['security-focus'], enhance_stage=['cleanup:Remove boilerplate'], var=['depth=basic'], workflow_dry_run=True)
```

**Verification:**
```python
assert '--enhance-workflow' in argv
```

### Step 2: Assign argv = self._collect_argv(...)

```python
argv = self._collect_argv(args)
```

**Verification:**
```python
assert 'security-focus' in argv
```


## Complete Example

```python
# Workflow
args = self._make_args(enhance_workflow=['security-focus'], enhance_stage=['cleanup:Remove boilerplate'], var=['depth=basic'], workflow_dry_run=True)
argv = self._collect_argv(args)
assert '--enhance-workflow' in argv
assert 'security-focus' in argv
assert '--enhance-stage' in argv
assert '--var' in argv
assert '--workflow-dry-run' in argv
```

## Next Steps


---

*Source: test_create_integration_basic.py:248 | Complexity: Beginner | Last updated: 2026-03-29*