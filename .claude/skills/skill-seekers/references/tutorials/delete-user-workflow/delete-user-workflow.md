# How To: Delete User Workflow

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test delete user workflow

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `textwrap`
- `unittest.mock`
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

**Setup Required:**
```python
# Fixtures: tmp_user_dir
```

## Step-by-Step Guide

### Step 1: Assign wf = value

```python
wf = tmp_user_dir / 'to-delete.yaml'
```

**Verification:**
```python
assert 'Deleted' in _text(result) or 'deleted' in _text(result).lower()
```

### Step 2: Call wf.write_text()

```python
wf.write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert not wf.exists()
```

### Step 3: Assign result = delete_workflow_tool(...)

```python
result = delete_workflow_tool({'name': 'to-delete'})
```


## Complete Example

```python
# Setup
# Fixtures: tmp_user_dir

# Workflow
from skill_seekers.mcp.tools.workflow_tools import delete_workflow_tool
wf = tmp_user_dir / 'to-delete.yaml'
wf.write_text(MINIMAL_YAML, encoding='utf-8')
with _mock_bundled_names([]):
    result = delete_workflow_tool({'name': 'to-delete'})
assert 'Deleted' in _text(result) or 'deleted' in _text(result).lower()
assert not wf.exists()
```

## Next Steps


---

*Source: test_workflow_tools_mcp.py:252 | Complexity: Intermediate | Last updated: 2026-03-29*