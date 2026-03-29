# How To: Detect Full Https Url

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: Full HTTPS URL should be detected as web.

## Prerequisites

**Required Modules:**
- `os`
- `pytest`
- `skill_seekers.cli.source_detector`


## Step-by-Step Guide

### Step 1: 'Full HTTPS URL should be detected as web.'

```python
'Full HTTPS URL should be detected as web.'
```

**Verification:**
```python
assert info.type == 'web'
```

### Step 2: Assign info = SourceDetector.detect(...)

```python
info = SourceDetector.detect('https://docs.react.dev/')
```

**Verification:**
```python
assert info.parsed['url'] == 'https://docs.react.dev/'
```


## Complete Example

```python
# Workflow
'Full HTTPS URL should be detected as web.'
info = SourceDetector.detect('https://docs.react.dev/')
assert info.type == 'web'
assert info.parsed['url'] == 'https://docs.react.dev/'
assert info.suggested_name == 'react'
```

## Next Steps


---

*Source: test_source_detector.py:20 | Complexity: Beginner | Last updated: 2026-03-29*