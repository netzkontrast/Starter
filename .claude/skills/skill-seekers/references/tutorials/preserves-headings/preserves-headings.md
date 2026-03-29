# How To: Preserves Headings

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test preserves headings

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `unittest.mock`
- `pytest`
- `skill_seekers.cli.enhance_skill_local`
- `time`
- `time`
- `skill_seekers.cli.enhance_skill_local`
- `skill_seekers.cli.enhance_skill_local`
- `skill_seekers.cli.enhance_skill_local`
- `skill_seekers.cli.enhance_skill_local`
- `skill_seekers.cli.enhance_skill_local`
- `skill_seekers.cli.enhance_skill_local`
- `sys`
- `skill_seekers.cli.enhance_skill_local`
- `sys`
- `skill_seekers.cli.enhance_skill_local`
- `sys`
- `skill_seekers.cli.enhance_skill_local`
- `time`

**Setup Required:**
```python
# Fixtures: tmp_path
```

## Step-by-Step Guide

### Step 1: Assign enhancer = self._enhancer(...)

```python
enhancer = self._enhancer(tmp_path)
```

**Verification:**
```python
assert '## My Heading' in result
```

### Step 2: Assign content = value

```python
content = '\n'.join(['Intro line'] * 20) + '\n'
```

### Step 3: Assign result = enhancer.summarize_reference(...)

```python
result = enhancer.summarize_reference(content)
```

**Verification:**
```python
assert '## My Heading' in result
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
enhancer = self._enhancer(tmp_path)
content = '\n'.join(['Intro line'] * 20) + '\n'
content += '## My Heading\n\nFirst paragraph.\nSecond paragraph.\n'
content += '\n'.join(['Other line'] * 20)
result = enhancer.summarize_reference(content)
assert '## My Heading' in result
```

## Next Steps


---

*Source: test_enhance_skill_local.py:338 | Complexity: Beginner | Last updated: 2026-03-29*