# How To: Setup Skips Source Validation

**Difficulty**: Advanced
**Estimated Time**: 10 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: --setup without --url should NOT error about missing source.

## Prerequisites

- [ ] Setup code must be executed first

**Required Modules:**
- `os`
- `subprocess`
- `sys`
- `tempfile`
- `unittest`
- `unittest.mock`
- `skill_seekers.cli.video_setup`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.video_visual`
- `skill_seekers.cli.video_models`
- `skill_seekers.cli.arguments.video`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `argparse`
- `skill_seekers.cli.arguments.video`
- `skill_seekers.cli.video_scraper`

**Setup Required:**
```python
# Fixtures: mock_setup
```

## Step-by-Step Guide

### Step 1: '--setup without --url should NOT error about missing source.'

```python
'--setup without --url should NOT error about missing source.'
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign old_argv = value

```python
old_argv = sys.argv
```

### Step 3: Assign sys.argv = value

```python
sys.argv = ['video_scraper', '--setup']
```

### Step 4: Assign rc = main(...)

```python
rc = main()
```

**Verification:**
```python
assert rc == 0
```

### Step 5: Call mock_setup.assert_called_once_with()

```python
mock_setup.assert_called_once_with(interactive=True)
```

### Step 6: Assign sys.argv = old_argv

```python
sys.argv = old_argv
```


## Complete Example

```python
# Setup
# Fixtures: mock_setup

# Workflow
'--setup without --url should NOT error about missing source.'
from skill_seekers.cli.video_scraper import main
old_argv = sys.argv
try:
    sys.argv = ['video_scraper', '--setup']
    rc = main()
    assert rc == 0
    mock_setup.assert_called_once_with(interactive=True)
finally:
    sys.argv = old_argv
```

## Next Steps


---

*Source: test_video_setup.py:717 | Complexity: Advanced | Last updated: 2026-03-29*