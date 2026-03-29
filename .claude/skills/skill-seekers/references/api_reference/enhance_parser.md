# API Reference: enhance_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/enhance_parser.py`

---

## Classes

### EnhanceParser

Parser for enhance subcommand.

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

Add enhance-specific arguments.

Uses shared argument definitions to ensure consistency
with enhance_skill_local.py (standalone enhancer).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |



