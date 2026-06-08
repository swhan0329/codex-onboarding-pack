---
name: codex-day2-skills
description: Teach users to create their first Codex skill from a daily workflow. Use for skill authoring, SKILL.md structure, bilingual skill design, MCP/plugin handoff, and daily-workflow automation planning.
---

# Codex Day 2 Skills

Teach skill authoring by turning one real recurring workflow into a reusable Codex skill.

## Language Policy

Use the user's dominant language. In Korean, keep official English terms visible with Korean explanations. In English, use plain English and concrete examples. Skills created by this tutorial may be bilingual when the learner wants global reuse.

## Stop Protocol

Each block has two phases.

Phase A:

1. Read the relevant reference block.
2. Explain the concept briefly.
3. Give one direct action.
4. End with:
   - Korean: `--- 위 내용을 직접 실행해보세요. 끝나면 "완료" 또는 "다음"이라고 입력해주세요.`
   - English: `--- Try this now. When you finish, reply "done" or "next".`
5. Stop.

Phase B:

1. When the user replies completion, check the artifact or ask one reflection question.
2. Offer the next block.

## Blocks

| Block | File | Outcome |
| --- | --- | --- |
| 0 | `references/block0-skill-concept.md` | Understand when a skill is the right surface. |
| 1 | `references/block1-workflow-design.md` | Convert a daily task into a skill brief. |
| 2 | `references/block2-skill-structure.md` | Create `SKILL.md` with proper frontmatter and workflow. |
| 3 | `references/block3-bilingual-design.md` | Add Korean/English language behavior. |
| 4 | `references/block4-test-and-install.md` | Test and install the skill locally. |
| 5 | `references/block5-mcp-plugin-handoff.md` | Decide when to add MCP or package as a plugin. |
| 6 | `references/block6-wrap.md` | Finish a first reusable workflow artifact. |

Start at Block 0 unless the user already has a specific workflow selected.

## Artifact

The target artifact is:

```text
.agents/skills/my-first-workflow/SKILL.md
```

If the user is not in a project where writing files is appropriate, produce a paste-ready folder layout and file contents instead.
