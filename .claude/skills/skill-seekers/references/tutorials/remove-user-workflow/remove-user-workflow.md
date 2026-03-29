# How To: Remove User Workflow

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test remove user workflow

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `textwrap`
- `unittest.mock`
- `pytest`
- `skill_seekers.cli.workflows_command`
- `skill_seekers.cli.workflows_command`
- `skill_seekers.cli.workflows_command`
- `skill_seekers.cli.workflows_command`
- `argparse`

**Setup Required:**
```python
# Fixtures: capsys, tmp_user_dir
```

## Step-by-Step Guide

### Step 1: Assign wf = value

```python
wf = tmp_user_dir / 'my-wf.yaml'
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Call wf.write_text()

```python
wf.write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert not wf.exists()
```

### Step 3: Assign rc = cmd_remove(...)

```python
rc = cmd_remove(['my-wf'])
```

**Verification:**
```python
assert 'Removed' in capsys.readouterr().out
```


## Complete Example

```python
# Setup
# Fixtures: capsys, tmp_user_dir

# Workflow
wf = tmp_user_dir / 'my-wf.yaml'
wf.write_text(MINIMAL_YAML, encoding='utf-8')
with _mock_bundled([]):
    rc = cmd_remove(['my-wf'])
assert rc == 0
assert not wf.exists()
assert 'Removed' in capsys.readouterr().out
```

## Next Steps


---

*Source: test_workflows_command.py:299 | Complexity: Intermediate | Last updated: 2026-03-29*