# API Reference: test_unified_scraper_orchestration.py

**Language**: Python

**Source**: `tests/test_unified_scraper_orchestration.py`

---

## Classes

### TestScrapeAllSourcesRouting

scrape_all_sources() dispatches to the correct _scrape_* method.

**Inherits from**: (none)

#### Methods

##### _run_with_sources(self, sources, monkeypatch)

Helper: set sources on a fresh scraper and run scrape_all_sources().

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| sources | None | - | - |
| monkeypatch | None | - | - |


##### test_documentation_source_routes_to_scrape_documentation(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_github_source_routes_to_scrape_github(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_pdf_source_routes_to_scrape_pdf(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_local_source_routes_to_scrape_local(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_unknown_source_type_is_skipped(self, monkeypatch)

Unknown types are logged as warnings but do not crash or call any scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_multiple_sources_each_scraper_called_once(self, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |


##### test_exception_in_one_source_continues_others(self, monkeypatch)

An exception in one scraper does not abort remaining sources.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |




### TestScrapeDocumentation

_scrape_documentation() writes a temp config and runs doc_scraper as subprocess.

**Inherits from**: (none)

#### Methods

##### test_subprocess_called_with_config_and_fresh_flag(self, tmp_path)

subprocess.run is called with --config and --fresh for the doc scraper.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_nothing_appended_on_subprocess_failure(self, tmp_path)

If subprocess returns non-zero, scraped_data["documentation"] stays empty.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_llms_txt_url_forwarded_to_doc_config(self, tmp_path)

llms_txt_url from source is forwarded to the temporary doc config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |


##### test_start_urls_forwarded_to_doc_config(self, tmp_path)

start_urls from source is forwarded to the temporary doc config.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |




### TestScrapeGithub

_scrape_github() delegates to GitHubScraper and populates scraped_data.

**Inherits from**: (none)

#### Methods

##### _mock_github_scraper(self, monkeypatch, github_data = None)

Patch GitHubScraper class in the unified_scraper module.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| github_data | None | None | - |


##### test_github_scraper_instantiated_with_repo(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_scrape_method_called(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_scraped_data_appended(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_source_counter_incremented(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_c3_analysis_not_triggered_when_disabled(self, tmp_path, monkeypatch)

When enable_codebase_analysis=False, _clone_github_repo is never called.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestScrapePdf

_scrape_pdf() delegates to PDFToSkillConverter and populates scraped_data.

**Inherits from**: (none)

#### Methods

##### _mock_pdf_converter(self, monkeypatch, tmp_path, pages = None)

Patch PDFToSkillConverter class and provide a fake data_file.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| monkeypatch | None | - | - |
| tmp_path | None | - | - |
| pages | None | None | - |


##### test_pdf_converter_instantiated_with_path(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_extract_pdf_called(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_scraped_data_appended_with_pages(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_source_counter_incremented(self, tmp_path, monkeypatch)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestScrapeLocal

_scrape_local() delegates to analyze_codebase and populates scraped_data.

**Inherits from**: (none)

#### Methods

##### test_source_counter_incremented(self, tmp_path, monkeypatch)

Counter is incremented when _scrape_local() is called.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_enhance_level_uses_cli_args_override(self, tmp_path, monkeypatch)

CLI --enhance-level overrides per-source enhance_level.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |


##### test_analyze_codebase_not_called_with_old_kwargs(self, tmp_path, monkeypatch)

analyze_codebase() must not receive enhance_with_ai or ai_mode (#323).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| tmp_path | None | - | - |
| monkeypatch | None | - | - |




### TestRunOrchestration

run() executes 4 phases in order and integrates enhancement workflows.

**Inherits from**: (none)

#### Methods

##### _make_run_scraper(self, extra_config = None)

Minimal scraper for run() tests with all heavy methods pre-mocked.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| extra_config | None | None | - |


##### test_four_phases_called(self)

scrape_all_sources, detect_conflicts, build_skill are always called.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_merge_sources_skipped_when_no_conflicts(self)

merge_sources is NOT called when detect_conflicts returns empty list.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_merge_sources_called_when_conflicts_present(self)

merge_sources IS called when conflicts are detected.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_not_called_without_args_and_no_json_workflows(self)

When args=None and config has no workflow fields, run_workflows is never called.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_called_when_args_provided(self)

When CLI args are passed, run_workflows is invoked.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### test_workflow_called_for_json_config_workflows(self)

When config has 'workflows' list, run_workflows is called even with args=None.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### _make_scraper(extra_config = None, tmp_path = None)

Create a minimal UnifiedScraper bypassing __init__ dir creation.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| extra_config | None | None | - |
| tmp_path | None | None | - |

**Returns**: (none)



### raise_on_doc(_s)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _s | None | - | - |

**Returns**: (none)



### count_github(_s)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| _s | None | - | - |

**Returns**: (none)



### capture_dump(obj, f)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| obj | None | - | - |
| f | None | - | - |

**Returns**: (none)



### fake_analyze()

**Returns**: (none)



### fake_analyze()

**Returns**: (none)



### fake_run_workflows(args, context = None)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | None | - | - |
| context | None | None | - |

**Returns**: (none)


