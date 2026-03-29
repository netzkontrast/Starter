# How To: List Bundled Workflows Returns All

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: test list bundled workflows returns all

## Prerequisites

**Required Modules:**
- `argparse`
- `unittest.mock`
- `pytest`
- `skill_seekers.cli.workflow_runner`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli.enhancement_workflow`
- `skill_seekers.cli`
- `pathlib`


## Step-by-Step Guide

### Step 1: Assign names = list_bundled_workflows(...)

```python
names = list_bundled_workflows()
```

**Verification:**
```python
assert expected in names, f"'{expected}' not in bundled workflows: {names}"
```


## Complete Example

```python
# Workflow
from skill_seekers.cli.enhancement_workflow import list_bundled_workflows
names = list_bundled_workflows()
for expected in self.BUNDLED_NAMES:
    assert expected in names, f"'{expected}' not in bundled workflows: {names}"
```

## Next Steps


---

*Source: test_workflow_runner.py:426 | Complexity: Beginner | Last updated: 2026-03-29*