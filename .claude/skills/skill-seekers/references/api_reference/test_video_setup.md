# API Reference: test_video_setup.py

**Language**: Python

**Source**: `tests/test_video_setup.py`

---

## Classes

### TestGPUDetection

Tests for detect_gpu() and its helpers.

**Inherits from**: unittest.TestCase

#### Methods

##### test_nvidia_detected(self, mock_run, mock_which)

nvidia-smi present → GPUVendor.NVIDIA.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |


##### test_amd_rocm_detected(self, mock_rocm_ver, mock_run, mock_which)

rocminfo present → GPUVendor.AMD.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`, `@patch('skill_seekers.cli.video_setup._read_rocm_version', return_value='6.3.1')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_rocm_ver | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |


##### test_amd_no_rocm_fallback(self, mock_run, mock_which)

AMD GPU in lspci but no ROCm → AMD vendor, CPU index URL.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |


##### test_cpu_fallback(self, mock_which)

No GPU tools found → GPUVendor.NONE.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which', return_value=None)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_which | None | - | - |


##### test_nvidia_smi_error(self, mock_run, mock_which)

nvidia-smi returns non-zero → skip to next check.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |


##### test_nvidia_smi_timeout(self, mock_run, mock_which)

nvidia-smi times out → skip to next check.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |


##### test_rocminfo_error(self, mock_run, mock_which)

rocminfo returns non-zero → skip to next check.

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which')`, `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |
| mock_which | None | - | - |




### TestVersionMapping

Tests for CUDA/ROCm version → index URL mapping.

**Inherits from**: unittest.TestCase

#### Methods

##### test_cuda_124(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cuda_126(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cuda_121(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cuda_118(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cuda_old_falls_to_cpu(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_cuda_invalid_string(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rocm_63(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rocm_60(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rocm_old_falls_to_cpu(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_rocm_invalid(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVenv

Tests for venv detection and creation.

**Inherits from**: unittest.TestCase

#### Methods

##### test_is_in_venv_returns_bool(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_is_in_venv_detects_prefix_mismatch(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_is_in_venv_detects_no_venv(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_venv_in_tempdir(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_venv_already_exists(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_venv_python_linux(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_venv_activate_cmd_linux(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSystemDeps

Tests for system dependency checks.

**Inherits from**: unittest.TestCase

#### Methods

##### test_tesseract_not_installed(self, mock_which)

**Decorators**: `@patch('skill_seekers.cli.video_setup.shutil.which', return_value=None)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_which | None | - | - |


##### test_tesseract_installed_with_eng(self, mock_which, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`, `@patch('skill_seekers.cli.video_setup.shutil.which', return_value='/usr/bin/tesseract')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_which | None | - | - |
| mock_run | None | - | - |


##### test_tesseract_installed_no_eng(self, mock_which, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`, `@patch('skill_seekers.cli.video_setup.shutil.which', return_value='/usr/bin/tesseract')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_which | None | - | - |
| mock_run | None | - | - |


##### test_detect_distro_returns_string(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detect_distro_no_os_release(self, mock_open)

**Decorators**: `@patch('builtins.open', side_effect=OSError)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_open | None | - | - |




### TestROCmConfig

Tests for configure_rocm_env().

**Inherits from**: unittest.TestCase

#### Methods

##### test_sets_miopen_find_mode(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_does_not_override_existing(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_sets_miopen_user_db_path(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestModuleSelection

Tests for SetupModules and _build_visual_deps.

**Inherits from**: unittest.TestCase

#### Methods

##### test_default_modules_all_true(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_all_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_no_optional_deps(self)

