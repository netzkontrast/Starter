# How To: Updates Existing User Workflow

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test updates existing user workflow

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `__future__`
- `pytest`
- `yaml`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`
- `skill_seekers.mcp.tools.workflow_tools`

**Setup Required:**
```python
# Fixtures: user_dir, bundled_names_empty, monkeypatch
```

## Step-by-Step Guide

### Step 1: Call monkeypatch.setattr()

```python
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
```

**Verification:**
```python
assert 'Error' not in _text(result)
```

### Step 2: Call user_dir.mkdir()

```python
user_dir.mkdir(parents=True)
```

**Verification:**
```python
assert 'Updated description' in written
```

### Step 3: Call unknown.write_text()

```python
(user_dir / 'existing.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
```

### Step 4: Assign updated_content = VALID_WORKFLOW_YAML.replace(...)

```python
updated_content = VALID_WORKFLOW_YAML.replace('A test workflow', 'Updated description')
```

### Step 5: Assign result = update_workflow_tool(...)

```python
result = update_workflow_tool({'name': 'existing', 'content': updated_content})
```

**Verification:**
```python
assert 'Error' not in _text(result)
```

### Step 6: Assign written = unknown.read_text(...)

```python
written = (user_dir / 'existing.yaml').read_text(encoding='utf-8')
```

**Verification:**
```python
assert 'Updated description' in written
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_names_empty, monkeypatch

# Workflow
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
user_dir.mkdir(parents=True)
(user_dir / 'existing.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
updated_content = VALID_WORKFLOW_YAML.replace('A test workflow', 'Updated description')
from skill_seekers.mcp.tools.workflow_tools import update_workflow_tool
result = update_workflow_tool({'name': 'existing', 'content': updated_content})
assert 'Error' not in _text(result)
written = (user_dir / 'existing.yaml').read_text(encoding='utf-8')
assert 'Updated description' in written
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:359 | Complexity: Intermediate | Last updated: 2026-03-29*