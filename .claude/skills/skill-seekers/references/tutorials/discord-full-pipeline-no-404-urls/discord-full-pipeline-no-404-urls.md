# How To: Discord Full Pipeline No 404 Urls

**Difficulty**: Advanced
**Estimated Time**: 15 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Full pipeline: detector -> downloader -> parser -> converter -> queue.

Simulates what `skill-seekers create https://docs.discord.com` does,
without actually scraping pages.

## Prerequisites

**Required Modules:**
- `os`
- `shutil`
- `unittest`
- `pytest`
- `skill_seekers.cli.doc_scraper`
- `skill_seekers.cli.llms_txt_detector`
- `skill_seekers.cli.llms_txt_downloader`
- `skill_seekers.cli.llms_txt_parser`


## Step-by-Step Guide

### Step 1: 'Full pipeline: detector -> downloader -> parser -> converter -> queue.\n\n        Simulates what `skill-seekers create https://docs.discord.com` does,\n        without actually scraping pages.\n        '

```python
'Full pipeline: detector -> downloader -> parser -> converter -> queue.\n\n        Simulates what `skill-seekers create https://docs.discord.com` does,\n        without actually scraping pages.\n        '
```

### Step 2: Assign converter = DocToSkillConverter(...)

```python
converter = DocToSkillConverter(self.config, dry_run=True)
```

### Step 3: Call os.makedirs()

```python
os.makedirs(os.path.join(converter.skill_dir, 'references'), exist_ok=True)
```

### Step 4: Call os.makedirs()

```python
os.makedirs(os.path.join(converter.data_dir, 'pages'), exist_ok=True)
```

### Step 5: Assign result = converter._try_llms_txt(...)

```python
result = converter._try_llms_txt()
```

### Step 6: Call self.assertGreater()

```python
self.assertGreater(len(converter.pending_urls), 0, 'Pipeline should have queued URLs for crawling')
```

### Step 7: Call self.assertNotIn()

```python
self.assertNotIn('/index.html.md', url, f'Queue contains 404-causing URL: {url}')
```

### Step 8: Call self.assertNotIn()

```python
self.assertNotIn('#', url, f'Queue contains URL with anchor fragment: {url}')
```


## Complete Example

```python
# Workflow
'Full pipeline: detector -> downloader -> parser -> converter -> queue.\n\n        Simulates what `skill-seekers create https://docs.discord.com` does,\n        without actually scraping pages.\n        '
converter = DocToSkillConverter(self.config, dry_run=True)
os.makedirs(os.path.join(converter.skill_dir, 'references'), exist_ok=True)
os.makedirs(os.path.join(converter.data_dir, 'pages'), exist_ok=True)
result = converter._try_llms_txt()
if not result:
    for url in converter.pending_urls:
        self.assertNotIn('/index.html.md', url, f'Queue contains 404-causing URL: {url}')
        self.assertNotIn('#', url, f'Queue contains URL with anchor fragment: {url}')
    self.assertGreater(len(converter.pending_urls), 0, 'Pipeline should have queued URLs for crawling')
```

## Next Steps


---

*Source: test_issue_277_discord_e2e.py:109 | Complexity: Advanced | Last updated: 2026-03-29*