Even with all optional modules off, base video deps are included.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_partial_deps(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestInstallation

Tests for install_torch() and install_visual_deps().

**Inherits from**: unittest.TestCase

#### Methods

##### test_install_torch_success(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_torch_cpu(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_torch_failure(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_torch_timeout(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_torch_custom_python(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_visual_deps_success(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_visual_deps_failure(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_visual_deps_partial_modules(self, mock_run)

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |


##### test_install_visual_deps_base_only(self, mock_run)

Even with all optional modules off, base video deps get installed.

**Decorators**: `@patch('skill_seekers.cli.video_setup.subprocess.run')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_run | None | - | - |




### TestVerification

Tests for verify_installation().

**Inherits from**: unittest.TestCase

#### Methods

##### test_returns_dict(self)

**Decorators**: `@patch.dict('sys.modules', {'torch': None, 'easyocr': None, 'cv2': None})`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_expected_keys(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunSetup

Tests for run_setup() orchestrator.

**Inherits from**: unittest.TestCase

#### Methods

##### test_non_interactive_success(self, mock_detect, mock_tess, mock_torch, mock_deps, mock_verify)

**Decorators**: `@patch('skill_seekers.cli.video_setup.verify_installation')`, `@patch('skill_seekers.cli.video_setup.install_visual_deps', return_value=True)`, `@patch('skill_seekers.cli.video_setup.install_torch', return_value=True)`, `@patch('skill_seekers.cli.video_setup.check_tesseract')`, `@patch('skill_seekers.cli.video_setup.detect_gpu')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_detect | None | - | - |
| mock_tess | None | - | - |
| mock_torch | None | - | - |
| mock_deps | None | - | - |
| mock_verify | None | - | - |


##### test_failure_returns_nonzero(self, mock_detect, mock_tess, mock_torch)

**Decorators**: `@patch('skill_seekers.cli.video_setup.install_torch', return_value=False)`, `@patch('skill_seekers.cli.video_setup.check_tesseract')`, `@patch('skill_seekers.cli.video_setup.detect_gpu')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_detect | None | - | - |
| mock_tess | None | - | - |
| mock_torch | None | - | - |


##### test_visual_deps_failure(self, mock_detect, mock_tess, mock_deps, mock_torch)

**Decorators**: `@patch('skill_seekers.cli.video_setup.install_torch', return_value=True)`, `@patch('skill_seekers.cli.video_setup.install_visual_deps', return_value=False)`, `@patch('skill_seekers.cli.video_setup.check_tesseract')`, `@patch('skill_seekers.cli.video_setup.detect_gpu')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_detect | None | - | - |
| mock_tess | None | - | - |
| mock_deps | None | - | - |
| mock_torch | None | - | - |


##### test_rocm_configures_env(self, mock_detect, mock_tess, mock_torch, mock_deps, mock_verify)

AMD GPU → configure_rocm_env called and env vars set.

**Decorators**: `@patch('skill_seekers.cli.video_setup.verify_installation')`, `@patch('skill_seekers.cli.video_setup.install_visual_deps', return_value=True)`, `@patch('skill_seekers.cli.video_setup.install_torch', return_value=True)`, `@patch('skill_seekers.cli.video_setup.check_tesseract')`, `@patch('skill_seekers.cli.video_setup.detect_gpu')`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_detect | None | - | - |
| mock_tess | None | - | - |
| mock_torch | None | - | - |
| mock_deps | None | - | - |
| mock_verify | None | - | - |




### TestTesseractCircuitBreaker

Tests for _tesseract_broken flag in video_visual.py.

**Inherits from**: unittest.TestCase

#### Methods

##### test_circuit_breaker_flag_exists(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_circuit_breaker_skips_after_failure(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_circuit_breaker_allows_when_not_broken(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestMIOPENEnvVars

Tests that video_visual.py sets MIOPEN env vars at import time.

**Inherits from**: unittest.TestCase

#### Methods

##### test_miopen_find_mode_set(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_miopen_user_db_path_set(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoArgumentSetup

Tests for --setup flag in VIDEO_ARGUMENTS.

**Inherits from**: unittest.TestCase

#### Methods

##### test_setup_in_video_arguments(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parser_accepts_setup(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_parser_default_false(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestVideoScraperSetupEarlyExit

Test that --setup exits before source validation.

**Inherits from**: unittest.TestCase

#### Methods

##### test_setup_skips_source_validation(self, mock_setup)

--setup without --url should NOT error about missing source.

**Decorators**: `@patch('skill_seekers.cli.video_setup.run_setup', return_value=0)`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| mock_setup | None | - | - |




## Functions

### which_side(cmd)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |

**Returns**: (none)



### which_side(cmd)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |

**Returns**: (none)



### which_side(cmd)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| cmd | None | - | - |

**Returns**: (none)


