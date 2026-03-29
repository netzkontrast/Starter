---
name: skill-seekers
description: Local codebase analysis for Skill_Seekers
doc_version: 
---

# Skill_Seekers Codebase

## Description

Local codebase analysis and documentation generated from code analysis.

**Path:** `/tmp/Skill_Seekers`
**Files Analyzed:** 399
**Languages:** Python, JavaScript, TypeScript
**Analysis Depth:** deep

## When to Use This Skill

Use this skill when you need to:
- Understand the codebase architecture and design patterns
- Find implementation examples and usage patterns
- Review API documentation extracted from code
- Check configuration patterns and best practices
- Explore test examples and real-world usage
- Navigate the codebase structure efficiently

## ⚡ Quick Reference

### Codebase Statistics

**Languages:**
- **Python**: 392 files (98.2%)
- **JavaScript**: 5 files (1.3%)
- **TypeScript**: 2 files (0.5%)

**Analysis Performed:**
- ✅ API Reference (C2.5)
- ✅ Dependency Graph (C2.6)
- ✅ Design Patterns (C3.1)
- ✅ Test Examples (C3.2)
- ✅ Configuration Patterns (C3.4)
- ✅ Architectural Analysis (C3.7)
- ✅ Project Documentation (C3.9)

## 📝 Code Examples

*High-quality examples extracted from test files (C3.2)*

**Workflow: format_skill_md returns valid JSON with expected structure.** (complexity: 1.00)

```python
'format_skill_md returns valid JSON with expected structure.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test skill', version='1.0.0', doc_version='16.2')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
assert 'index_name' in data
assert 'namespace' in data
assert 'dimension' in data
assert 'metric' in data
assert 'vectors' in data
assert data['dimension'] == 1536
assert data['metric'] == 'cosine'
```

**Workflow: Output includes overview (SKILL.md) and reference documents.** (complexity: 1.00)

```python
'Output includes overview (SKILL.md) and reference documents.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
metadata = SkillMetadata(name='test-skill', description='Test')
result = adaptor.format_skill_md(sample_skill_dir, metadata)
data = json.loads(result)
categories = {vec['metadata']['category'] for vec in data['vectors']}
types = {vec['metadata']['type'] for vec in data['vectors']}
assert 'overview' in categories
assert 'documentation' in types
assert 'reference' in types
```

**Workflow: upload() success return dict includes 'url' key (prevents KeyError in package_skill.py).** (complexity: 1.00)

```python
"upload() success return dict includes 'url' key (prevents KeyError in package_skill.py)."
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 1536] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key')
assert result['success'] is True
assert 'url' in result
assert result['url'] is None
```

**Workflow: sentence-transformers upload creates index with dimension=384.** (complexity: 1.00)

```python
'sentence-transformers upload creates index with dimension=384.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_st_embeddings', lambda docs: [[0.0] * 384] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='sentence-transformers')
assert result['success'] is True
mock_pc.create_index.assert_called_once()
call_kwargs = mock_pc.create_index.call_args
assert call_kwargs.kwargs['dimension'] == 384
```

**Workflow: openai upload creates index with dimension=1536.** (complexity: 1.00)

```python
'openai upload creates index with dimension=1536.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 1536] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='openai')
assert result['success'] is True
mock_pc.create_index.assert_called_once()
call_kwargs = mock_pc.create_index.call_args
assert call_kwargs.kwargs['dimension'] == 1536
```

**Workflow: If embedding generation fails, index is never created (no side-effects).** (complexity: 1.00)

```python
'If embedding generation fails, index is never created (no side-effects).'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)

def fail_embeddings(_docs):
    raise RuntimeError('OPENAI_API_KEY not set')
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', fail_embeddings)
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key')
assert result['success'] is False
mock_pc.create_index.assert_not_called()
```

**Workflow: Explicit dimension kwarg overrides both auto-detect and JSON file value.** (complexity: 1.00)

