# How To: Single Workflow Failed Load Skipped

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test single workflow failed load skipped

## Prerequisites

**Required Modules:**
- `argparse`
- `unittest.mock`
- `pytest`
- `skill_seekers.cli.workflow_runner`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli`
- `pathlib`


## Step-by-Step Guide

### Step 1: Assign args = make_args(...)

```python
args = make_args(enhance_workflow=['nonexistent-workflow'])
```

**Verification:**
```python
assert executed is False
```

### Step 2: Assign unknown = run_workflows(...)

```python
executed, names = run_workflows(args)
```

**Verification:**
```python
assert names == []
```


## Complete Example

```python
# Workflow
args = make_args(enhance_workflow=['nonexistent-workflow'])
with patch('skill_seekers.cli.enhancement_workflow.WorkflowEngine', side_effect=FileNotFoundError('not found')):
    executed, names = run_workflows(args)
assert executed is False
assert names == []
```

## Next Steps


---

*Source: test_workflow_runner.py:119 | Complexity: Intermediate | Last updated: 2026-03-29*