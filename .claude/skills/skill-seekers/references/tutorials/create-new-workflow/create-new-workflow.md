# How To: Create New Workflow

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test create new workflow

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

### Step 1: Assign result = create_workflow_tool(...)

```python
result = create_workflow_tool({'name': 'new-wf', 'content': MINIMAL_YAML})
```

**Verification:**
```python
assert 'Created' in text or 'created' in text.lower()
```

### Step 2: Assign text = _text(...)

```python
text = _text(result)
```

**Verification:**
```python
assert (tmp_user_dir / 'new-wf.yaml').exists()
```


## Complete Example

```python
# Setup
# Fixtures: tmp_user_dir

# Workflow
from skill_seekers.mcp.tools.workflow_tools import create_workflow_tool
result = create_workflow_tool({'name': 'new-wf', 'content': MINIMAL_YAML})
text = _text(result)
assert 'Created' in text or 'created' in text.lower()
assert (tmp_user_dir / 'new-wf.yaml').exists()
```

## Next Steps


---

*Source: test_workflow_tools_mcp.py:162 | Complexity: Beginner | Last updated: 2026-03-29*