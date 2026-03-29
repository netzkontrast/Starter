# How To: Main Delegates To Api When Key Set

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: main() calls _run_api_enhance when an API key is detected.

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

**Required Fixtures:**
- `api_client` fixture

**Setup Required:**
```python
# Fixtures: monkeypatch, tmp_path
```

## Step-by-Step Guide

### Step 1: 'main() calls _run_api_enhance when an API key is detected.'

```python
'main() calls _run_api_enhance when an API key is detected.'
```

**Verification:**
```python
assert called_with == {'target': 'gemini', 'api_key': 'AIza-test'}
```

### Step 2: Assign skill_dir = _make_skill_dir(...)

```python
skill_dir = _make_skill_dir(tmp_path)
```

### Step 3: Call monkeypatch.setenv()

```python
monkeypatch.setenv('GOOGLE_API_KEY', 'AIza-test')
```

### Step 4: Call monkeypatch.delenv()

```python
monkeypatch.delenv('ANTHROPIC_API_KEY', raising=False)
```

### Step 5: Call monkeypatch.delenv()

```python
monkeypatch.delenv('ANTHROPIC_AUTH_TOKEN', raising=False)
```

### Step 6: Call monkeypatch.delenv()

```python
monkeypatch.delenv('OPENAI_API_KEY', raising=False)
```

### Step 7: Call monkeypatch.setattr()

```python
monkeypatch.setattr(sys, 'argv', ['enhance', str(skill_dir)])
```

### Step 8: Assign called_with = value

```python
called_with = {}
```

### Step 9: Call monkeypatch.setattr()

```python
monkeypatch.setattr('skill_seekers.cli.enhance_skill_local._run_api_enhance', fake_run_api)
```

### Step 10: Call main()

```python
main()
```

**Verification:**
```python
assert called_with == {'target': 'gemini', 'api_key': 'AIza-test'}
```

### Step 11: Assign unknown = target

```python
called_with['target'] = target
```

### Step 12: Assign unknown = api_key

```python
called_with['api_key'] = api_key
```


## Complete Example

```python
# Setup
# Fixtures: monkeypatch, tmp_path

# Workflow
'main() calls _run_api_enhance when an API key is detected.'
import sys
from skill_seekers.cli.enhance_skill_local import main
skill_dir = _make_skill_dir(tmp_path)
monkeypatch.setenv('GOOGLE_API_KEY', 'AIza-test')
monkeypatch.delenv('ANTHROPIC_API_KEY', raising=False)
monkeypatch.delenv('ANTHROPIC_AUTH_TOKEN', raising=False)
monkeypatch.delenv('OPENAI_API_KEY', raising=False)
monkeypatch.setattr(sys, 'argv', ['enhance', str(skill_dir)])
called_with = {}

def fake_run_api(target, api_key):
    called_with['target'] = target
    called_with['api_key'] = api_key
monkeypatch.setattr('skill_seekers.cli.enhance_skill_local._run_api_enhance', fake_run_api)
main()
assert called_with == {'target': 'gemini', 'api_key': 'AIza-test'}
```

## Next Steps


---

*Source: test_enhance_skill_local.py:671 | Complexity: Advanced | Last updated: 2026-03-29*