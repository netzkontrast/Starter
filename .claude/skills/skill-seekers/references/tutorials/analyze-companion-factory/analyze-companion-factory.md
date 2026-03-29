# How To: Analyze Companion Factory

**Difficulty**: Intermediate
**Estimated Time**: 10 minutes
**Tags**: workflow, integration

## Overview

Workflow: test analyze companion factory

## Prerequisites

**Required Modules:**
- `__future__`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.language_detector`
- `skill_seekers.cli.code_analyzer`
- `skill_seekers.cli.dependency_analyzer`
- `skill_seekers.cli.dependency_analyzer`
- `skill_seekers.cli.dependency_analyzer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.pattern_recognizer`
- `skill_seekers.cli.test_example_extractor`
- `skill_seekers.cli.test_example_extractor`
- `skill_seekers.cli.test_example_extractor`
- `skill_seekers.cli.test_example_extractor`
- `skill_seekers.cli.test_example_extractor`
- `skill_seekers.cli.test_example_extractor`
- `pathlib`
- `skill_seekers.cli.config_extractor`
- `pathlib`
- `skill_seekers.cli.config_extractor`
- `pathlib`
- `skill_seekers.cli.config_extractor`
- `skill_seekers.cli.codebase_scraper`
- `skill_seekers.cli.github_fetcher`
- `inspect`


## Step-by-Step Guide

### Step 1: Assign result = self.analyzer.analyze_file(...)

```python
result = self.analyzer.analyze_file('HttpClient.kt', KOTLIN_COMPANION_FACTORY, 'Kotlin')
```

**Verification:**
```python
assert any((c['name'] == 'HttpClient' for c in classes))
```

### Step 2: Assign classes = value

```python
classes = result['classes']
```

**Verification:**
```python
assert 'get' in method_names or 'get' in all_func_names
```

### Step 3: Assign all_func_names = value

```python
all_func_names = {f['name'] for f in result['functions']}
```

### Step 4: Assign http = next(...)

```python
http = next((c for c in classes if c['name'] == 'HttpClient'))
```

### Step 5: Assign method_names = value

```python
method_names = {m['name'] for m in http['methods']}
```

**Verification:**
```python
assert 'get' in method_names or 'get' in all_func_names
```


## Complete Example

```python
# Workflow
result = self.analyzer.analyze_file('HttpClient.kt', KOTLIN_COMPANION_FACTORY, 'Kotlin')
classes = result['classes']
assert any((c['name'] == 'HttpClient' for c in classes))
all_func_names = {f['name'] for f in result['functions']}
http = next((c for c in classes if c['name'] == 'HttpClient'))
method_names = {m['name'] for m in http['methods']}
assert 'get' in method_names or 'get' in all_func_names
```

## Next Steps


---

*Source: test_kotlin_support.py:323 | Complexity: Intermediate | Last updated: 2026-03-29*