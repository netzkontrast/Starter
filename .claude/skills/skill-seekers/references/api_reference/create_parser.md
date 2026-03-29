# API Reference: create_parser.py

**Language**: Python

**Source**: `src/skill_seekers/cli/parsers/create_parser.py`

---

## Classes

### CreateParser

Parser for create subcommand with multi-mode help.

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

Add create-specific arguments.

Uses shared argument definitions with progressive disclosure.
Default mode shows only universal arguments (15 flags).

Multi-mode help handled via custom flags detected in argument parsing.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parser | None | - | - |


##### register(self, subparsers)

Register this parser with custom formatter to prevent text wrapping.

Args:
    subparsers: Subparsers object from main parser

Returns:
    Configured ArgumentParser for this subcommand

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| subparsers | None | - | - |




### NoWrapFormatter

**Inherits from**: argparse.RawDescriptionHelpFormatter

#### Methods

##### _split_lines(self, text, width)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | None | - | - |
| width | None | - | - |



