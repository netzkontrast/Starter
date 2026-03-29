# How To: Scrape Argument Dests Match

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: workflow, integration

## Overview

Workflow: Verify unified CLI parser has same argument destinations as doc_scraper.

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

### Step 1: 'Verify unified CLI parser has same argument destinations as doc_scraper.'

```python
'Verify unified CLI parser has same argument destinations as doc_scraper.'
```

**Verification:**
```python
assert not missing, f'scrape_parser missing arguments: {missing}'
```

### Step 2: Assign source_parser = setup_argument_parser(...)

```python
source_parser = setup_argument_parser()
```

**Verification:**
```python
assert not extra, f'scrape_parser has extra arguments not in doc_scraper: {extra}'
```

### Step 3: Assign source_dests = value

```python
source_dests = {a.dest for a in source_parser._actions if a.dest != 'help'}
```

### Step 4: Assign target_parser = argparse.ArgumentParser(...)

```python
target_parser = argparse.ArgumentParser()
```

### Step 5: Call ScrapeParser.add_arguments()

```python
ScrapeParser().add_arguments(target_parser)
```

### Step 6: Assign target_dests = value

```python
target_dests = {a.dest for a in target_parser._actions if a.dest != 'help'}
```

### Step 7: Assign missing = value

```python
missing = source_dests - target_dests
```

### Step 8: Assign extra = value

```python
extra = target_dests - source_dests
```

**Verification:**
```python
assert not missing, f'scrape_parser missing arguments: {missing}'
```


## Complete Example

```python
# Workflow
'Verify unified CLI parser has same argument destinations as doc_scraper.'
from skill_seekers.cli.doc_scraper import setup_argument_parser
from skill_seekers.cli.parsers.scrape_parser import ScrapeParser
source_parser = setup_argument_parser()
source_dests = {a.dest for a in source_parser._actions if a.dest != 'help'}
target_parser = argparse.ArgumentParser()
ScrapeParser().add_arguments(target_parser)
target_dests = {a.dest for a in target_parser._actions if a.dest != 'help'}
missing = source_dests - target_dests
extra = target_dests - source_dests
assert not missing, f'scrape_parser missing arguments: {missing}'
assert not extra, f'scrape_parser has extra arguments not in doc_scraper: {extra}'
```

## Next Steps


---

*Source: test_parser_sync.py:33 | Complexity: Advanced | Last updated: 2026-03-29*