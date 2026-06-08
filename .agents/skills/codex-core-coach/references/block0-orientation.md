# Block 0: Practice Lab Orientation

Official references:

- https://developers.openai.com/codex/workflows
- https://developers.openai.com/codex/app/features

## EXPLAIN

Korean:

Codex는 설명만 듣는 것보다, 작은 폴더를 실제로 읽고 고치고 확인해볼 때 훨씬 빨리 이해됩니다. 이 온보딩은 먼저 더미 실습 폴더를 만들고, 회의록 요약, 초안 수정, 작은 버그 수정, 데이터 요약을 직접 해보게 합니다.

English:

Codex is easier to understand when the learner can watch it read files, edit a small draft, fix a tiny bug, and verify the result. This onboarding should start with the included practice lab before moving into concepts.

## EXECUTE

Create or open the practice lab:

1. If `codex-practice-lab/` does not exist, copy it from the included `practice-lab-template/`.
2. Ask the learner to open one prompt file:
   - Korean: `codex-practice-lab/prompts/01-first-task.ko.md`
   - English: `codex-practice-lab/prompts/01-first-task.en.md`
3. Tell the learner to copy/paste that prompt into Codex.
4. Stop and wait for `완료`, `다음`, `done`, or `next`.

If the practice lab already exists, ask the learner to reuse it and continue with the next prompt in `codex-practice-lab/prompts/`.

## CHECK

Good answer:

- Creates or finds `codex-practice-lab/`.
- Runs the first prompt against real dummy files.
- Keeps the first result small enough to inspect.
