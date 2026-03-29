# API Reference: translate_doc.py

**Language**: Python

**Source**: `scripts/translate_doc.py`

---

## Functions

### get_version() → str

Get current version from package.

**Returns**: `str`



### translate_with_anthropic(content: str, api_key: str) → str

Translate content using Anthropic Claude API.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | str | - | - |
| api_key | str | - | - |

**Returns**: `str`



### add_translation_header(content: str, original_file: Path, target_lang: str) → str

Add translation header to document.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | str | - | - |
| original_file | Path | - | - |
| target_lang | str | - | - |

**Returns**: `str`



### fix_links(content: str, original_file: Path) → str

Fix internal links to point to Chinese versions.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| content | str | - | - |
| original_file | Path | - | - |

**Returns**: `str`



### translate_file(input_path: str, target_lang: str = 'zh-CN')

Translate a documentation file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| input_path | str | - | - |
| target_lang | str | 'zh-CN' | - |

**Returns**: (none)



### main()

**Returns**: (none)



### replace_link(match)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| match | None | - | - |

**Returns**: (none)