```python
'Explicit dimension kwarg overrides both auto-detect and JSON file value.'
from skill_seekers.cli.adaptors.pinecone_adaptor import PineconeAdaptor
adaptor = PineconeAdaptor()
mock_pc, _mock_index = self._make_mock_pinecone(monkeypatch)
monkeypatch.setattr(adaptor, '_generate_openai_embeddings', lambda docs: [[0.0] * 768] * len(docs))
pkg = self._make_package(tmp_path)
result = adaptor.upload(pkg, api_key='fake-key', embedding_function='openai', dimension=768)
assert result['success'] is True
mock_pc.create_index.assert_called_once()
call_kwargs = mock_pc.create_index.call_args
assert call_kwargs.kwargs['dimension'] == 768
```

**Workflow: Test quick analysis preset (real execution).** (complexity: 1.00)

```python
'Test quick analysis preset (real execution).'
output_dir = self.test_dir / 'output_quick'
result = self.run_command('analyze', '--directory', str(self.test_dir), '--output', str(output_dir), '--quick')
self.assertEqual(result.returncode, 0, f'Quick analysis failed:\nSTDOUT: {result.stdout}\nSTDERR: {result.stderr}')
self.assertTrue(output_dir.exists(), 'Output directory not created')
skill_file = output_dir / 'SKILL.md'
self.assertTrue(skill_file.exists(), 'SKILL.md not generated')
skill_content = skill_file.read_text()
self.assertGreater(len(skill_content), 100, 'SKILL.md is too short')
self.assertIn('Codebase', skill_content, 'Missing codebase header')
self.assertIn('Analysis', skill_content, 'Missing analysis section')
self.assertTrue(skill_content.startswith('---'), 'Missing YAML frontmatter')
self.assertIn('name:', skill_content, 'Missing name in frontmatter')
```

**Workflow: Test analyzing and verifying output can be read.** (complexity: 1.00)

```python
'Test analyzing and verifying output can be read.'
output_dir = self.test_dir / 'output'
result = subprocess.run(['skill-seekers', 'analyze', '--directory', str(self.test_dir), '--output', str(output_dir), '--quick'], capture_output=True, text=True, timeout=120)
self.assertEqual(result.returncode, 0, f'Analysis failed: {result.stderr}')
skill_file = output_dir / 'SKILL.md'
self.assertTrue(skill_file.exists(), 'SKILL.md not created')
content = skill_file.read_text()
self.assertGreater(len(content), 50, 'Output too short')
self.assertIn('Codebase', content, 'Missing codebase header')
self.assertTrue(content.startswith('---'), 'Missing YAML frontmatter')
```

**Workflow: Test quick analysis preset (real execution).** (complexity: 1.00)

```python
'Test quick analysis preset (real execution).'
output_dir = self.test_dir / 'output_quick'
result = self.run_command('analyze', '--directory', str(self.test_dir), '--output', str(output_dir), '--quick')
self.assertEqual(result.returncode, 0, f'Quick analysis failed:\nSTDOUT: {result.stdout}\nSTDERR: {result.stderr}')
self.assertTrue(output_dir.exists(), 'Output directory not created')
skill_file = output_dir / 'SKILL.md'
self.assertTrue(skill_file.exists(), 'SKILL.md not generated')
skill_content = skill_file.read_text()
self.assertGreater(len(skill_content), 100, 'SKILL.md is too short')
self.assertIn('Codebase', skill_content, 'Missing codebase header')
self.assertIn('Analysis', skill_content, 'Missing analysis section')
self.assertTrue(skill_content.startswith('---'), 'Missing YAML frontmatter')
self.assertIn('name:', skill_content, 'Missing name in frontmatter')
```

*See `references/test_examples/` for all extracted examples*

## ⚙️ Configuration Patterns

*From C3.4 configuration analysis*

**Configuration Files Analyzed:** 100
**Total Settings:** 1104
**Patterns Detected:** 0

