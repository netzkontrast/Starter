# API Reference: doctor.py

**Language**: Python

**Source**: `src/skill_seekers/cli/doctor.py`

---

## Classes

### CheckResult

Result of a single health check.

**Inherits from**: (none)



## Functions

### _try_import(module_name: str) → tuple[bool, str]

Try to import a module and return (success, version_or_error).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| module_name | str | - | - |

**Returns**: `tuple[bool, str]`



### check_python_version() → CheckResult

Check 1: Python version >= 3.10.

**Returns**: `CheckResult`



### check_package_installed() → CheckResult

Check 2: skill-seekers package importable with version.

**Returns**: `CheckResult`



### check_git() → CheckResult

Check 3: git available in PATH.

**Returns**: `CheckResult`



### check_core_deps() → CheckResult

Check 4: Core dependencies importable.

**Returns**: `CheckResult`



### check_optional_deps() → CheckResult

Check 5: Optional dependencies status.

**Returns**: `CheckResult`



### check_api_keys() → CheckResult

Check 6: API keys set in environment.

**Returns**: `CheckResult`



### check_mcp_server() → CheckResult

Check 7: MCP server module importable.

**Returns**: `CheckResult`



### check_output_directory() → CheckResult

Check 8: Current directory is writable.

**Returns**: `CheckResult`



### run_all_checks() → list[CheckResult]

Run all 8 health checks and return results.

**Returns**: `list[CheckResult]`



### print_report(results: list[CheckResult], verbose: bool = False) → int

Print formatted report and return exit code.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| results | list[CheckResult] | - | - |
| verbose | bool | False | - |

**Returns**: `int`



### main() → int

Entry point for doctor command.

**Returns**: `int`


