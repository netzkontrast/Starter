# How To: Background Returns True Immediately

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: _run_background should return True after starting thread, not after completion.

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

### Step 1: '_run_background should return True after starting thread, not after completion.'

```python
'_run_background should return True after starting thread, not after completion.'
```

**Verification:**
```python
assert result is True
```

### Step 2: Assign skill_dir = _make_skill_dir_with_refs(...)

```python
skill_dir = _make_skill_dir_with_refs(tmp_path)
```

**Verification:**
```python
assert elapsed < 0.4, f'_run_background took {elapsed:.2f}s - should return immediately'
```

### Step 3: Assign enhancer = LocalSkillEnhancer(...)

```python
enhancer = LocalSkillEnhancer(skill_dir, agent='claude')
```

**Verification:**
```python
assert result is True
```

### Step 4: Call time.sleep()

```python
time.sleep(0.5)
```

### Step 5: Assign start = time.time(...)

```python
start = time.time()
```

### Step 6: Assign result = enhancer._run_background(...)

```python
result = enhancer._run_background(headless=True, timeout=10)
```

### Step 7: Assign elapsed = value

```python
elapsed = time.time() - start
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path

# Workflow
'_run_background should return True after starting thread, not after completion.'
skill_dir = _make_skill_dir_with_refs(tmp_path)
enhancer = LocalSkillEnhancer(skill_dir, agent='claude')
import time

def _slow_run(*_args, **_kwargs):
    time.sleep(0.5)
    return True
with patch.object(enhancer, '_run_headless', side_effect=_slow_run):
    start = time.time()
    result = enhancer._run_background(headless=True, timeout=10)
    elapsed = time.time() - start
assert result is True
assert elapsed < 0.4, f'_run_background took {elapsed:.2f}s - should return immediately'
```

## Next Steps


---

*Source: test_enhance_skill_local.py:582 | Complexity: Intermediate | Last updated: 2026-03-29*