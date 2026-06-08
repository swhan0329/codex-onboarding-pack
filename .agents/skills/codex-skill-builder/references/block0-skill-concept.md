# Block 0: Skill Concept

Official references:

- https://developers.openai.com/codex/skills

## EXPLAIN

Korean:

Skill (스킬)은 Codex에게 "이 일을 할 때는 이렇게 진행해"라고 알려주는 재사용 가능한 작업 절차입니다. 한 번만 쓸 지시는 프롬프트로 충분합니다. 반복되고, 기준이 있고, 참고 자료나 체크리스트가 필요하면 스킬이 좋습니다.

English:

A Skill is a reusable workflow instruction for Codex. A one-off instruction belongs in the prompt. If the work repeats, has standards, and benefits from references or checklists, it is a good skill candidate.

## EXECUTE

If the learner used the practice lab, ask which prompt felt reusable:

- meeting notes -> action-item table
- draft -> polished announcement
- bug report -> minimal fix and verification
- CSV -> status report

Then ask the learner to choose one repeated task and answer:

```text
Task:
Trigger words:
Inputs:
Output:
Standards:
What Codex must not do:
```

## CHECK

Good answer:

- Has clear trigger words.
- Produces a repeatable output.
- Has boundaries.
