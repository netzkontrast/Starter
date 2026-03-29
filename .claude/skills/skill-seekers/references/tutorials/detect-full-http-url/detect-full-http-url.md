# How To: Detect Full Http Url

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: Full HTTP URL should be detected as web.

## Prerequisites

**Required Modules:**
- `os`
- `pytest`
- `skill_seekers.cli.source_detector`


## Step-by-Step Guide

### Step 1: 'Full HTTP URL should be detected as web.'

```python
'Full HTTP URL should be detected as web.'
```

**Verification:**
```python
assert info.type == 'web'
```

### Step 2: Assign info = SourceDetector.detect(...)

```python
info = SourceDetector.detect('http://example.com/docs')
```

**Verification:**
```python
assert info.parsed['url'] == 'http://example.com/docs'
```


## Complete Example

```python
# Workflow
'Full HTTP URL should be detected as web.'
info = SourceDetector.detect('http://example.com/docs')
assert info.type == 'web'
assert info.parsed['url'] == 'http://example.com/docs'
```

## Next Steps


---

*Source: test_source_detector.py:27 | Complexity: Beginner | Last updated: 2026-03-29*