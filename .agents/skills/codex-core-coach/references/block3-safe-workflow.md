# Block 3: Safe Workflow

Official references:

- https://developers.openai.com/codex/workflows
- https://developers.openai.com/codex/agent-approvals-security

## EXPLAIN

Korean:

Codex에게 좋은 요청은 세 가지가 분명합니다: 목적, 제약, 검증입니다. "고쳐줘"보다 "이 증상을 재현하고, 최소 수정하고, 관련 테스트를 돌려줘"가 훨씬 좋습니다.

English:

A strong Codex request makes three things explicit: goal, constraints, and verification. "Fix this" is weaker than "reproduce this behavior, make the smallest safe fix, and run the relevant checks."

## EXECUTE

Ask the learner to rewrite one vague request into this format:

```text
Goal:
Context:
Constraints:
Verification:
Do not:
```

## CHECK

Good answer:

- Includes a concrete done condition.
- Names files, paths, examples, or source surfaces when possible.
- Names what Codex should not change.
