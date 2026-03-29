# How To: Returns User Workflow Content

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test returns user workflow content

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
assert 'stages' in _text(result)
```

### Step 2: Call user_dir.mkdir()

```python
user_dir.mkdir(parents=True)
```

### Step 3: Call unknown.write_text()

```python
(user_dir / 'my-wf.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
```

### Step 4: Assign result = get_workflow_tool(...)

```python
result = get_workflow_tool({'name': 'my-wf'})
```

**Verification:**
```python
assert 'stages' in _text(result)
```


## Complete Example

```python
# Setup
# Fixtures: user_dir, bundled_names_empty, monkeypatch

# Workflow
monkeypatch.setattr('skill_seekers.mcp.tools.workflow_tools._read_bundled', lambda _name: None)
user_dir.mkdir(parents=True)
(user_dir / 'my-wf.yaml').write_text(VALID_WORKFLOW_YAML, encoding='utf-8')
from skill_seekers.mcp.tools.workflow_tools import get_workflow_tool
result = get_workflow_tool({'name': 'my-wf'})
assert 'stages' in _text(result)
```

## Next Steps


---

*Source: test_mcp_workflow_tools.py:210 | Complexity: Intermediate | Last updated: 2026-03-29*