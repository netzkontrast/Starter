# How To: Get User Workflow

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test get user workflow

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

### Step 1: Call unknown.write_text()

```python
(tmp_user_dir / 'custom.yaml').write_text(MINIMAL_YAML, encoding='utf-8')
```

**Verification:**
```python
assert 'stages' in _text(result)
```

### Step 2: Assign result = get_workflow_tool(...)

```python
result = get_workflow_tool({'name': 'custom'})
```

**Verification:**
```python
assert 'stages' in _text(result)
```


## Complete Example

```python
# Setup
# Fixtures: tmp_user_dir

# Workflow
from skill_seekers.mcp.tools.workflow_tools import get_workflow_tool
(tmp_user_dir / 'custom.yaml').write_text(MINIMAL_YAML, encoding='utf-8')
result = get_workflow_tool({'name': 'custom'})
assert 'stages' in _text(result)
```

## Next Steps


---

*Source: test_workflow_tools_mcp.py:148 | Complexity: Beginner | Last updated: 2026-03-29*