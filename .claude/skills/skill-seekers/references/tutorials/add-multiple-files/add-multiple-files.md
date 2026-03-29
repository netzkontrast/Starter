# How To: Add Multiple Files

**Difficulty**: Intermediate
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: Adding multiple YAML files installs all of them.

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
# Fixtures: capsys, tmp_user_dir, tmp_path
```

## Step-by-Step Guide

### Step 1: 'Adding multiple YAML files installs all of them.'

```python
'Adding multiple YAML files installs all of them.'
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign wf1 = value

```python
wf1 = tmp_path / 'wf-one.yaml'
```

**Verification:**
```python
assert (tmp_user_dir / 'wf-one.yaml').exists()
```

### Step 3: Assign wf2 = value

```python
wf2 = tmp_path / 'wf-two.yaml'
```

**Verification:**
```python
assert (tmp_user_dir / 'wf-two.yaml').exists()
```

### Step 4: Call wf1.write_text()

```python
wf1.write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert 'wf-one' in out
```

### Step 5: Call wf2.write_text()

```python
wf2.write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert 'wf-two' in out
```

### Step 6: Assign rc = cmd_add(...)

```python
rc = cmd_add([str(wf1), str(wf2)])
```

**Verification:**
```python
assert rc == 0
```

### Step 7: Assign out = value

```python
out = capsys.readouterr().out
```

**Verification:**
```python
assert 'wf-one' in out
```


## Complete Example

```python
# Setup
# Fixtures: capsys, tmp_user_dir, tmp_path

# Workflow
'Adding multiple YAML files installs all of them.'
wf1 = tmp_path / 'wf-one.yaml'
wf2 = tmp_path / 'wf-two.yaml'
wf1.write_text(MINIMAL_YAML, encoding='utf-8')
wf2.write_text(MINIMAL_YAML, encoding='utf-8')
rc = cmd_add([str(wf1), str(wf2)])
assert rc == 0
assert (tmp_user_dir / 'wf-one.yaml').exists()
assert (tmp_user_dir / 'wf-two.yaml').exists()
out = capsys.readouterr().out
assert 'wf-one' in out
assert 'wf-two' in out
```

## Next Steps


---

*Source: test_workflows_command.py:254 | Complexity: Intermediate | Last updated: 2026-03-29*