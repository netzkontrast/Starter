# API Reference: openapi_scraper.py

**Language**: Python

**Source**: `src/skill_seekers/cli/openapi_scraper.py`

---

## Classes

### OpenAPIToSkillConverter

Convert OpenAPI/Swagger specifications to AI-ready skills.

Supports OpenAPI 2.0 (Swagger), 3.0, and 3.1 specifications in both
YAML and JSON formats. Can load specs from local files or remote URLs.

The converter extracts endpoints, schemas, security schemes, and metadata,
then generates structured markdown reference files suitable for LLM consumption.

Attributes:
    config: Configuration dictionary with name, spec_path, spec_url, description.
    name: Skill name used for output directory and filenames.
    spec_path: Local file path to the OpenAPI spec (mutually exclusive with spec_url).
    spec_url: Remote URL to fetch the OpenAPI spec from.
    description: Skill description for SKILL.md frontmatter.
    skill_dir: Output directory for the generated skill.
    data_file: Path to the extracted JSON data file.
    spec_data: Raw parsed spec dictionary.
    extracted_data: Structured extraction result with endpoints, schemas, etc.

**Inherits from**: (none)

#### Methods

##### __init__(self, config: dict) → None

Initialize the converter with configuration.

Args:
    config: Dictionary with keys:
        - name (str): Skill name (required)
        - spec_path (str): Local file path to spec (optional)
        - spec_url (str): Remote URL to fetch spec (optional)
        - description (str): Skill description (optional)

Raises:
    ValueError: If neither spec_path nor spec_url is provided and
                no from_json workflow is intended.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| config | dict | - | - |

**Returns**: `None`


##### extract_spec(self) → bool

Read and parse the OpenAPI specification from file or URL.

Determines the source (local file or remote URL), loads the raw content,
parses it as YAML or JSON, detects the OpenAPI version, and delegates
to the appropriate version-specific parser.

Returns:
    True if extraction succeeded, False otherwise.

Raises:
    RuntimeError: If the spec cannot be loaded or parsed.
    ValueError: If the spec version is unsupported.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `bool`


##### _load_from_file(self, path: str) → dict[str, Any]

Load and parse a spec from a local file.

Supports both YAML (.yaml, .yml) and JSON (.json) files.

Args:
    path: Path to the local spec file.

Returns:
    Parsed spec as a dictionary.

Raises:
    RuntimeError: If the file cannot be read or parsed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| path | str | - | - |

**Returns**: `dict[str, Any]`


##### _load_from_url(self, url: str) → dict[str, Any]

Fetch and parse a spec from a remote URL.

Args:
    url: URL to fetch the spec from.

Returns:
    Parsed spec as a dictionary.

Raises:
    RuntimeError: If the URL cannot be fetched or the content parsed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| url | str | - | - |

**Returns**: `dict[str, Any]`


##### _parse_content(self, content: str, source: str) → dict[str, Any]

Parse raw content as YAML or JSON.

Tries JSON first (faster), falls back to YAML. YAML is a superset
of JSON, so YAML parsing handles both formats.

Args:
    content: Raw text content.
    source: Source path or URL (for error messages and format detection).

Returns:
    Parsed dictionary.

Raises:
    RuntimeError: If content cannot be parsed.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | str | - | - |
| source | str | - | - |

**Returns**: `dict[str, Any]`


##### _detect_version(self, spec: dict[str, Any]) → str

Detect the OpenAPI/Swagger version from the spec.

Args:
    spec: Parsed spec dictionary.

Returns:
    Version string (e.g. "2.0", "3.0.3", "3.1.0").

Raises:
    ValueError: If no version field is found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `str`


##### load_extracted_data(self, json_path: str | None = None) → bool

Load previously extracted data from a JSON file.

Args:
    json_path: Path to the JSON file. Defaults to self.data_file.

Returns:
    True if loading succeeded.

Raises:
    FileNotFoundError: If the JSON file does not exist.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| json_path | str | None | None | - |

**Returns**: `bool`


##### _parse_openapi_3(self, spec: dict[str, Any]) → dict[str, Any]

Parse an OpenAPI 3.0/3.1 specification.

Extracts info, servers, endpoints, component schemas, and security schemes
following the OpenAPI 3.x structure.

Args:
    spec: Parsed OpenAPI 3.x spec dictionary.

Returns:
    Structured extraction dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _parse_swagger_2(self, spec: dict[str, Any]) → dict[str, Any]

Parse a Swagger 2.0 specification.

Extracts info, host/basePath, endpoints, definitions, and security
following the Swagger 2.0 structure.

