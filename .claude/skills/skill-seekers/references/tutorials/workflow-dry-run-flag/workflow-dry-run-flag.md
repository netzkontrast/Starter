# How To: Workflow Dry Run Flag

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test --workflow-dry-run sets the flag.

## Prerequisites

**Required Modules:**
- `sys`
- `unittest`
- `pathlib`
- `skill_seekers.cli.main`


## Step-by-Step Guide

### Step 1: 'Test --workflow-dry-run sets the flag.'

```python
'Test --workflow-dry-run sets the flag.'
```

### Step 2: Assign args = self.parser.parse_args(...)

```python
args = self.parser.parse_args(['analyze', '--directory', '.', '--workflow-dry-run'])
```

### Step 3: Call self.assertTrue()

```python
self.assertTrue(args.workflow_dry_run)
```


## Complete Example

```python
# Workflow
'Test --workflow-dry-run sets the flag.'
args = self.parser.parse_args(['analyze', '--directory', '.', '--workflow-dry-run'])
self.assertTrue(args.workflow_dry_run)
```

## Next Steps


---

*Source: test_analyze_command.py:225 | Complexity: Beginner | Last updated: 2026-03-29*