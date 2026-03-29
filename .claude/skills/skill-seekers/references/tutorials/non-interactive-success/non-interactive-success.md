# How To: Non Interactive Success

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: test non interactive success

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
# Fixtures: mock_detect, mock_tess, mock_torch, mock_deps, mock_verify
```

## Step-by-Step Guide

### Step 1: Assign mock_detect.return_value = GPUInfo(...)

```python
mock_detect.return_value = GPUInfo(vendor=GPUVendor.NONE, name='CPU-only', index_url=f'{_PYTORCH_BASE}/cpu')
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign mock_tess.return_value = value

```python
mock_tess.return_value = {'installed': True, 'has_eng': True, 'install_cmd': '', 'version': '5.3.0'}
```

### Step 3: Assign mock_verify.return_value = value

```python
mock_verify.return_value = {'torch': True, 'torch.cuda': False, 'torch.rocm': False, 'easyocr': True, 'opencv': True, 'pytesseract': True, 'scenedetect': True, 'faster-whisper': True}
```

### Step 4: Assign rc = run_setup(...)

```python
rc = run_setup(interactive=False)
```

**Verification:**
```python
assert rc == 0
```

### Step 5: Call mock_torch.assert_called_once()

```python
mock_torch.assert_called_once()
```

### Step 6: Call mock_deps.assert_called_once()

```python
mock_deps.assert_called_once()
```


## Complete Example

```python
# Setup
# Fixtures: mock_detect, mock_tess, mock_torch, mock_deps, mock_verify

# Workflow
mock_detect.return_value = GPUInfo(vendor=GPUVendor.NONE, name='CPU-only', index_url=f'{_PYTORCH_BASE}/cpu')
mock_tess.return_value = {'installed': True, 'has_eng': True, 'install_cmd': '', 'version': '5.3.0'}
mock_verify.return_value = {'torch': True, 'torch.cuda': False, 'torch.rocm': False, 'easyocr': True, 'opencv': True, 'pytesseract': True, 'scenedetect': True, 'faster-whisper': True}
rc = run_setup(interactive=False)
assert rc == 0
mock_torch.assert_called_once()
mock_deps.assert_called_once()
```

## Next Steps


---

*Source: test_video_setup.py:520 | Complexity: Intermediate | Last updated: 2026-03-29*