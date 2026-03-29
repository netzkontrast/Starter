# API Reference: analyze_presets.py

**Language**: Python

**Source**: `src/skill_seekers/cli/presets/analyze_presets.py`

---

## Classes

### AnalysisPreset

Definition of an analysis preset.

Presets control analysis depth and features ONLY.
AI Enhancement is controlled separately via --enhance or --enhance-level.

Attributes:
    name: Human-readable preset name
    description: Brief description of what this preset does
    depth: Analysis depth level (surface, deep, full)
    features: Dict of feature flags (feature_name -> enabled)
    estimated_time: Human-readable time estimate

**Inherits from**: (none)



## Functions

### apply_analyze_preset(args: argparse.Namespace, preset_name: str) → None

Apply an analysis preset to the args namespace.

This modifies the args object to set the preset's depth and feature flags.
NOTE: This does NOT set enhance_level - that's controlled separately via
--enhance or --enhance-level flags.

Args:
    args: The argparse.Namespace to modify
    preset_name: Name of the preset to apply

Raises:
    KeyError: If preset_name is not a valid preset

Example:
    >>> args = parser.parse_args(['--directory', '.', '--preset', 'quick'])
    >>> apply_analyze_preset(args, args.preset)
    >>> # args now has preset depth and features applied
    >>> # enhance_level is still 0 (default) unless --enhance was specified

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |
| preset_name | str | - | - |

**Returns**: `None`



### get_preset_help_text(preset_name: str) → str

Get formatted help text for a preset.

Args:
    preset_name: Name of the preset

Returns:
    Formatted help string

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| preset_name | str | - | - |

**Returns**: `str`



### show_preset_list() → None

Print the list of available presets to stdout.

This is used by the --preset-list flag.

**Returns**: `None`



### resolve_enhance_level(args: argparse.Namespace) → int

Determine the enhance level based on user arguments.

This is separate from preset application. Enhance level is controlled by:
- --enhance-level N (explicit)
- --enhance (use default level 1)
- Neither (default to 0)

Args:
    args: Parsed command-line arguments

Returns:
    The enhance level to use (0-3)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |

**Returns**: `int`



### apply_preset_with_warnings(args: argparse.Namespace) → str

Apply preset with deprecation warnings for legacy flags.

This is the main entry point for applying presets. It:
1. Determines which preset to use
2. Prints deprecation warnings if legacy flags were used
3. Applies the preset (depth and features only)
4. Sets enhance_level separately based on --enhance/--enhance-level
5. Returns the preset name

Args:
    args: Parsed command-line arguments

Returns:
    The preset name that was applied

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |

**Returns**: `str`



### print_deprecation_warning(old_flag: str, new_flag: str) → None

Print a deprecation warning for legacy flags.

Args:
    old_flag: The old/deprecated flag name
    new_flag: The new recommended flag/preset

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| old_flag | str | - | - |
| new_flag | str | - | - |

**Returns**: `None`


