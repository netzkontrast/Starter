# API Reference: test_parser_sync.py

**Language**: Python

**Source**: `tests/test_parser_sync.py`

---

## Classes

### TestScrapeParserSync

Ensure scrape_parser has all arguments from doc_scraper.

**Inherits from**: (none)

#### Methods

##### test_scrape_argument_count_matches(self)

Verify unified CLI parser has same argument count as doc_scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_argument_dests_match(self)

Verify unified CLI parser has same argument destinations as doc_scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_specific_arguments_present(self)

Verify key scrape arguments are present in unified CLI.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestGitHubParserSync

Ensure github_parser has all arguments from github_scraper.

**Inherits from**: (none)

#### Methods

##### test_github_argument_count_matches(self)

Verify unified CLI parser has same argument count as github_scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_argument_dests_match(self)

Verify unified CLI parser has same argument destinations as github_scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestUnifiedCLI

Test the unified CLI main parser.

**Inherits from**: (none)

#### Methods

##### test_main_parser_creates_successfully(self)

Verify the main parser can be created without errors.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_all_subcommands_present(self)

Verify all expected subcommands are present.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_scrape_help_works(self)

Verify scrape subcommand help can be generated.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_github_help_works(self)

Verify github subcommand help can be generated.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |



