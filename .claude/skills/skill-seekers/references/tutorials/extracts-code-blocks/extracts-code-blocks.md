# How To: Extracts Code Blocks

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test extracts code blocks

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
assert '```python' in result
```

### Step 2: Assign content = value

```python
content = '\n'.join(['Intro line'] * 20) + '\n'
```

**Verification:**
```python
assert "print('hello')" in result
```

### Step 3: Assign result = enhancer.summarize_reference(...)

```python
result = enhancer.summarize_reference(content)
```

**Verification:**
```python
assert '```python' in result
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
enhancer = self._enhancer(tmp_path)
content = '\n'.join(['Intro line'] * 20) + '\n'
content += "```python\nprint('hello')\n```\n"
content += '\n'.join(['Other line'] * 20)
result = enhancer.summarize_reference(content)
assert '```python' in result
assert "print('hello')" in result
```

## Next Steps


---

*Source: test_enhance_skill_local.py:329 | Complexity: Beginner | Last updated: 2026-03-29*