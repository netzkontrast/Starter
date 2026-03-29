# How To: Single Enhance Workflow Forwarded

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test single enhance workflow forwarded

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
args = self._make_args(enhance_workflow=['security-focus'])
```

**Verification:**
```python
assert argv.count('--enhance-workflow') == 1
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
args = self._make_args(enhance_workflow=['security-focus'])
argv = self._collect_argv(args)
assert argv.count('--enhance-workflow') == 1
assert 'security-focus' in argv
```

## Next Steps


---

*Source: test_create_integration_basic.py:172 | Complexity: Beginner | Last updated: 2026-03-29*