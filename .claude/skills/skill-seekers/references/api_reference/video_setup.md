# API Reference: video_setup.py

**Language**: Python

**Source**: `src/skill_seekers/cli/video_setup.py`

---

## Classes

### GPUVendor

Detected GPU hardware vendor.

**Inherits from**: Enum



### GPUInfo

Result of GPU auto-detection.

**Inherits from**: (none)



### SetupModules

Which modules to install during setup.

**Inherits from**: (none)



## Functions

### _cuda_version_to_index_url(version: str) → str

Map a CUDA version string to the correct PyTorch index URL.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| version | str | - | - |

**Returns**: `str`



### _rocm_version_to_index_url(version: str) → str

Map a ROCm version string to the correct PyTorch index URL.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| version | str | - | - |

**Returns**: `str`



### detect_gpu() → GPUInfo

Detect GPU vendor and compute version using system tools.

Detection order:
1. nvidia-smi  -> NVIDIA + CUDA version
2. rocminfo    -> AMD + ROCm version
3. lspci       -> AMD GPU present but no ROCm (warn)
4. Fallback    -> CPU-only

**Returns**: `GPUInfo`



### _check_nvidia() → GPUInfo | None

Detect NVIDIA GPU via nvidia-smi.

**Returns**: `GPUInfo | None`



### _check_amd_rocm() → GPUInfo | None

Detect AMD GPU via rocminfo.

**Returns**: `GPUInfo | None`



### _read_rocm_version() → str

Read ROCm version from /opt/rocm/.info/version.

**Returns**: `str`



### _check_amd_lspci() → GPUInfo | None

Detect AMD GPU via lspci when ROCm isn't installed.

**Returns**: `GPUInfo | None`



### is_in_venv() → bool

Check if the current Python process is running inside a venv.

**Returns**: `bool`



### create_venv(venv_path: str = '.venv') → bool

Create a virtual environment and return True on success.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| venv_path | str | '.venv' | - |

**Returns**: `bool`



### get_venv_python(venv_path: str = '.venv') → str

Return the python executable path inside a venv.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| venv_path | str | '.venv' | - |

**Returns**: `str`



### get_venv_activate_cmd(venv_path: str = '.venv') → str

Return the shell command to activate the venv.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| venv_path | str | '.venv' | - |

**Returns**: `str`



### _detect_distro() → str

Detect Linux distro family for install command suggestions.

**Returns**: `str`



### _get_tesseract_install_cmd() → str

Return distro-specific command to install tesseract.

**Returns**: `str`



### check_tesseract() → dict[str, bool | str]

Check if tesseract binary is installed and has English data.

Returns dict with keys: installed, has_eng, install_cmd, version.

**Returns**: `dict[str, bool | str]`



### configure_rocm_env() → list[str]

Set environment variables for ROCm/MIOpen to work correctly.

Returns list of env vars that were set.

**Returns**: `list[str]`



### _build_visual_deps(modules: SetupModules) → list[str]

Build the list of pip packages based on selected modules.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| modules | SetupModules | - | - |

**Returns**: `list[str]`



### install_torch(gpu_info: GPUInfo, python_exe: str | None = None) → bool

Install PyTorch with the correct GPU variant.

Returns True on success, False on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| gpu_info | GPUInfo | - | - |
| python_exe | str | None | None | - |

**Returns**: `bool`



### install_visual_deps(modules: SetupModules | None = None, python_exe: str | None = None) → bool

Install visual extraction dependencies.

Returns True on success, False on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| modules | SetupModules | None | None | - |
| python_exe | str | None | None | - |

**Returns**: `bool`



### install_skill_seekers(python_exe: str) → bool

Install skill-seekers into the target python environment.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| python_exe | str | - | - |

**Returns**: `bool`



### verify_installation() → dict[str, bool]

Verify that all video deps are importable.

Returns a dict mapping package name to import success.

**Returns**: `dict[str, bool]`



### _ask_modules(interactive: bool) → SetupModules

Ask the user which modules to install. Returns all if non-interactive.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| interactive | bool | - | - |

**Returns**: `SetupModules`



### _interactive_yn(prompt: str, default: bool = True) → bool

Ask a yes/no question, return bool.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prompt | str | - | - |
| default | bool | True | - |

**Returns**: `bool`



### run_setup(interactive: bool = True) → int

Auto-detect GPU and install all visual extraction dependencies.

Handles:
1. Venv creation (if not in one)
2. GPU detection
3. Module selection (optional — interactive only)
4. System dep checks (tesseract binary)
5. ROCm env var configuration
6. PyTorch installation (correct GPU variant)
7. Visual deps installation
8. Verification

Args:
    interactive: If True, prompt user for confirmation before installing.

Returns:
    0 on success, 1 on failure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| interactive | bool | True | - |

**Returns**: `int`


