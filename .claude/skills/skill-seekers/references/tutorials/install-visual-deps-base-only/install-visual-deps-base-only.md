# How To: Install Visual Deps Base Only

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: Even with all optional modules off, base video deps get installed.

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
# Fixtures: mock_run
```

## Step-by-Step Guide

### Step 1: 'Even with all optional modules off, base video deps get installed.'

```python
'Even with all optional modules off, base video deps get installed.'
```

**Verification:**
```python
assert result is True
```

### Step 2: Assign mock_run.return_value = MagicMock(...)

```python
mock_run.return_value = MagicMock(returncode=0, stdout='', stderr='')
```

**Verification:**
```python
assert 'yt-dlp' in call_args
```

### Step 3: Assign modules = SetupModules(...)

```python
modules = SetupModules(easyocr=False, opencv=False, tesseract=False, scenedetect=False, whisper=False)
```

**Verification:**
```python
assert 'youtube-transcript-api' in call_args
```

### Step 4: Assign result = install_visual_deps(...)

```python
result = install_visual_deps(modules)
```

**Verification:**
```python
assert 'easyocr' not in call_args
```

### Step 5: Assign call_args = value

```python
call_args = mock_run.call_args[0][0]
```

**Verification:**
```python
assert 'yt-dlp' in call_args
```


## Complete Example

```python
# Setup
# Fixtures: mock_run

# Workflow
'Even with all optional modules off, base video deps get installed.'
mock_run.return_value = MagicMock(returncode=0, stdout='', stderr='')
modules = SetupModules(easyocr=False, opencv=False, tesseract=False, scenedetect=False, whisper=False)
result = install_visual_deps(modules)
assert result is True
call_args = mock_run.call_args[0][0]
assert 'yt-dlp' in call_args
assert 'youtube-transcript-api' in call_args
assert 'easyocr' not in call_args
```

## Next Steps


---

*Source: test_video_setup.py:466 | Complexity: Intermediate | Last updated: 2026-03-29*