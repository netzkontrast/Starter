# How To: Root Local Mode Blocked

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test root local mode blocked

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

**Setup Required:**
```python
# Fixtures: monkeypatch, tmp_path
```

## Step-by-Step Guide

### Step 1: Assign skill_dir = _make_skill_dir(...)

```python
skill_dir = _make_skill_dir(tmp_path)
```

**Verification:**
```python
assert rc == 1
```

### Step 2: Call monkeypatch.setattr()

```python
monkeypatch.setattr(os, 'getuid', lambda: 0)
```

### Step 3: Call monkeypatch.delenv()

```python
monkeypatch.delenv('ANTHROPIC_API_KEY', raising=False)
```

### Step 4: Call monkeypatch.delenv()

```python
monkeypatch.delenv('ANTHROPIC_AUTH_TOKEN', raising=False)
```

### Step 5: Call monkeypatch.delenv()

```python
monkeypatch.delenv('GOOGLE_API_KEY', raising=False)
```

### Step 6: Call monkeypatch.delenv()

```python
monkeypatch.delenv('OPENAI_API_KEY', raising=False)
```

### Step 7: Assign sys_argv_backup = sys.argv.copy(...)

```python
sys_argv_backup = sys.argv.copy()
```

### Step 8: Assign sys.argv = value

```python
sys.argv = ['enhance_command.py', str(skill_dir)]
```

### Step 9: Assign rc = main(...)

```python
rc = main()
```

**Verification:**
```python
assert rc == 1
```

### Step 10: Assign sys.argv = sys_argv_backup

```python
sys.argv = sys_argv_backup
```


## Complete Example

```python
# Setup
# Fixtures: monkeypatch, tmp_path

# Workflow
import os
skill_dir = _make_skill_dir(tmp_path)
monkeypatch.setattr(os, 'getuid', lambda: 0)
monkeypatch.delenv('ANTHROPIC_API_KEY', raising=False)
monkeypatch.delenv('ANTHROPIC_AUTH_TOKEN', raising=False)
monkeypatch.delenv('GOOGLE_API_KEY', raising=False)
monkeypatch.delenv('OPENAI_API_KEY', raising=False)
sys_argv_backup = sys.argv.copy()
sys.argv = ['enhance_command.py', str(skill_dir)]
try:
    from skill_seekers.cli.enhance_command import main
    rc = main()
    assert rc == 1
finally:
    sys.argv = sys_argv_backup
```

## Next Steps


---

*Source: test_enhance_command.py:309 | Complexity: Advanced | Last updated: 2026-03-29*