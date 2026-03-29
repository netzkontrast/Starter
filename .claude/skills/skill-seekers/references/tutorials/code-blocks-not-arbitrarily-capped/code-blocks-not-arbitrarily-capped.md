# How To: Code Blocks Not Arbitrarily Capped

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Code blocks should not be arbitrarily capped at 5 - should use token budget.

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

### Step 1: 'Code blocks should not be arbitrarily capped at 5 - should use token budget.'

```python
'Code blocks should not be arbitrarily capped at 5 - should use token budget.'
```

**Verification:**
```python
assert code_block_count > 5, f'Expected >5 code blocks, got {code_block_count}'
```

### Step 2: Assign enhancer = self._enhancer(...)

```python
enhancer = self._enhancer(tmp_path)
```

### Step 3: Assign content = value

```python
content = '\n'.join(['Intro line'] * 10) + '\n'
```

### Step 4: Assign result = enhancer.summarize_reference(...)

```python
result = enhancer.summarize_reference(content, target_ratio=0.9)
```

### Step 5: Assign code_block_count = value

```python
code_block_count = result.count('```') // 2
```

**Verification:**
```python
assert code_block_count > 5, f'Expected >5 code blocks, got {code_block_count}'
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'Code blocks should not be arbitrarily capped at 5 - should use token budget.'
enhancer = self._enhancer(tmp_path)
content = '\n'.join(['Intro line'] * 10) + '\n'
for i in range(10):
    content += f'```\ncode_block_{i}()\n```\n'
result = enhancer.summarize_reference(content, target_ratio=0.9)
code_block_count = result.count('```') // 2
assert code_block_count > 5, f'Expected >5 code blocks, got {code_block_count}'
```

## Next Steps


---

*Source: test_enhance_skill_local.py:359 | Complexity: Intermediate | Last updated: 2026-03-29*