Args:
    spec: Parsed Swagger 2.0 spec dictionary.

Returns:
    Structured extraction dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _extract_info(self, spec: dict[str, Any]) → dict[str, Any]

Extract the info object from a spec.

Args:
    spec: The full spec dictionary.

Returns:
    Normalized info dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _extract_endpoints(self, spec: dict[str, Any], version: int) → list[dict[str, Any]]

Extract all API endpoints from the spec paths.

Iterates over every path and HTTP method, extracting operation metadata,
parameters, request body, responses, tags, and security requirements.

Args:
    spec: The full spec dictionary.
    version: OpenAPI major version (2 or 3).

Returns:
    List of endpoint dictionaries.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| spec | dict[str, Any] | - | - |
| version | int | - | - |

**Returns**: `list[dict[str, Any]]`


##### _normalize_parameter(self, param: dict[str, Any], version: int, spec: dict[str, Any]) → dict[str, Any]

Normalize a parameter object across OpenAPI versions.

Args:
    param: Raw parameter object (already resolved).
    version: OpenAPI major version (2 or 3).
    spec: Full spec for nested $ref resolution.

Returns:
    Normalized parameter dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| param | dict[str, Any] | - | - |
| version | int | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _normalize_request_body_v3(self, body: dict[str, Any], spec: dict[str, Any]) → dict[str, Any]

Normalize an OpenAPI 3.x request body object.

Args:
    body: Raw requestBody object (already resolved).
    spec: Full spec for nested $ref resolution.

Returns:
    Normalized request body dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| body | dict[str, Any] | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _normalize_response(self, response: dict[str, Any], version: int, spec: dict[str, Any]) → dict[str, Any]

Normalize a response object across OpenAPI versions.

Args:
    response: Raw response object (already resolved).
    version: OpenAPI major version (2 or 3).
    spec: Full spec for nested $ref resolution.

Returns:
    Normalized response dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| response | dict[str, Any] | - | - |
| version | int | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _extract_schemas(self, schemas_dict: dict[str, Any], spec: dict[str, Any]) → dict[str, Any]

Extract and normalize component schemas or definitions.

Args:
    schemas_dict: The schemas/definitions mapping from the spec.
    spec: Full spec for $ref resolution.

Returns:
    Dictionary of schema name to flattened schema object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schemas_dict | dict[str, Any] | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### _flatten_schema(self, schema: dict[str, Any], spec: dict[str, Any], depth: int = 0) → dict[str, Any]

Flatten a schema by resolving references and simplifying structure.

Handles $ref, allOf, oneOf, anyOf composition. Limits recursion depth
to prevent infinite loops in circular references.

Args:
    schema: Schema object to flatten.
    spec: Full spec for $ref resolution.
    depth: Current recursion depth (max 10).

Returns:
    Flattened schema dictionary.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schema | dict[str, Any] | - | - |
| spec | dict[str, Any] | - | - |
| depth | int | 0 | - |

**Returns**: `dict[str, Any]`


##### _extract_security(self, security_dict: dict[str, Any], version: int) → dict[str, Any]

Extract and normalize security scheme definitions.

Args:
    security_dict: securitySchemes (v3) or securityDefinitions (v2) mapping.
    version: OpenAPI major version (2 or 3).

Returns:
    Dictionary of scheme name to normalized security scheme.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| security_dict | dict[str, Any] | - | - |
| version | int | - | - |

**Returns**: `dict[str, Any]`


##### _resolve_ref(self, obj: dict[str, Any], spec: dict[str, Any]) → dict[str, Any]

Resolve a $ref reference within the specification.

Follows JSON Pointer syntax (e.g. "#/components/schemas/Pet") to find
the referenced object. Returns the original object unchanged if it
contains no $ref.

Args:
    obj: Object that may contain a "$ref" key.
    spec: The full spec to resolve against.

Returns:
    The resolved object, or the original if no $ref is present.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| obj | dict[str, Any] | - | - |
| spec | dict[str, Any] | - | - |

**Returns**: `dict[str, Any]`


##### categorize_content(self) → dict[str, list[dict[str, Any]]]

Categorize endpoints by tags and path groups.

Groups endpoints primarily by their tags. Endpoints without tags are
grouped by the first significant path segment. A special "untagged"
group is used for endpoints that cannot be categorized.

Returns:
    Dictionary mapping category name to list of endpoint dicts.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `dict[str, list[dict[str, Any]]]`


##### build_skill(self) → None

Build the complete skill structure from extracted data.

Creates output directories, generates reference files for each endpoint
category, an index file, and the main SKILL.md.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |

**Returns**: `None`


