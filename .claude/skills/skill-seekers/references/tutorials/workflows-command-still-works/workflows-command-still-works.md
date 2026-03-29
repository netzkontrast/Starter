# How To: Workflows Command Still Works

**Difficulty**: Beginner
**Estimated Time**: 5 minutes
**Tags**: workflow, integration

## Overview

Workflow: The new workflows subcommand is accessible via the main CLI.

## Prerequisites

**Required Modules:**
- `pytest`
- `subprocess`
- `skill_seekers.cli.source_detector`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`
- `json`
- `skill_seekers.cli.source_detector`
- `subprocess`
- `argparse`
- `skill_seekers.cli.create_command`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`
- `subprocess`


## Step-by-Step Guide

### Step 1: 'The new workflows subcommand is accessible via the main CLI.'

```python
'The new workflows subcommand is accessible via the main CLI.'
```

**Verification:**
```python
assert result.returncode == 0
```

### Step 2: Assign result = subprocess.run(...)

```python
result = subprocess.run(['skill-seekers', 'workflows', '--help'], capture_output=True, text=True, timeout=10)
```

**Verification:**
```python
assert 'workflow' in result.stdout.lower()
```


## Complete Example

```python
# Workflow
'The new workflows subcommand is accessible via the main CLI.'
import subprocess
result = subprocess.run(['skill-seekers', 'workflows', '--help'], capture_output=True, text=True, timeout=10)
assert result.returncode == 0
assert 'workflow' in result.stdout.lower()
```

## Next Steps


---

*Source: test_create_integration_basic.py:312 | Complexity: Beginner | Last updated: 2026-03-29*