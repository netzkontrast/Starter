# How To: Scrape Argument Count Matches

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: Verify unified CLI parser has same argument count as doc_scraper.

## Prerequisites

**Required Modules:**
- `argparse`
- `skill_seekers.cli.doc_scraper`
- `skill_seekers.cli.parsers.scrape_parser`
- `skill_seekers.cli.doc_scraper`
- `skill_seekers.cli.parsers.scrape_parser`
- `skill_seekers.cli.main`
- `skill_seekers.cli.github_scraper`
- `skill_seekers.cli.parsers.github_parser`
- `skill_seekers.cli.github_scraper`
- `skill_seekers.cli.parsers.github_parser`
- `skill_seekers.cli.main`
- `skill_seekers.cli.main`
- `skill_seekers.cli.main`
- `skill_seekers.cli.main`


## Step-by-Step Guide

### Step 1: 'Verify unified CLI parser has same argument count as doc_scraper.'

```python
'Verify unified CLI parser has same argument count as doc_scraper.'
```

**Verification:**
```python
assert source_count == target_count, f'Argument count mismatch: doc_scraper has {source_count}, but unified CLI parser has {target_count}'
```

### Step 2: Assign source_parser = setup_argument_parser(...)

```python
source_parser = setup_argument_parser()
```

### Step 3: Assign source_count = len(...)

```python
source_count = len([a for a in source_parser._actions if a.dest != 'help'])
```

### Step 4: Assign target_parser = argparse.ArgumentParser(...)

```python
target_parser = argparse.ArgumentParser()
```

### Step 5: Call ScrapeParser.add_arguments()

```python
ScrapeParser().add_arguments(target_parser)
```

### Step 6: Assign target_count = len(...)

```python
target_count = len([a for a in target_parser._actions if a.dest != 'help'])
```

**Verification:**
```python
assert source_count == target_count, f'Argument count mismatch: doc_scraper has {source_count}, but unified CLI parser has {target_count}'
```


## Complete Example

```python
# Workflow
'Verify unified CLI parser has same argument count as doc_scraper.'
from skill_seekers.cli.doc_scraper import setup_argument_parser
from skill_seekers.cli.parsers.scrape_parser import ScrapeParser
source_parser = setup_argument_parser()
source_count = len([a for a in source_parser._actions if a.dest != 'help'])
target_parser = argparse.ArgumentParser()
ScrapeParser().add_arguments(target_parser)
target_count = len([a for a in target_parser._actions if a.dest != 'help'])
assert source_count == target_count, f'Argument count mismatch: doc_scraper has {source_count}, but unified CLI parser has {target_count}'
```

## Next Steps


---

*Source: test_parser_sync.py:14 | Complexity: Intermediate | Last updated: 2026-03-29*