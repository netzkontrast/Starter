# How To: Workflow Flags Combined

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test workflow flags can be combined with other analyze flags.

## Prerequisites

**Required Modules:**
- `sys`
- `unittest`
- `pathlib`
- `skill_seekers.cli.main`


## Step-by-Step Guide

### Step 1: 'Test workflow flags can be combined with other analyze flags.'

```python
'Test workflow flags can be combined with other analyze flags.'
```

### Step 2: Assign args = self.parser.parse_args(...)

```python
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus', '--api-key', 'sk-ant-test', '--dry-run', '--enhance-level', '1'])
```

### Step 3: Call self.assertEqual()

```python
self.assertEqual(args.enhance_workflow, ['security-focus'])
```

### Step 4: Call self.assertEqual()

```python
self.assertEqual(args.api_key, 'sk-ant-test')
```

### Step 5: Call self.assertTrue()

```python
self.assertTrue(args.dry_run)
```

### Step 6: Call self.assertEqual()

```python
self.assertEqual(args.enhance_level, 1)
```


## Complete Example

```python
# Workflow
'Test workflow flags can be combined with other analyze flags.'
args = self.parser.parse_args(['analyze', '--directory', '.', '--enhance-workflow', 'security-focus', '--api-key', 'sk-ant-test', '--dry-run', '--enhance-level', '1'])
self.assertEqual(args.enhance_workflow, ['security-focus'])
self.assertEqual(args.api_key, 'sk-ant-test')
self.assertTrue(args.dry_run)
self.assertEqual(args.enhance_level, 1)
```

## Next Steps


---

*Source: test_analyze_command.py:240 | Complexity: Intermediate | Last updated: 2026-03-29*