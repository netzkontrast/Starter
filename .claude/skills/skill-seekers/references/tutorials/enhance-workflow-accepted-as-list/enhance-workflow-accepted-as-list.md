# How To: Enhance Workflow Accepted As List

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test --enhance-workflow is accepted and stored as a list.

## Prerequisites

**Required Modules:**
- `sys`
- `unittest`
- `pathlib`
- `skill_seekers.cli.main`


## Step-by-Step Guide

### Step 1: 'Test --enhance-workflow is accepted and stored as a list.'

```python
'Test --enhance-workflow is accepted and stored as a list.'
```

### Step 2: Assign args = self.parser.parse_args(...)

```python
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus'])
```

### Step 3: Call self.assertEqual()

```python
self.assertEqual(args.enhance_workflow, ['security-focus'])
```


## Complete Example

```python
# Workflow
'Test --enhance-workflow is accepted and stored as a list.'
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus'])
self.assertEqual(args.enhance_workflow, ['security-focus'])
```

## Next Steps


---

*Source: test_analyze_command.py:191 | Complexity: Beginner | Last updated: 2026-03-29*