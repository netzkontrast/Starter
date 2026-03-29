# API Reference: test_pinecone_adaptor.py

**Language**: Python

**Source**: `tests/test_pinecone_adaptor.py`

---

## Classes

### TestPineconeAdaptor

Test Pinecone adaptor functionality.

**Inherits from**: (none)

#### Methods

##### test_import(self)

PineconeAdaptor can be imported.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_platform_constants(self)

Platform constants are set correctly.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_registered_in_factory(self)

PineconeAdaptor is registered in the adaptor factory.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_adaptor(self)

get_adaptor('pinecone') returns PineconeAdaptor instance.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_format_skill_md_structure(self, sample_skill_dir)

format_skill_md returns valid JSON with expected structure.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_format_skill_md_vectors_have_metadata(self, sample_skill_dir)

Each vector has id and metadata fields.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_format_skill_md_doc_version_propagates(self, sample_skill_dir)

doc_version flows into every vector's metadata.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_format_skill_md_empty_doc_version(self, sample_skill_dir)

Empty doc_version is preserved as empty string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_format_skill_md_has_overview_and_references(self, sample_skill_dir)

Output includes overview (SKILL.md) and reference documents.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_package_creates_file(self, sample_skill_dir, tmp_path)

package() creates a JSON file at expected path.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_package_reads_frontmatter_metadata(self, sample_skill_dir, tmp_path)

package() reads doc_version from SKILL.md frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_package_with_chunking(self, sample_skill_dir, tmp_path)

package() with chunking enabled produces valid output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_index_name_derived_from_skill_name(self, sample_skill_dir, tmp_path)

index_name and namespace are derived from skill directory name.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_no_values_field_in_vectors(self, sample_skill_dir, tmp_path)

Vectors have no 'values' field — embeddings are added at upload time.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_text_truncation(self)

_truncate_text_for_metadata respects byte limit.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_validate_api_key_returns_false(self)

validate_api_key returns False (no key needed for packaging).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_get_env_var_name(self)

get_env_var_name returns PINECONE_API_KEY.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_supports_enhancement_false(self)

Pinecone doesn't support enhancement.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_upload_without_pinecone_installed(self, tmp_path)

upload() returns helpful error when pinecone not installed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### _make_mock_pinecone(self, monkeypatch)

Helper: stub the pinecone module so upload() can run without a real server.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### _make_package(self, tmp_path, vectors = None)

Helper: create a minimal Pinecone package JSON.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| vectors | None | None | - |


##### test_upload_success_has_url_key(self, tmp_path, monkeypatch)

upload() success return dict includes 'url' key (prevents KeyError in package_skill.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_embedding_dimension_autodetect_st(self, tmp_path, monkeypatch)

sentence-transformers upload creates index with dimension=384.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_embedding_dimension_autodetect_openai(self, tmp_path, monkeypatch)

openai upload creates index with dimension=1536.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_embedding_before_index_creation(self, tmp_path, monkeypatch)

If embedding generation fails, index is never created (no side-effects).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_embedding_dimension_explicit_override(self, tmp_path, monkeypatch)

Explicit dimension kwarg overrides both auto-detect and JSON file value.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_deterministic_ids(self, sample_skill_dir)

IDs are deterministic — same input produces same ID.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |




### TestDocVersionMetadata

Test doc_version flows through all RAG adaptors.

**Inherits from**: (none)

#### Methods

##### test_skill_metadata_has_doc_version(self)

SkillMetadata dataclass has doc_version field.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_skill_metadata_doc_version_default_empty(self)

doc_version defaults to empty string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_read_frontmatter(self, sample_skill_dir)

_read_frontmatter reads doc_version from SKILL.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_read_frontmatter_missing(self, sample_skill_dir_no_doc_version)

_read_frontmatter returns empty string when doc_version is absent.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir_no_doc_version | None | - | - |


##### test_build_skill_metadata_reads_doc_version(self, sample_skill_dir)

_build_skill_metadata populates doc_version from frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |


##### test_build_skill_metadata_no_doc_version(self, sample_skill_dir_no_doc_version)

_build_skill_metadata defaults to empty string when frontmatter has no doc_version.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir_no_doc_version | None | - | - |


##### test_build_metadata_dict_includes_doc_version(self)

_build_metadata_dict includes doc_version in output.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_build_metadata_dict_empty_doc_version(self)

_build_metadata_dict preserves empty doc_version.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_doc_version_in_package_output(self, platform, sample_skill_dir, tmp_path)

doc_version appears in package output for all RAG adaptors.

**Decorators**: `@pytest.mark.parametrize('platform', ['chroma', 'faiss', 'langchain', 'llama-index', 'haystack', 'pinecone'])`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| platform | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_empty_doc_version_in_package_output(self, platform, sample_skill_dir_no_doc_version, tmp_path)

Empty doc_version is preserved (not omitted) in all adaptors.

**Decorators**: `@pytest.mark.parametrize('platform', ['chroma', 'faiss', 'langchain', 'llama-index', 'haystack', 'pinecone'])`

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| platform | None | - | - |
| sample_skill_dir_no_doc_version | None | - | - |
| tmp_path | None | - | - |




### TestDocVersionQdrant

Test doc_version in Qdrant adaptor (may require qdrant client).

**Inherits from**: (none)

#### Methods

##### test_qdrant_doc_version(self, sample_skill_dir, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |




### TestWeaviateUploadReturnKeys

Test Weaviate upload() return dict has required keys.

**Inherits from**: (none)

#### Methods

##### test_weaviate_upload_success_has_url_key(self, sample_skill_dir, tmp_path, monkeypatch)

Weaviate upload() success return includes 'url' key (prevents KeyError in package_skill.py).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestDocVersionWeaviate

Test doc_version in Weaviate adaptor (may require weaviate client).

**Inherits from**: (none)

#### Methods

##### test_weaviate_doc_version(self, sample_skill_dir, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |


##### test_weaviate_schema_includes_doc_version(self, sample_skill_dir, tmp_path)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sample_skill_dir | None | - | - |
| tmp_path | None | - | - |




### TestDocVersionCLIFlag

Test --doc-version CLI flag is accepted.

**Inherits from**: (none)

#### Methods

##### test_common_arguments_has_doc_version(self)

COMMON_ARGUMENTS includes doc_version.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_create_arguments_has_doc_version(self)

UNIVERSAL_ARGUMENTS includes doc_version.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_doc_version_flag_parsed(self)

--doc-version is parsed correctly by argparse.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_doc_version_default_empty(self)

--doc-version defaults to empty string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




### TestPineconeInPackageChoices

Test pinecone is in package CLI choices.

**Inherits from**: (none)

#### Methods

##### test_pinecone_in_package_arguments(self)

pinecone is listed in package --target choices.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### sample_skill_dir(tmp_path)

Create a minimal skill directory with SKILL.md and references.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)



### sample_skill_dir_no_doc_version(tmp_path)

Create a skill directory without doc_version in frontmatter.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| tmp_path | None | - | - |

**Returns**: (none)



### _extract_metadata_from_package(platform: str, data: dict) → list[dict]

Extract metadata dicts from adaptor-specific package format.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| platform | str | - | - |
| data | dict | - | - |

**Returns**: `list[dict]`



### fail_embeddings(_docs)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _docs | None | - | - |

**Returns**: (none)


