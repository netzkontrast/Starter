# API Reference: test_create_arguments.py

**Language**: Python

**Source**: `tests/test_create_arguments.py`

---

## Classes

### TestUniversalArguments

Test universal argument definitions.

**Inherits from**: (none)

#### Methods

##### test_universal_count(self)

Should have exactly 19 universal arguments (after Phase 2 workflow integration + local_repo_path + doc_version).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_universal_argument_names(self)

Universal arguments should have expected names.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_all_universal_have_flags(self)

All universal arguments should have flags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_all_universal_have_kwargs(self)

All universal arguments should have kwargs.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestSourceSpecificArguments

Test source-specific argument definitions.

**Inherits from**: (none)

#### Methods

##### test_web_arguments_exist(self)

Web-specific arguments should be defined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_arguments_exist(self)

GitHub-specific arguments should be defined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_local_arguments_exist(self)

Local-specific arguments should be defined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_pdf_arguments_exist(self)

PDF-specific arguments should be defined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_duplicate_flags_across_sources(self)

Source-specific arguments should not have duplicate flags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestAdvancedArguments

Test advanced/rare argument definitions.

**Inherits from**: (none)

#### Methods

##### test_advanced_arguments_exist(self)

Advanced arguments should be defined.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestArgumentHelpers

Test helper functions.

**Inherits from**: (none)

#### Methods

##### test_get_universal_argument_names(self)

Should return set of universal argument names.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_web(self)

Should return web-specific arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_github(self)

Should return github-specific arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_local(self)

Should return local-specific arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_pdf(self)

Should return pdf-specific arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_config(self)

Config should return CONFIG_ARGUMENTS (merge-mode, skip-codebase-analysis).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_source_specific_unknown(self)

Unknown source should return empty dict.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestCompatibleArguments

Test compatible argument detection.

**Inherits from**: (none)

#### Methods

##### test_web_compatible_arguments(self)

Web source should include universal + web + advanced.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_compatible_arguments(self)

GitHub source should include universal + github + advanced.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_local_compatible_arguments(self)

Local source should include universal + local + advanced.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_pdf_compatible_arguments(self)

PDF source should include universal + pdf + advanced.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_config_compatible_arguments(self)

Config source should include universal + config-specific + advanced.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestAddCreateArguments

Test add_create_arguments function.

**Inherits from**: (none)

#### Methods

##### test_default_mode_adds_universal_only(self)

Default mode should add only universal arguments + source positional.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_web_mode_adds_web_arguments(self)

Web mode should add universal + web arguments.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_all_mode_adds_all_arguments(self)

All mode should add every argument.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_positional_source_argument_always_added(self)

Source positional argument should always be added.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestNoDuplicates

Test that there are no duplicate arguments across tiers.

**Inherits from**: (none)

#### Methods

##### test_no_duplicates_between_universal_and_web(self)

Universal and web args should not overlap.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_no_duplicates_between_source_specific_args(self)

Different source-specific arg groups should not overlap.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestArgumentQuality

Test argument definition quality.

**Inherits from**: (none)

#### Methods

##### test_all_arguments_have_help_text(self)

Every argument should have help text.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_boolean_arguments_use_store_true(self)

Boolean flags should use store_true action.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



