# How To: Show User Workflow

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test show user workflow

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

### Step 1: Call unknown.write_text()

```python
(tmp_user_dir / 'my-wf.yaml').write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign rc = cmd_show(...)

```python
rc = cmd_show('my-wf')
```

**Verification:**
```python
assert 'name: test-workflow' in capsys.readouterr().out
```


## Complete Example

```python
# Setup
# Fixtures: capsys, tmp_user_dir

# Workflow
(tmp_user_dir / 'my-wf.yaml').write_text(MINIMAL_YAML, encoding='utf-8')
rc = cmd_show('my-wf')
assert rc == 0
assert 'name: test-workflow' in capsys.readouterr().out
```

## Next Steps


---

*Source: test_workflows_command.py:152 | Complexity: Beginner | Last updated: 2026-03-29*