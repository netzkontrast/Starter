# How To: Not Found User Workflow Returns Error

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test not found user workflow returns error

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
assert 'Error' in _text(result)
```

### Step 2: Assign result = delete_workflow_tool(...)

```python
result = delete_workflow_tool({'name': 'no-such-wf'})
```

**Verification:**
```python
assert 'not found' in _text(result).lower()
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_names_empty, monkeypatch

# Workflow
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
from skill_seekers.mcp.tools.workflow_tools import delete_workflow_tool
result = delete_workflow_tool({'name': 'no-such-wf'})
assert 'Error' in _text(result)
assert 'not found' in _text(result).lower()
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:426 | Complexity: Intermediate | Last updated: 2026-03-29*