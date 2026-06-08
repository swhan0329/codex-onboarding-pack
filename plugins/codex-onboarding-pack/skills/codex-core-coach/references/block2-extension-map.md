# Block 2: Extension Map

Official references:

- https://developers.openai.com/codex/skills
- https://developers.openai.com/codex/plugins
- https://developers.openai.com/codex/mcp
- https://developers.openai.com/codex/subagents
- https://developers.openai.com/codex/hooks
- https://developers.openai.com/codex/agents-md

## EXPLAIN

Korean:

- Skill (스킬): 반복 작업의 진행법을 Codex가 읽을 수 있는 워크플로로 저장합니다.
- Plugin (플러그인): Skills, 앱 연결, MCP 서버 등을 설치 가능한 패키지로 묶습니다.
- MCP: Codex가 외부 도구와 문맥에 접근하는 연결 규격입니다.
- Subagent (서브에이전트): 탐색, 리뷰, 테스트처럼 나눌 수 있는 일을 병렬로 맡기는 방식입니다.
- Hook (훅): 특정 시점에 검증/기록/보안 스크립트를 자동 실행합니다.
- AGENTS.md: repo 안에서 Codex가 따라야 할 규칙, 명령, 검증 기준을 남깁니다.

English:

- Skill: reusable workflow instructions Codex can load when needed.
- Plugin: installable bundle containing skills, app integrations, MCP servers, or hooks.
- MCP: a protocol for connecting Codex to external tools and context.
- Subagent: delegated parallel agent work for exploration, review, or analysis.
- Hook: deterministic lifecycle script for validation, logging, or policy.
- AGENTS.md: durable repo-level instructions for Codex.

## EXECUTE

Ask the learner to map one recurring task to the smallest matching surface:

- One-off instruction -> prompt
- Repo convention -> AGENTS.md
- Reusable workflow -> Skill
- Shared installable package -> Plugin
- External live data/tool -> MCP or app connector
- Automatic guardrail -> Hook
- Parallel review/exploration -> Subagent

## CHECK

Good answer:

- Uses the smallest durable surface.
- Does not make a plugin when a skill is enough.
- Does not use MCP when simple file context is enough.
