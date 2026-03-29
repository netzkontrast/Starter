# How To: Enhance Workflow Chained Twice

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test --enhance-workflow can be chained to produce a two-item list.

## Prerequisites

**Required Modules:**
- `sys`
- `unittest`
- `pathlib`
- `skill_seekers.cli.main`


## Step-by-Step Guide

### Step 1: 'Test --enhance-workflow can be chained to produce a two-item list.'

```python
'Test --enhance-workflow can be chained to produce a two-item list.'
```

### Step 2: Assign args = self.parser.parse_args(...)

```python
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus', '--enhance-workflow', 'minimal'])
```

### Step 3: Call self.assertEqual()

```python
self.assertEqual(args.enhance_workflow, ['security-focus', 'minimal'])
```


## Complete Example

```python
# Workflow
'Test --enhance-workflow can be chained to produce a two-item list.'
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus', '--enhance-workflow', 'minimal'])
self.assertEqual(args.enhance_workflow, ['security-focus', 'minimal'])
```

## Next Steps


---

*Source: test_analyze_command.py:198 | Complexity: Beginner | Last updated: 2026-03-29*