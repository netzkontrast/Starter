# How To: No Workflows

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test no workflows

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

### Step 1: Assign rc = cmd_list(...)

```python
rc = cmd_list()
```

**Verification:**
```python
assert rc == 0
```


## Complete Example

```python
# Setup
# Fixtures: capsys, tmp_user_dir

# Workflow
with _mock_bundled([]):
    rc = cmd_list()
assert rc == 0
assert 'No workflows' in capsys.readouterr().out
```

## Next Steps


---

*Source: test_workflows_command.py:118 | Complexity: Intermediate | Last updated: 2026-03-29*