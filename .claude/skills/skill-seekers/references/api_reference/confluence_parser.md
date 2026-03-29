# API Reference: confluence_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/confluence_parser.py`

---

## Classes

### ConfluenceParser

Parser for confluence subcommand.

**Inherits from**: SubcommandParser

#### Methods

##### name(self) → str

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### help(self) → str

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### description(self) → str

**Decorators**: `@property`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### add_arguments(self, parser)

Add confluence-specific arguments.

Uses shared argument definitions to ensure consistency
with confluence_scraper.py (standalone scraper).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |



