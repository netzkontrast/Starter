# How To: Returns Bundled Workflows

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test returns bundled workflows

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
# Fixtures: user_dir, bundled_fixture
```

## Step-by-Step Guide

### Step 1: Assign result = list_workflows_tool(...)

```python
result = list_workflows_tool({})
```

**Verification:**
```python
assert 'default' in names
```

### Step 2: Assign parsed = yaml.safe_load(...)

```python
parsed = yaml.safe_load(_text(result))
```

**Verification:**
```python
assert 'minimal' in names
```

### Step 3: Assign names = value

```python
names = [item['name'] for item in parsed]
```

**Verification:**
```python
assert 'default' in names
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_fixture

# Workflow
from skill_seekers.mcp.tools.workflow_tools import list_workflows_tool
result = list_workflows_tool({})
parsed = yaml.safe_load(_text(result))
names = [item['name'] for item in parsed]
assert 'default' in names
assert 'minimal' in names
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:105 | Complexity: Beginner | Last updated: 2026-03-29*