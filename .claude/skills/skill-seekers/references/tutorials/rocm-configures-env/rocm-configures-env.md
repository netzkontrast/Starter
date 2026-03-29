# How To: Rocm Configures Env

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, mock, workflow, integration

## Overview

Workflow: AMD GPU → configure_rocm_env called and env vars set.

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

### Step 1: 'AMD GPU → configure_rocm_env called and env vars set.'

```python
'AMD GPU → configure_rocm_env called and env vars set.'
```

**Verification:**
```python
assert rc == 0
```

### Step 2: Assign mock_detect.return_value = GPUInfo(...)

```python
mock_detect.return_value = GPUInfo(vendor=GPUVendor.AMD, name='RX 7900', index_url=f'{_PYTORCH_BASE}/rocm6.3')
```

**Verification:**
```python
assert os.environ.get('MIOPEN_FIND_MODE') is not None
```

### Step 3: Assign mock_tess.return_value = value

```python
mock_tess.return_value = {'installed': True, 'has_eng': True, 'install_cmd': '', 'version': '5.3.0'}
```

### Step 4: Assign mock_verify.return_value = value

```python
mock_verify.return_value = {'torch': True, 'torch.cuda': False, 'torch.rocm': True, 'easyocr': True, 'opencv': True, 'pytesseract': True, 'scenedetect': True, 'faster-whisper': True}
```

### Step 5: Assign rc = run_setup(...)

```python
rc = run_setup(interactive=False)
```

**Verification:**
```python
assert rc == 0
```


## Complete Example

```python
# Setup
# Fixtures: mock_detect, mock_tess, mock_torch, mock_deps, mock_verify

# Workflow
'AMD GPU → configure_rocm_env called and env vars set.'
mock_detect.return_value = GPUInfo(vendor=GPUVendor.AMD, name='RX 7900', index_url=f'{_PYTORCH_BASE}/rocm6.3')
mock_tess.return_value = {'installed': True, 'has_eng': True, 'install_cmd': '', 'version': '5.3.0'}
mock_verify.return_value = {'torch': True, 'torch.cuda': False, 'torch.rocm': True, 'easyocr': True, 'opencv': True, 'pytesseract': True, 'scenedetect': True, 'faster-whisper': True}
rc = run_setup(interactive=False)
assert rc == 0
assert os.environ.get('MIOPEN_FIND_MODE') is not None
```

## Next Steps


---

*Source: test_video_setup.py:591 | Complexity: Intermediate | Last updated: 2026-03-29*