**Configuration Types:**
- unknown: 100 files

*See `references/config_patterns/` for detailed configuration analysis*

## 📖 Project Documentation

*Extracted from markdown files in the project (C3.9)*

**Total Documentation Files:** 198
**Categories:** 10

### Overview

- **AGENTS.md - Skill Seekers**: **AGENTS.md - Skill Seekers**
- **Bulletproof Quick Start Guide**: **Bulletproof Quick Start Guide**
- **CLAUDE.md**: **CLAUDE.md**
- **Skill Seekers**: **Skill Seekers**
- **Skill Seekers**: **Skill Seekers**
- *...and 12 more*

### Architecture

- **Research: What files would be affected to add .epub support for input**: **Research: What files would be affected to add .epub support for input**
- **Architecture Verification Report**: **Architecture Verification Report**
- **HTTPX Skill Quality Analysis - Ultra-Deep Grading**: **HTTPX Skill Quality Analysis - Ultra-Deep Grading**
- **Three-Stream GitHub Architecture - Implementation Summary**: **Three-Stream GitHub Architecture - Implementation Summary**
- **Local Repository Extraction Test - deck_deck_go**: **Local Repository Extraction Test - deck_deck_go**
- *...and 14 more*

### Guides

- **HTTP Transport for FastMCP Server**: **HTTP Transport for FastMCP Server**
- **Complete MCP Setup Guide - MCP 2025 (v2.7.0)**: **Complete MCP Setup Guide - MCP 2025 (v2.7.0)**
- **Migration Guide**: **Migration Guide**
- **Multi-Agent Auto-Configuration Guide**: **Multi-Agent Auto-Configuration Guide**
- **Setup Quick Reference Card**: **Setup Quick Reference Card**
- *...and 14 more*

### Features

- **Bootstrap Skill - Self-Hosting (v3.1.0-dev)**: **Bootstrap Skill - Self-Hosting (v3.1.0-dev)**
- **Bootstrap Skill - Technical Deep Dive**: **Bootstrap Skill - Technical Deep Dive**
- **AI-Powered SKILL.md Enhancement**: **AI-Powered SKILL.md Enhancement**
- **Enhancement Modes Guide**: **Enhancement Modes Guide**
- **How-To Guide Generation (C3.3)**: **How-To Guide Generation (C3.3)**
- *...and 7 more*

### Api

- **Skill Seekers Config API**: **Skill Seekers Config API**
- **AI Skill Standards & Best Practices (2026)**: **AI Skill Standards & Best Practices (2026)**
- **API Reference - Programmatic Usage**: **API Reference - Programmatic Usage**
- **C3.x Router Architecture - Ultra-Detailed Technical Specification**: **C3.x Router Architecture - Ultra-Detailed Technical Specification**
- **CLAUDE.md**: **CLAUDE.md**
- *...and 24 more*

### Examples

- **ChromaDB Vector Database Example**: **ChromaDB Vector Database Example**
- **Cline + Django Assistant Example**: **Cline + Django Assistant Example**
- **Continue.dev + Universal Context Example**: **Continue.dev + Universal Context Example**
- **Cursor + React Skill Example**: **Cursor + React Skill Example**
- **Example React Project for Cursor**: **Example React Project for Cursor**
- *...and 8 more*

*See `references/documentation/` for all project documentation*

## 📚 Available References

This skill includes detailed reference documentation:

- **API Reference**: `references/api_reference/` - Complete API documentation
- **Dependencies**: `references/dependencies/` - Dependency graph and analysis
- **Patterns**: `references/patterns/` - Detected design patterns
- **Examples**: `references/test_examples/` - Usage examples from tests
- **Configuration**: `references/config_patterns/` - Configuration patterns
- **Architecture**: `references/architecture/` - Architectural patterns
- **Documentation**: `references/documentation/` - Project documentation

---

**Generated by Skill Seeker** | Codebase Analyzer with C3.x Analysis
