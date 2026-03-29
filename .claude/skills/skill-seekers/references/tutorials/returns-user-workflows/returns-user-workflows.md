# How To: Returns User Workflows

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test returns user workflows

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
assert any((item['name'] == 'my-workflow' and item['source'] == 'user' for item in parsed))
```

### Step 2: Call user_dir.mkdir()

```python
user_dir.mkdir(parents=True)
```

### Step 3: Call unknown.write_text()

```python
(user_dir / 'my-workflow.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
```

### Step 4: Assign result = list_workflows_tool(...)

```python
result = list_workflows_tool({})
```

### Step 5: Assign parsed = yaml.safe_load(...)

```python
parsed = yaml.safe_load(_text(result))
```

**Verification:**
```python
assert any((item['name'] == 'my-workflow' and item['source'] == 'user' for item in parsed))
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_names_empty, monkeypatch

# Workflow
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
user_dir.mkdir(parents=True)
(user_dir / 'my-workflow.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
from skill_seekers.mcp.tools.workflow_tools import list_workflows_tool
result = list_workflows_tool({})
parsed = yaml.safe_load(_text(result))
assert any((item['name'] == 'my-workflow' and item['source'] == 'user' for item in parsed))
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:122 | Complexity: Intermediate | Last updated: 2026-03-29*