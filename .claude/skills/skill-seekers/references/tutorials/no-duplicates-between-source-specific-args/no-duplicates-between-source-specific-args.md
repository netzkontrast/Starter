# How To: No Duplicates Between Source Specific Args

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Different source-specific arg groups should not overlap.

## Prerequisites

**Required Modules:**
- `skill_seekers.cli.arguments.create`
- `argparse`
- `argparse`
- `argparse`
- `argparse`


## Step-by-Step Guide

### Step 1: 'Different source-specific arg groups should not overlap.'

```python
'Different source-specific arg groups should not overlap.'
```

**Verification:**
```python
assert len(web_flags & github_flags) == 0
```

### Step 2: Assign web_flags = value

```python
web_flags = {flag for arg in WEB_ARGUMENTS.values() for flag in arg['flags']}
```

**Verification:**
```python
assert len(web_flags & local_flags) == 0
```

### Step 3: Assign github_flags = value

```python
github_flags = {flag for arg in GITHUB_ARGUMENTS.values() for flag in arg['flags']}
```

**Verification:**
```python
assert len(web_flags & pdf_flags) == 0
```

### Step 4: Assign local_flags = value

```python
local_flags = {flag for arg in LOCAL_ARGUMENTS.values() for flag in arg['flags']}
```

**Verification:**
```python
assert len(github_flags & local_flags) == 0
```

### Step 5: Assign pdf_flags = value

```python
pdf_flags = {flag for arg in PDF_ARGUMENTS.values() for flag in arg['flags']}
```

**Verification:**
```python
assert len(github_flags & pdf_flags) == 0
```


## Complete Example

```python
# Workflow
'Different source-specific arg groups should not overlap.'
web_flags = {flag for arg in WEB_ARGUMENTS.values() for flag in arg['flags']}
github_flags = {flag for arg in GITHUB_ARGUMENTS.values() for flag in arg['flags']}
local_flags = {flag for arg in LOCAL_ARGUMENTS.values() for flag in arg['flags']}
pdf_flags = {flag for arg in PDF_ARGUMENTS.values() for flag in arg['flags']}
assert len(web_flags & github_flags) == 0
assert len(web_flags & local_flags) == 0
assert len(web_flags & pdf_flags) == 0
assert len(github_flags & local_flags) == 0
assert len(github_flags & pdf_flags) == 0
assert len(local_flags & pdf_flags) == 0
```

## Next Steps


---

*Source: test_create_arguments.py:335 | Complexity: Intermediate | Last updated: 2026-03-29*