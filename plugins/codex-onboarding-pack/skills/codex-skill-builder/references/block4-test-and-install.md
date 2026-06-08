# Block 4: Test and Install

Official references:

- https://developers.openai.com/codex/skills

## EXPLAIN

Korean:

스킬은 만든 뒤 실제 트리거 문장으로 테스트해야 합니다. description이 너무 넓으면 엉뚱한 때 켜지고, 너무 좁으면 필요할 때 안 켜집니다.

English:

After creating a skill, test it with realistic trigger prompts. If the description is too broad, it triggers at the wrong time. If it is too narrow, Codex will miss it.

## EXECUTE

Test with three prompts:

1. A direct explicit call: `$<workflow-name>`
2. A natural-language trigger that should invoke it.
3. A nearby task that should not invoke it.

If the skill is repo-local, place it under:

```text
.agents/skills/<workflow-name>/SKILL.md
```

If the learner wants it everywhere on the machine, place it under:

```text
~/.agents/skills/<workflow-name>/SKILL.md
```

Restart Codex if the new skill does not appear.

## CHECK

Good answer:

- Includes positive and negative trigger tests.
- Checks whether Codex sees the skill.
- Revises the description if needed.
