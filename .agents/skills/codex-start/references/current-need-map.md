# Current Need Map

## Korean Menu

Codex 온보딩을 시작합니다.

목표는 기능을 외우는 것이 아니라, Codex로 실제 작업물 하나를 남기는 것입니다.

지금 어떤 도움이 필요하신가요?

1. Start here: 더미 실습 폴더를 만들고 첫 프롬프트 복사/붙여넣기
2. Explain simply: 개발 용어나 Codex 용어를 쉽게 설명받기
3. Daily workflow: 반복 업무 하나를 Codex 흐름으로 바꾸기
4. Skill builder: 업무 흐름을 `Skill (스킬)`로 만들거나 개선하기
5. Extend Codex: MCP, Plugin, Subagent, Hook, AGENTS.md가 필요한지 판단하기

답장 예시: `1`, `Start here`, `Explain simply`, `Daily workflow`, `Skill builder`, `Extend Codex`

한 단계를 마치면 대화를 끝내지 말고, 사용자의 방금 답변을 기준으로 추천 다음 단계 1개와 대안 2개를 제안하세요.

## English Menu

Welcome to Codex onboarding.

The goal is not to memorize features. The goal is to leave with a concrete workflow artifact.

What do you need right now?

1. Start here: create a dummy practice folder and copy/paste the first prompt
2. Explain simply: get plain-language explanations of developer or Codex terms
3. Daily workflow: turn one recurring task into a Codex workflow
4. Skill builder: create or improve a reusable Codex Skill
5. Extend Codex: decide whether MCP, Plugins, Subagents, Hooks, or AGENTS.md are needed

Reply with: `1`, `start here`, `explain simply`, `daily workflow`, `skill builder`, or `extend codex`.

After each completed step, do not close the conversation. Recommend one next step and offer two alternatives based on what the learner just did.

## Routing

- Start here -> create/open `codex-practice-lab/`, then `codex-core-coach`
- Explain simply -> `codex-core-coach`
- Daily workflow -> `codex-core-coach`, then possibly `codex-skill-builder`
- Skill builder -> `codex-skill-builder`
- Extend Codex -> `codex-core-coach` module 2, then possibly `codex-skill-builder` block 5
