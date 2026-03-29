# API Reference: test_doctor.py

**Language**: Python

**Source**: `tests/test_doctor.py`

---

## Classes

### TestCheckPythonVersion

**Inherits from**: (none)

#### Methods

##### test_passes_on_current_python(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detail_contains_version(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckPackageInstalled

**Inherits from**: (none)

#### Methods

##### test_passes_when_installed(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_fails_when_import_broken(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckGit

**Inherits from**: (none)

#### Methods

##### test_passes_when_git_available(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_warns_when_git_missing(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckCoreDeps

**Inherits from**: (none)

#### Methods

##### test_passes_in_normal_environment(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_detail_shows_count(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckOptionalDeps

**Inherits from**: (none)

#### Methods

##### test_returns_result(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckApiKeys

**Inherits from**: (none)

#### Methods

##### test_warns_when_no_keys(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_passes_when_all_set(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_partial_keys_warns(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckMcpServer

**Inherits from**: (none)

#### Methods

##### test_returns_result(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCheckOutputDirectory

**Inherits from**: (none)

#### Methods

##### test_passes_in_writable_dir(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestRunAllChecks

**Inherits from**: (none)

#### Methods

##### test_returns_8_results(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_all_have_name_and_status(self)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPrintReport

**Inherits from**: (none)

#### Methods

##### test_returns_0_when_no_failures(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_returns_1_when_critical_failure(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_verbose_shows_detail(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |


##### test_no_verbose_hides_detail(self, capsys)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| capsys | None | - | - |



