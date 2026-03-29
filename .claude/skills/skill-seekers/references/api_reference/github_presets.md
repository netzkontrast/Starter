# API Reference: github_presets.py

**Language**: Python

**Source**: `src/skill_seekers/cli/presets/github_presets.py`

---

## Classes

### GitHubPreset

Definition of a GitHub preset.

Attributes:
    name: Human-readable preset name
    description: Brief description of what this preset does
    max_issues: Maximum issues to fetch
    features: Dict of feature flags (feature_name -> enabled)
    estimated_time: Human-readable time estimate

**Inherits from**: (none)



## Functions

### apply_github_preset(args: argparse.Namespace, preset_name: str) → None

Apply a GitHub preset to the args namespace.

Args:
    args: The argparse.Namespace to modify
    preset_name: Name of the preset to apply

Raises:
    KeyError: If preset_name is not a valid preset

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |
| preset_name | str | - | - |

**Returns**: `None`



### show_github_preset_list() → None

Print the list of available GitHub presets to stdout.

**Returns**: `None`


