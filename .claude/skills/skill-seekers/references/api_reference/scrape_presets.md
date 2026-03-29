# API Reference: scrape_presets.py

**Language**: Python

**Source**: `src/skill_seekers/cli/presets/scrape_presets.py`

---

## Classes

### ScrapePreset

Definition of a scrape preset.

Attributes:
    name: Human-readable preset name
    description: Brief description of what this preset does
    rate_limit: Rate limit in seconds between requests
    features: Dict of feature flags (feature_name -> enabled)
    async_mode: Whether to use async scraping
    workers: Number of parallel workers
    estimated_time: Human-readable time estimate

**Inherits from**: (none)



## Functions

### apply_scrape_preset(args: argparse.Namespace, preset_name: str) → None

Apply a scrape preset to the args namespace.

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



### show_scrape_preset_list() → None

Print the list of available scrape presets to stdout.

**Returns**: `None`


