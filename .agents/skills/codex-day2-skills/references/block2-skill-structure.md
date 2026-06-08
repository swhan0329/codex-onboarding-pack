# Block 2: Skill Structure

Official references:

- https://developers.openai.com/codex/skills

## EXPLAIN

Korean:

Codex 스킬의 최소 구조는 폴더 하나와 `SKILL.md`입니다. `SKILL.md` 맨 위에는 `name`과 `description`이 들어갑니다. 이 description이 트리거 판단에 중요합니다.

English:

The smallest Codex skill is a folder with `SKILL.md`. Its frontmatter must include `name` and `description`. The description is important because Codex uses it to decide when the skill applies.

## EXECUTE

Create this minimal structure:

```text
.agents/skills/my-first-workflow/
└── SKILL.md
```

Starter `SKILL.md`:

```md
---
name: my-first-workflow
description: Use when the user asks to run or improve [specific repeated task]. Trigger on [keywords]. Do not use for unrelated work.
---

# My First Workflow

## Inputs

## Steps

## Verification

## Output

## Boundaries
```

## CHECK

Good answer:

- The `description` says when to use and when not to use the skill.
- The body is shorter than the reference files.
- The workflow has explicit outputs.
