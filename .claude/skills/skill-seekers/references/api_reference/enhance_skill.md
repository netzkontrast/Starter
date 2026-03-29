# API Reference: enhance_skill.py

**Language**: Python

**Source**: `src/skill_seekers/cli/enhance_skill.py`

---

## Classes

### SkillEnhancer

**Inherits from**: (none)

#### Methods

##### __init__(self, skill_dir, api_key = None)

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| skill_dir | None | - | - |
| api_key | None | None | - |


##### read_current_skill_md(self)

Read existing SKILL.md

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |


##### enhance_skill_md(self, references, current_skill_md)

Use Claude to enhance SKILL.md

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| references | None | - | - |
| current_skill_md | None | - | - |


##### _is_video_source(self, references)

Check if the references come from video tutorial extraction.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| references | None | - | - |


##### _build_enhancement_prompt(self, references, current_skill_md)

Build the prompt for Claude with multi-source awareness

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| references | None | - | - |
| current_skill_md | None | - | - |


##### _build_video_enhancement_prompt(self, references, current_skill_md)

Build a video-specific enhancement prompt.

Video tutorial references contain transcript text, OCR'd code panels,
code timelines with edits, and audio-visual alignment pairs. This prompt
is tailored to reconstruct clean code from noisy OCR, detect programming
languages from context, and synthesize a coherent tutorial skill.

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| references | None | - | - |
| current_skill_md | None | - | - |


##### save_enhanced_skill_md(self, content)

Save the enhanced SKILL.md

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |
| content | None | - | - |


##### run(self)

Main enhancement workflow

**Parameters**:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| self | None | - | - |




## Functions

### main()

**Returns**: (none)


