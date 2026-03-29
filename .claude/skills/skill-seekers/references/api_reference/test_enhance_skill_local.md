# API Reference: test_enhance_skill_local.py

**Language**: Python

**Source**: `tests/test_enhance_skill_local.py`

---

## Classes

### TestMultiAgentSupport

Test multi-agent enhancement support.

**Inherits from**: (none)

#### Methods

##### test_agent_presets_structure(self)

Verify AGENT_PRESETS has required fields.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_agent_command_claude(self, tmp_path)

Test Claude Code command building.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_build_agent_command_codex(self, tmp_path)

Test Codex CLI command building.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_build_agent_command_custom_with_placeholder(self, tmp_path, monkeypatch)

Test custom command with {prompt_file} placeholder.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_custom_agent_requires_command(self, tmp_path)

Test custom agent fails without --agent-cmd.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_invalid_agent_name(self, tmp_path)

Test invalid agent name raises error.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_agent_normalization(self, tmp_path)

Test agent name normalization (aliases).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_environment_variable_agent(self, tmp_path, monkeypatch)

Test SKILL_SEEKER_AGENT environment variable.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_environment_variable_custom_command(self, tmp_path, monkeypatch)

Test SKILL_SEEKER_AGENT_CMD environment variable.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_rejects_command_with_semicolon(self, tmp_path)

Test rejection of commands with shell metacharacters.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_rejects_command_with_pipe(self, tmp_path)

Test rejection of commands with pipe.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_rejects_command_with_background_job(self, tmp_path)

Test rejection of commands with background job operator.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_rejects_missing_executable(self, tmp_path, monkeypatch)

Test rejection when executable is not found on PATH.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestDetectTerminalApp

**Inherits from**: (none)

#### Methods

##### test_skill_seeker_terminal_takes_priority(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_term_program_iterm_mapped(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_term_program_apple_terminal_mapped(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_term_program_ghostty_mapped(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_unknown_term_program_falls_back_to_terminal(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_no_env_defaults_to_terminal(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_skill_seeker_overrides_term_program(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestStatusReadWrite

**Inherits from**: (none)

#### Methods

##### test_write_and_read_status(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_write_status_creates_file(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_read_status_returns_none_if_no_file(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_write_status_includes_timestamp(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_write_status_error_field(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_read_status_returns_none_on_corrupt_file(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_multiple_writes_last_wins(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestSummarizeReference

**Inherits from**: (none)

#### Methods

##### _enhancer(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_short_content_unchanged_intro(self, tmp_path)

Very short content - intro lines == all lines.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_extracts_code_blocks(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_preserves_headings(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_adds_truncation_notice(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_target_ratio_applied(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_code_blocks_not_arbitrarily_capped(self, tmp_path)

Code blocks should not be arbitrarily capped at 5 - should use token budget.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestCreateEnhancementPrompt

**Inherits from**: (none)

#### Methods

##### test_returns_string_with_references(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_prompt_contains_skill_name(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_prompt_contains_current_skill_md(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_prompt_contains_reference_content(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_returns_none_when_no_references(self, tmp_path)

If there are no reference files, create_enhancement_prompt returns None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_summarization_applied_when_requested(self, tmp_path)

When use_summarization=True, result should be smaller (or contain marker).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_prompt_includes_task_instructions(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestRunHeadless

**Inherits from**: (none)

#### Methods

##### _make_skill_with_md(self, tmp_path, md_content = '# Original\nInitial.')

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| md_content | None | '# Original\nInitial.' | - |


##### test_returns_false_when_agent_not_found(self, tmp_path)

FileNotFoundError → returns False.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_returns_false_on_nonzero_exit(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_returns_false_when_skill_md_not_updated(self, tmp_path)

Agent exits 0 but SKILL.md mtime/size unchanged → returns False.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_returns_true_when_skill_md_updated(self, tmp_path)

Agent exits 0 AND SKILL.md is larger → returns True.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestRunOrchestration

**Inherits from**: (none)

#### Methods

##### test_run_returns_false_for_missing_skill_dir(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_run_returns_false_when_no_references(self, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_run_delegates_to_background(self, tmp_path)

run(background=True) should delegate to _run_background.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_run_delegates_to_daemon(self, tmp_path)

run(daemon=True) should delegate to _run_daemon.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_run_calls_run_headless_in_headless_mode(self, tmp_path)

run(headless=True) should ultimately call _run_headless.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestRunBackground

**Inherits from**: (none)

#### Methods

##### test_background_writes_pending_status(self, tmp_path)

_run_background writes 'pending' status before spawning thread.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_background_returns_true_immediately(self, tmp_path)

_run_background should return True after starting thread, not after completion.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestEnhanceDispatcher

Test auto-detection of API vs LOCAL mode in enhance main().

**Inherits from**: (none)

#### Methods

##### test_detect_api_target_anthropic(self, monkeypatch)

ANTHROPIC_API_KEY detected as claude target.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_detect_api_target_google(self, monkeypatch)

GOOGLE_API_KEY detected as gemini target when no Anthropic key.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_detect_api_target_openai(self, monkeypatch)

OPENAI_API_KEY detected as openai target when no higher-priority key.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_detect_api_target_none(self, monkeypatch)

Returns None when no API keys are set.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_detect_api_target_anthropic_priority(self, monkeypatch)

ANTHROPIC_API_KEY takes priority over GOOGLE_API_KEY.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_detect_api_target_auth_token_fallback(self, monkeypatch)

ANTHROPIC_AUTH_TOKEN is used when ANTHROPIC_API_KEY is absent.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_main_delegates_to_api_when_key_set(self, monkeypatch, tmp_path)

main() calls _run_api_enhance when an API key is detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |


##### test_main_uses_local_when_mode_local(self, monkeypatch, tmp_path)

main() stays in LOCAL mode when --mode LOCAL is passed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |


##### test_main_uses_local_when_no_api_keys(self, monkeypatch, tmp_path)

main() uses LOCAL mode when no API keys are present.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |




## Functions

### _make_skill_dir(tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)



### _allow_executable(monkeypatch, name = 'my-agent')

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| monkeypatch | None | - | - |
| name | None | 'my-agent' | - |

**Returns**: (none)



### _make_skill_dir_with_refs(tmp_path, ref_content = '# Ref\nSome reference content.\n')

Create a skill dir with SKILL.md and one reference file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |
| ref_content | None | '# Ref\nSome reference content.\n' | - |

**Returns**: (none)



### _fake_run(prompt_file, timeout, include_permissions_flag, quiet = False)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| prompt_file | None | - | - |
| timeout | None | - | - |
| include_permissions_flag | None | - | - |
| quiet | None | False | - |

**Returns**: (none)



### _slow_run()

**Returns**: (none)



### fake_run_api(target, api_key)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| target | None | - | - |
| api_key | None | - | - |

**Returns**: (none)


