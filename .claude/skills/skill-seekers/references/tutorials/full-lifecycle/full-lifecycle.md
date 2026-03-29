# How To: Full Lifecycle

**Difficulty**: Advanced
**Estimated Time**: 20 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: Create → list → get → update → delete a workflow end-to-end.

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

### Step 1: 'Create → list → get → update → delete a workflow end-to-end.'

```python
'Create → list → get → update → delete a workflow end-to-end.'
```

**Verification:**
```python
assert 'Error' not in _text(r)
```

### Step 2: Call monkeypatch.setattr()

```python
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
```

**Verification:**
```python
assert any((p['name'] == 'lifecycle' and p['source'] == 'user' for p in parsed))
```

### Step 3: Assign r = create_workflow_tool(...)

```python
r = create_workflow_tool({'name': 'lifecycle', 'content': VALID_WORKFLOW_YAML})
```

**Verification:**
```python
assert 'stages' in _text(r)
```

### Step 4: Assign r = list_workflows_tool(...)

```python
r = list_workflows_tool({})
```

**Verification:**
```python
assert 'Error' not in _text(r)
```

### Step 5: Assign parsed = yaml.safe_load(...)

```python
parsed = yaml.safe_load(_text(r))
```

**Verification:**
```python
assert 'Updated in lifecycle test' in _text(r)
```

### Step 6: Assign r = get_workflow_tool(...)

```python
r = get_workflow_tool({'name': 'lifecycle'})
```

**Verification:**
```python
assert 'Error' not in _text(r)
```

### Step 7: Assign updated = VALID_WORKFLOW_YAML.replace(...)

```python
updated = VALID_WORKFLOW_YAML.replace('A test workflow', 'Updated in lifecycle test')
```

**Verification:**
```python
assert 'not found' in _text(r).lower()
```

### Step 8: Assign r = update_workflow_tool(...)

```python
r = update_workflow_tool({'name': 'lifecycle', 'content': updated})
```

**Verification:**
```python
assert 'Error' not in _text(r)
```

### Step 9: Assign r = get_workflow_tool(...)

```python
r = get_workflow_tool({'name': 'lifecycle'})
```

**Verification:**
```python
assert 'Updated in lifecycle test' in _text(r)
```

### Step 10: Assign r = delete_workflow_tool(...)

```python
r = delete_workflow_tool({'name': 'lifecycle'})
```

**Verification:**
```python
assert 'Error' not in _text(r)
```

### Step 11: Assign r = get_workflow_tool(...)

```python
r = get_workflow_tool({'name': 'lifecycle'})
```

**Verification:**
```python
assert 'not found' in _text(r).lower()
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_names_empty, monkeypatch

# Workflow
'Create → list → get → update → delete a workflow end-to-end.'
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
from skill_seekers.mcp.tools.workflow_tools import create_workflow_tool, delete_workflow_tool, get_workflow_tool, list_workflows_tool, update_workflow_tool
r = create_workflow_tool({'name': 'lifecycle', 'content': VALID_WORKFLOW_YAML})
assert 'Error' not in _text(r)
r = list_workflows_tool({})
parsed = yaml.safe_load(_text(r))
assert any((p['name'] == 'lifecycle' and p['source'] == 'user' for p in parsed))
r = get_workflow_tool({'name': 'lifecycle'})
assert 'stages' in _text(r)
updated = VALID_WORKFLOW_YAML.replace('A test workflow', 'Updated in lifecycle test')
r = update_workflow_tool({'name': 'lifecycle', 'content': updated})
assert 'Error' not in _text(r)
r = get_workflow_tool({'name': 'lifecycle'})
assert 'Updated in lifecycle test' in _text(r)
r = delete_workflow_tool({'name': 'lifecycle'})
assert 'Error' not in _text(r)
r = get_workflow_tool({'name': 'lifecycle'})
assert 'not found' in _text(r).lower()
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:489 | Complexity: Advanced | Last updated: 2026-03-29*