# How To: Root Api Mode Allowed

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: Even as root, API mode should be selected (not blocked).

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `argparse`
- `sys`
- `pytest`
- `skill_seekers.cli.enhance_command`
- `os`
- `skill_seekers.cli.enhance_command`
- `os`
- `skill_seekers.cli.enhance_command`
- `os`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `argparse`
- `skill_seekers.cli.arguments.enhance`
- `argparse`
- `skill_seekers.cli.arguments.enhance`
- `os`
- `os`
- `skill_seekers.cli.config_manager`
- `skill_seekers.cli.config_manager`
- `skill_seekers.cli.config_manager`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`
- `skill_seekers.cli.enhance_command`

**Required Fixtures:**
- `api_client` fixture

**Setup Required:**
```python
# Fixtures: monkeypatch, tmp_path
```

## Step-by-Step Guide

### Step 1: 'Even as root, API mode should be selected (not blocked).'

```python
'Even as root, API mode should be selected (not blocked).'
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign skill_dir = _make_skill_dir(...)

```python
skill_dir = _make_skill_dir(tmp_path)
```

### Step 3: Call monkeypatch.setattr()

```python
monkeypatch.setattr(os, 'getuid', lambda: 0)
```

### Step 4: Call monkeypatch.setenv()

```python
monkeypatch.setenv('ANTHROPIC_API_KEY', 'sk-ant-test')
```

### Step 5: Call monkeypatch.setattr()

```python
monkeypatch.setattr('skill_seekers.cli.enhance_command._run_api_mode', lambda *_: 0)
```

### Step 6: Assign sys_argv_backup = sys.argv.copy(...)

```python
sys_argv_backup = sys.argv.copy()
```

### Step 7: Assign sys.argv = value

```python
sys.argv = ['enhance_command.py', str(skill_dir)]
```

### Step 8: Assign rc = main(...)

```python
rc = main()
```

**Verification:**
```python
assert rc == 0
```

### Step 9: Assign sys.argv = sys_argv_backup

```python
sys.argv = sys_argv_backup
```


## Complete Example

```python
# Setup
# Fixtures: monkeypatch, tmp_path

# Workflow
'Even as root, API mode should be selected (not blocked).'
import os
skill_dir = _make_skill_dir(tmp_path)
monkeypatch.setattr(os, 'getuid', lambda: 0)
monkeypatch.setenv('ANTHROPIC_API_KEY', 'sk-ant-test')
monkeypatch.setattr('skill_seekers.cli.enhance_command._run_api_mode', lambda *_: 0)
sys_argv_backup = sys.argv.copy()
sys.argv = ['enhance_command.py', str(skill_dir)]
try:
    from skill_seekers.cli.enhance_command import main
    rc = main()
    assert rc == 0
finally:
    sys.argv = sys_argv_backup
```

## Next Steps


---

*Source: test_enhance_command.py:329 | Complexity: Advanced | Last updated: 2026-03-29*