##### _generate_reference_file(self, cat_name: str, endpoints: list[dict[str, Any]]) → None

Generate a reference markdown file for a category of endpoints.

Args:
    cat_name: Category name (tag or path group).
    endpoints: List of endpoint dicts belonging to this category.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| cat_name | str | - | - |
| endpoints | list[dict[str, Any]] | - | - |

**Returns**: `None`


##### _generate_schemas_reference(self, schemas: dict[str, Any]) → None

Generate a reference markdown file for all component schemas.

Args:
    schemas: Dictionary mapping schema name to schema object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schemas | dict[str, Any] | - | - |

**Returns**: `None`


##### _generate_security_reference(self, security_schemes: dict[str, Any]) → None

Generate a reference markdown file for security schemes.

Args:
    security_schemes: Dictionary mapping scheme name to scheme object.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| security_schemes | dict[str, Any] | - | - |

**Returns**: `None`


##### _generate_index(self, categories: dict[str, list[dict[str, Any]]]) → None

Generate the reference index file.

Args:
    categories: Categorized endpoints mapping.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categories | dict[str, list[dict[str, Any]]] | - | - |

**Returns**: `None`


##### _generate_skill_md(self, categories: dict[str, list[dict[str, Any]]]) → None

Generate the main SKILL.md file.

Creates a comprehensive skill manifest with API overview, endpoint summary,
authentication info, quick reference, and navigation links.

Args:
    categories: Categorized endpoints mapping.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| categories | dict[str, list[dict[str, Any]]] | - | - |

**Returns**: `None`


##### _format_endpoint_md(self, endpoint: dict[str, Any]) → str

Format a single endpoint as a markdown section.

Generates a comprehensive markdown block including method, path, summary,
description, parameters table, request body schema, and response schemas.

Args:
    endpoint: Normalized endpoint dictionary.

Returns:
    Markdown string for the endpoint.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| endpoint | dict[str, Any] | - | - |

**Returns**: `str`


##### _format_schema_md(self, schema_name: str, schema: dict[str, Any]) → str

Format a component schema as a markdown section.

Renders the schema name, type, description, properties table, enum values,
and composition (allOf/oneOf/anyOf).

Args:
    schema_name: Name of the schema.
    schema: Flattened schema dictionary.

Returns:
    Markdown string for the schema.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schema_name | str | - | - |
| schema | dict[str, Any] | - | - |

**Returns**: `str`


##### _render_schema_block(self, schema: dict[str, Any], indent: int = 0) → str

Render a schema as an indented property listing.

Used for inline schema rendering in endpoint request/response sections.

Args:
    schema: Schema dictionary.
    indent: Indentation level.

Returns:
    Formatted schema string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schema | dict[str, Any] | - | - |
| indent | int | 0 | - |

**Returns**: `str`


##### _schema_type_string(self, schema: dict[str, Any]) → str

Generate a human-readable type string for a schema.

Handles primitive types, arrays, objects, refs, enums, and formats.

Args:
    schema: Schema dictionary.

Returns:
    Type string like "string", "integer(int64)", "array[Pet]", etc.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| schema | dict[str, Any] | - | - |

**Returns**: `str`


##### _get_tag_description(self, tag_name: str) → str

Look up a tag description from the spec tags list.

Args:
    tag_name: Tag name to search for.

Returns:
    Tag description string, or empty string if not found.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tag_name | str | - | - |

**Returns**: `str`


##### _sanitize_filename(self, name: str) → str

Convert a string to a safe filename.

Removes special characters, replaces spaces and hyphens with underscores,
and lowercases the result.

Args:
    name: Input string.

Returns:
    Sanitized filename string.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| name | str | - | - |

**Returns**: `str`




## Functions

### _check_yaml_deps()

Raise RuntimeError if pyyaml is not installed.

**Returns**: (none)



### infer_description_from_spec(info: dict | None = None, name: str = '') → str

Infer skill description from OpenAPI info object.

Tries to build a meaningful "Use when..." description from the spec metadata.

Args:
    info: OpenAPI info object with title, description, etc.
    name: Skill name for fallback

Returns:
    Description string suitable for "Use when..." format

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| info | dict | None | None | - |
| name | str | '' | - |

**Returns**: `str`



### main() → int

CLI entry point for the OpenAPI scraper.

Supports three input modes:
1. Local spec file: --spec path/to/spec.yaml
2. Remote spec URL: --spec-url https://example.com/openapi.json
3. Pre-extracted JSON: --from-json extracted.json

Standard arguments (--name, --description, --verbose, --quiet, --dry-run)
are provided by the shared argument system.

**Returns**: `int`


