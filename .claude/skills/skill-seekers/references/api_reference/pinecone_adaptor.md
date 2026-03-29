# API Reference: pinecone_adaptor.py

**Language**: Python

**Source**: `src/skill_seekers/cli/adaptors/pinecone_adaptor.py`

---

## Classes

### PineconeAdaptor

Pinecone vector database adaptor.

Handles:
- Pinecone-compatible vector format with metadata
- Namespace support for multi-tenant indexing
- Batch upsert (100 vectors per batch)
- OpenAI and sentence-transformers embedding generation
- Metadata truncation to stay within Pinecone's 40KB limit

**Inherits from**: SkillAdaptor

#### Methods

##### _generate_id(self, content: str, metadata: dict) → str

Generate deterministic ID from content and metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| metadata | dict | - | - |

**Returns**: `str`


##### _truncate_text_for_metadata(self, text: str, max_bytes: int = PINECONE_METADATA_BYTES_LIMIT) → str

Truncate text to fit within Pinecone's metadata byte limit.

Pinecone limits metadata to 40KB per vector. This truncates
the text field (largest metadata value) to stay within limits,
leaving room for other metadata fields (~1KB overhead).

Args:
    text: Text content to potentially truncate
    max_bytes: Maximum bytes for the text field

Returns:
    Truncated text that fits within the byte limit

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| text | str | - | - |
| max_bytes | int | PINECONE_METADATA_BYTES_LIMIT | - |

**Returns**: `str`


##### format_skill_md(self, skill_dir: Path, metadata: SkillMetadata, enable_chunking: bool = False) → str

Format skill as JSON for Pinecone ingestion.

Creates a package with vectors ready for upsert:
{
  "index_name": "...",
  "namespace": "...",
  "dimension": 1536,
  "metric": "cosine",
  "vectors": [
    {
      "id": "hex-id",
      "metadata": {
        "text": "content",
        "source": "...",
        "category": "...",
        ...
      }
    }
  ]
}

No ``values`` field — embeddings are added at upload time.

Args:
    skill_dir: Path to skill directory
    metadata: Skill metadata
    enable_chunking: Enable intelligent chunking for large documents
    **kwargs: Additional chunking parameters

Returns:
    JSON string containing Pinecone-compatible data

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| metadata | SkillMetadata | - | - |
| enable_chunking | bool | False | - |

**Returns**: `str`


##### package(self, skill_dir: Path, output_path: Path, enable_chunking: bool = False, chunk_max_tokens: int = DEFAULT_CHUNK_TOKENS, preserve_code_blocks: bool = True, chunk_overlap_tokens: int = DEFAULT_CHUNK_OVERLAP_TOKENS) → Path

Package skill into JSON file for Pinecone.

Creates a JSON file containing vectors with metadata, ready for
embedding generation and upsert to a Pinecone index.

Args:
    skill_dir: Path to skill directory
    output_path: Output path/filename for JSON file
    enable_chunking: Enable intelligent chunking for large documents
    chunk_max_tokens: Maximum tokens per chunk (default: 512)
    preserve_code_blocks: Preserve code blocks during chunking

Returns:
    Path to created JSON file

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | Path | - | - |
| output_path | Path | - | - |
| enable_chunking | bool | False | - |
| chunk_max_tokens | int | DEFAULT_CHUNK_TOKENS | - |
| preserve_code_blocks | bool | True | - |
| chunk_overlap_tokens | int | DEFAULT_CHUNK_OVERLAP_TOKENS | - |

**Returns**: `Path`


##### upload(self, package_path: Path, api_key: str | None = None) → dict[str, Any]

Upload packaged skill to Pinecone.

Args:
    package_path: Path to packaged JSON
    api_key: Pinecone API key (or uses PINECONE_API_KEY env var)
    **kwargs:
        index_name: Override index name from JSON
        namespace: Override namespace from JSON
        dimension: Embedding dimension (default: 1536)
        metric: Distance metric (default: "cosine")
        embedding_function: "openai" or "sentence-transformers"
        cloud: Cloud provider (default: "aws")
        region: Cloud region (default: "us-east-1")

Returns:
    {"success": bool, "index": str, "namespace": str, "count": int}

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| package_path | Path | - | - |
| api_key | str | None | None | - |

**Returns**: `dict[str, Any]`


##### validate_api_key(self, _api_key: str) → bool

Pinecone doesn't need API key for packaging.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _api_key | str | - | - |

**Returns**: `bool`


##### get_env_var_name(self) → str

Return the expected env var for Pinecone API key.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `str`


##### supports_enhancement(self) → bool

Pinecone format doesn't support AI enhancement.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### enhance(self, _skill_dir: Path, _api_key: str) → bool

Pinecone format doesn't support enhancement.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| _skill_dir | Path | - | - |
| _api_key | str | - | - |

**Returns**: `bool`



