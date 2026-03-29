# API Reference: chat_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/chat_parser.py`

---

## Classes

### ChatParser

Parser for chat subcommand.

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

Add chat-specific arguments.

Uses shared argument definitions to ensure consistency
with chat_scraper.py (standalone scraper).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |



