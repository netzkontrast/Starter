# API Reference: pdf_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/pdf_parser.py`

---

## Classes

### PDFParser

Parser for pdf subcommand.

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

Add pdf-specific arguments.

Uses shared argument definitions to ensure consistency
with pdf_scraper.py (standalone scraper).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |



