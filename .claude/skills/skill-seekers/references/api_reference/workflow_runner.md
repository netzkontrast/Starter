# API Reference: workflow_runner.py

**Language**: Python

**Source**: `src/skill_seekers/cli/workflow_runner.py`

---

## Functions

### collect_workflow_vars(args: argparse.Namespace, extra: dict | None = None) → dict

Parse --var KEY=VALUE flags into a dict, optionally merged with extra context.

extra (scraper metadata) is applied first; user --var flags take precedence.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |
| extra | dict | None | None | - |

**Returns**: `dict`



### _build_inline_engine(args: argparse.Namespace)

Build a WorkflowEngine from --enhance-stage flags.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |

**Returns**: (none)



### run_workflows(args: argparse.Namespace, context: dict | None = None) → tuple[bool, list[str]]

Execute all enhancement workflows requested via CLI arguments.

Runs named workflows (--enhance-workflow) in the order they were given,
then runs the combined inline workflow (--enhance-stage) if any stages
were specified.

If --workflow-dry-run is set, all workflows are previewed and the process
exits immediately (no files are modified).

Args:
    args: Parsed CLI arguments (must contain enhance_workflow, enhance_stage,
          var, and workflow_dry_run attributes).
    context: Optional extra key/value pairs merged into workflow variables
             (e.g. GitHub metadata). User --var flags take precedence.

Returns:
    (any_executed, names) where any_executed is True when at least one
    workflow ran successfully and names is the list of workflow names that
    ran.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| args | argparse.Namespace | - | - |
| context | dict | None | None | - |

**Returns**: `tuple[bool, list[str]]`


