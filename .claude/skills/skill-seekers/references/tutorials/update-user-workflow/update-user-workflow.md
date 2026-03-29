# How To: Update User Workflow

**Difficulty**: Intermediate
**Estimated Time**: 5 minutes
**Tags**: mock, workflow, integration

## Overview

Workflow: test update user workflow

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
(tmp_user_dir / 'my-wf.yaml').write_text('old content', encoding='utf-8')
```

**Verification:**
```python
assert 'Updated' in text or 'updated' in text.lower()
```

### Step 2: Assign text = _text(...)

```python
text = _text(result)
```

**Verification:**
```python
assert (tmp_user_dir / 'my-wf.yaml').read_text() == MINIMAL_YAML
```

### Step 3: Assign result = update_workflow_tool(...)

```python
result = update_workflow_tool({'name': 'my-wf', 'content': MINIMAL_YAML})
```


## Complete Example

```python
# Setup
# Fixtures: tmp_user_dir

# Workflow
from skill_seekers.mcp.tools.workflow_tools import update_workflow_tool
(tmp_user_dir / 'my-wf.yaml').write_text('old content', encoding='utf-8')
with _mock_bundled_names([]):
    result = update_workflow_tool({'name': 'my-wf', 'content': MINIMAL_YAML})
text = _text(result)
assert 'Updated' in text or 'updated' in text.lower()
assert (tmp_user_dir / 'my-wf.yaml').read_text() == MINIMAL_YAML
```

## Next Steps


---

*Source: test_workflow_tools_mcp.py:202 | Complexity: Intermediate | Last updated: 2026-03-29*