# How To: List User Workflows Empty When No User Dir

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: list_user_workflows returns [] when ~/.config/skill-seekers/workflows/ does not exist.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `argparse`
- `unittest.mock`
- `pytest`
- `skill_seekers.cli.workflow_runner`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli`
- `pathlib`

**Setup Required:**
```python
# Fixtures: tmp_path, monkeypatch
```

## Step-by-Step Guide

### Step 1: 'list_user_workflows returns [] when ~/.config/skill-seekers/workflows/ does not exist.'

```python
'list_user_workflows returns [] when ~/.config/skill-seekers/workflows/ does not exist.'
```

**Verification:**
```python
assert names == []
```

### Step 2: Assign fake_home = value

```python
fake_home = tmp_path / 'fake_home'
```

### Step 3: Call fake_home.mkdir()

```python
fake_home.mkdir()
```

### Step 4: Call monkeypatch.setenv()

```python
monkeypatch.setenv('HOME', str(fake_home))
```

### Step 5: Call monkeypatch.setattr()

```python
monkeypatch.setattr(pathlib.Path, 'home', staticmethod(lambda: fake_home))
```

### Step 6: Assign names = ew_mod.list_user_workflows(...)

```python
names = ew_mod.list_user_workflows()
```

**Verification:**
```python
assert names == []
```


## Complete Example

```python
# Setup
# Fixtures: tmp_path, monkeypatch

# Workflow
'list_user_workflows returns [] when ~/.config/skill-seekers/workflows/ does not exist.'
from skill_seekers.cli import enhancement_workflow as ew_mod
import pathlib
fake_home = tmp_path / 'fake_home'
fake_home.mkdir()
monkeypatch.setenv('HOME', str(fake_home))
monkeypatch.setattr(pathlib.Path, 'home', staticmethod(lambda: fake_home))
names = ew_mod.list_user_workflows()
assert names == []
```

## Next Steps


---

*Source: test_workflow_runner.py:433 | Complexity: Intermediate | Last updated: 2026-03-29*