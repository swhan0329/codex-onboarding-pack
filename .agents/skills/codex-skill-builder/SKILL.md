---
name: codex-skill-builder
description: Teach users to create, test, improve, and reuse Codex skills from real workflows. Use for skill authoring, SKILL.md structure, bilingual skill design, MCP/plugin handoff, daily-workflow automation planning, and iterative skill improvement in Korean or English.
---

# Codex Skill Builder

Teach skill authoring as a repeatable practice loop. Help the learner turn one real workflow into a Codex Skill, test it, improve it, and reuse the same process for future workflows.

## Language Policy

Use the user's dominant language. In Korean, keep official English terms visible with Korean explanations. In English, use plain English and concrete examples. Skills created by this tutorial may be bilingual when the learner wants global reuse.

## Practice And Continuation Protocol

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
2. Recommend exactly one next step.
3. Offer two short alternatives.
4. If the next step depends on Codex basics, MCP, Plugin packaging, or daily workflow selection, route back to `codex-core-coach` or the relevant block in this skill.
5. If the user replies `next`, `다음`, `continue`, or `계속` without choosing, continue with the recommended next step.

For repeat use, do not assume the learner is making their first skill. If they already have a skill, help them improve its trigger description, simplify instructions, add references, test it against a realistic prompt, or decide whether MCP/plugin packaging is needed.

Do not close the conversation after the learner creates a first `SKILL.md`. A first draft should lead into testing, installation, real-work use, or MCP/plugin handoff.

## Practice Loop

| Block | File | Outcome |
| --- | --- | --- |
| 0 | `references/block0-skill-concept.md` | Understand when a skill is the right surface. |
| 1 | `references/block1-workflow-design.md` | Convert a daily task into a skill brief. |
| 2 | `references/block2-skill-structure.md` | Create `SKILL.md` with proper frontmatter and workflow. |
| 3 | `references/block3-bilingual-design.md` | Add Korean/English language behavior. |
| 4 | `references/block4-test-and-install.md` | Test and install the skill locally. |
| 5 | `references/block5-mcp-plugin-handoff.md` | Decide when to add MCP or package as a plugin. |
| 6 | `references/block6-wrap.md` | Finish a reusable workflow artifact and choose the next improvement. |

Start at Block 0 unless the user already has a specific workflow, existing skill, or bug to improve.

## Continuation Routes

Use these routes after each completion:

| If the learner just finished | Recommended continuation |
| --- | --- |
| Block 0 skill concept | Block 1 workflow design. |
| Block 1 workflow design | Block 2 skill structure. |
| Block 2 skill structure | Block 3 bilingual design when the skill is for global or Korean/English users; otherwise Block 4 testing. |
| Block 3 bilingual design | Block 4 test and install. |
| Block 4 test and install | Improve trigger description if tests failed; otherwise Block 5 MCP/plugin handoff. |
| Block 5 MCP/plugin handoff | Block 6 wrap. |
| Block 6 wrap | Run the skill on one real task, then refine from evidence. |

Korean continuation shape:

```text
다음은 이걸 추천해요: ...
다른 선택지도 있어요: 1) ... 2) ...
원하면 `다음`이라고 답해주세요.
```

English continuation shape:

```text
Recommended next: ...
Other options: 1) ... 2) ...
Reply `next` if you want me to continue.
```

## Artifact

The default target artifact is:

```text
.agents/skills/<workflow-name>/SKILL.md
```

If the user is not in a project where writing files is appropriate, produce a paste-ready folder layout and file contents instead.
