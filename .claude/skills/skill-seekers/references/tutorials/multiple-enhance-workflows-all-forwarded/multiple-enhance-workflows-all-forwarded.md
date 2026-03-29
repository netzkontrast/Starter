# How To: Multiple Enhance Workflows All Forwarded

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Each workflow must appear as a separate --enhance-workflow flag.

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

### Step 1: 'Each workflow must appear as a separate --enhance-workflow flag.'

```python
'Each workflow must appear as a separate --enhance-workflow flag.'
```

**Verification:**
```python
assert argv.count('--enhance-workflow') == 2
```

### Step 2: Assign args = self._make_args(...)

```python
args = self._make_args(enhance_workflow=['security-focus', 'minimal'])
```

**Verification:**
```python
assert argv[idx1 - 1] == '--enhance-workflow'
```

### Step 3: Assign argv = self._collect_argv(...)

```python
argv = self._collect_argv(args)
```

**Verification:**
```python
assert argv[idx2 - 1] == '--enhance-workflow'
```

### Step 4: Assign idx1 = argv.index(...)

```python
idx1 = argv.index('security-focus')
```

### Step 5: Assign idx2 = argv.index(...)

```python
idx2 = argv.index('minimal')
```

**Verification:**
```python
assert argv[idx1 - 1] == '--enhance-workflow'
```


## Complete Example

```python
# Workflow
'Each workflow must appear as a separate --enhance-workflow flag.'
args = self._make_args(enhance_workflow=['security-focus', 'minimal'])
argv = self._collect_argv(args)
assert argv.count('--enhance-workflow') == 2
idx1 = argv.index('security-focus')
idx2 = argv.index('minimal')
assert argv[idx1 - 1] == '--enhance-workflow'
assert argv[idx2 - 1] == '--enhance-workflow'
```

## Next Steps


---

*Source: test_create_integration_basic.py:178 | Complexity: Intermediate | Last updated: 2026-03-29*