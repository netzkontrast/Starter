# API Reference: enhancement_workflow.py

**Language**: Python

**Source**: `src/skill_seekers/cli/enhancement_workflow.py`

---

## Classes

### WorkflowStage

Single enhancement stage in a workflow.

**Inherits from**: (none)



### PostProcessConfig

Post-processing configuration.

**Inherits from**: (none)



### EnhancementWorkflow

Complete enhancement workflow definition.

**Inherits from**: (none)



### WorkflowEngine

Execute enhancement workflows with sequential stages.

Each stage can:
- Access previous stage results
- Access all history
- Access specific stages by name
- Run custom AI prompts
- Target specific parts of the analysis

**Inherits from**: (none)

#### Methods

##### __init__(self, workflow: EnhancementWorkflow | str | Path)

Initialize workflow engine.

Args:
    workflow: EnhancementWorkflow object or path to YAML file

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| workflow | EnhancementWorkflow | str | Path | - | - |


##### _load_workflow(self, workflow_ref: str | Path) → EnhancementWorkflow

Load workflow from YAML file using 3-level search order.

Search order:
1. Raw file path (absolute or relative) — existing behaviour
2. ~/.config/skill-seekers/workflows/{name}.yaml — user overrides/custom
3. skill_seekers/workflows/{name}.yaml via importlib.resources — bundled defaults

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| workflow_ref | str | Path | - | - |

**Returns**: `EnhancementWorkflow`


##### _merge_workflows(self, parent: EnhancementWorkflow, child_data: dict) → dict

Merge child workflow with parent (inheritance).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| parent | EnhancementWorkflow | - | - |
| child_data | dict | - | - |

**Returns**: `dict`


##### run(self, analysis_results: dict, context: dict | None = None) → dict

Run workflow stages sequentially.

Args:
    analysis_results: Results from analysis (patterns, examples, etc.)
    context: Additional context variables

Returns:
    Enhanced results after all stages

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| analysis_results | dict | - | - |
| context | dict | None | None | - |

**Returns**: `dict`


##### _build_stage_context(self, stage: WorkflowStage, current_results: dict, base_context: dict) → dict

Build context for a stage (includes history if needed).

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| stage | WorkflowStage | - | - |
| current_results | dict | - | - |
| base_context | dict | - | - |

**Returns**: `dict`


##### _run_stage(self, stage: WorkflowStage, context: dict) → dict

Run a single stage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| stage | WorkflowStage | - | - |
| context | dict | - | - |

**Returns**: `dict`


##### _run_builtin_stage(self, stage: WorkflowStage, context: dict) → dict

Run built-in enhancement stage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| stage | WorkflowStage | - | - |
| context | dict | - | - |

**Returns**: `dict`


##### _run_custom_stage(self, stage: WorkflowStage, context: dict) → dict

Run custom AI enhancement stage.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| stage | WorkflowStage | - | - |
| context | dict | - | - |

**Returns**: `dict`


##### _merge_stage_results(self, current: dict, stage_results: dict, target: str) → dict

Merge stage results into current results.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| current | dict | - | - |
| stage_results | dict | - | - |
| target | str | - | - |

**Returns**: `dict`


##### _post_process(self, results: dict) → dict

Apply post-processing configuration.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| results | dict | - | - |

**Returns**: `dict`


##### save_history(self, output_path: Path)

Save workflow execution history.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| output_path | Path | - | - |




## Functions

### list_bundled_workflows() → list[str]

Return names of all bundled default workflows (without .yaml extension).

**Returns**: `list[str]`



### list_user_workflows() → list[str]

Return names of all user-defined workflows (without .yaml extension).

**Returns**: `list[str]`


