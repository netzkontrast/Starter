# How To: Summarization Applied When Requested

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: When use_summarization=True, result should be smaller (or contain marker).

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

### Step 1: 'When use_summarization=True, result should be smaller (or contain marker).'

```python
'When use_summarization=True, result should be smaller (or contain marker).'
```

**Verification:**
```python
assert prompt is not None
```

### Step 2: Assign big_content = value

```python
big_content = 'Reference line with lots of content.\n' * 1000
```

**Verification:**
```python
assert 'intelligently summarized' in prompt.lower()
```

### Step 3: Assign skill_dir = _make_skill_dir_with_refs(...)

```python
skill_dir = _make_skill_dir_with_refs(tmp_path, ref_content=big_content)
```

### Step 4: Assign enhancer = LocalSkillEnhancer(...)

```python
enhancer = LocalSkillEnhancer(skill_dir)
```

### Step 5: Assign prompt = enhancer.create_enhancement_prompt(...)

```python
prompt = enhancer.create_enhancement_prompt(use_summarization=True)
```

**Verification:**
```python
assert prompt is not None
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'When use_summarization=True, result should be smaller (or contain marker).'
big_content = 'Reference line with lots of content.\n' * 1000
skill_dir = _make_skill_dir_with_refs(tmp_path, ref_content=big_content)
enhancer = LocalSkillEnhancer(skill_dir)
prompt = enhancer.create_enhancement_prompt(use_summarization=True)
assert prompt is not None
assert 'intelligently summarized' in prompt.lower()
```

## Next Steps


---

*Source: test_enhance_skill_local.py:415 | Complexity: Intermediate | Last updated: 2026-03-29*