# How To: Extract Urls With Ipv6 Placeholder No Crash

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: unittest, workflow, integration

## Overview

Workflow: Test that extract_urls handles content with broken IPv6 URLs (issue #284).

## Prerequisites

**Required Modules:**
- `os`
- `shutil`
- `unittest`
- `skill_seekers.cli.doc_scraper`
- `skill_seekers.cli.doc_scraper`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.llms_txt_parser`
- `skill_seekers.cli.doc_scraper`


## Step-by-Step Guide

### Step 1: 'Test that extract_urls handles content with broken IPv6 URLs (issue #284).'

```python
'Test that extract_urls handles content with broken IPv6 URLs (issue #284).'
```

### Step 2: Assign content = '# Docs\n- [Guide](https://example.com/guide.md)\n- Connect to http://[fdaa:x:x:x:x::x for private networking\n- [API](https://example.com/api.md)\n'

```python
content = '# Docs\n- [Guide](https://example.com/guide.md)\n- Connect to http://[fdaa:x:x:x:x::x for private networking\n- [API](https://example.com/api.md)\n'
```

### Step 3: Assign parser = LlmsTxtParser(...)

```python
parser = LlmsTxtParser(content, base_url='https://example.com')
```

### Step 4: Assign urls = parser.extract_urls(...)

```python
urls = parser.extract_urls()
```

### Step 5: Assign valid = value

```python
valid = [u for u in urls if 'example.com' in u]
```

### Step 6: Call self.assertGreaterEqual()

```python
self.assertGreaterEqual(len(valid), 2)
```


## Complete Example

```python
# Workflow
'Test that extract_urls handles content with broken IPv6 URLs (issue #284).'
from skill_seekers.cli.llms_txt_parser import LlmsTxtParser
content = '# Docs\n- [Guide](https://example.com/guide.md)\n- Connect to http://[fdaa:x:x:x:x::x for private networking\n- [API](https://example.com/api.md)\n'
parser = LlmsTxtParser(content, base_url='https://example.com')
urls = parser.extract_urls()
valid = [u for u in urls if 'example.com' in u]
self.assertGreaterEqual(len(valid), 2)
```

## Next Steps


---

*Source: test_markdown_parsing.py:328 | Complexity: Intermediate | Last updated: 2026-03-29*