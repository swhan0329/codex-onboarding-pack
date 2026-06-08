# Codex Onboarding Pack 시작 가이드

이 문서는 Codex Onboarding Pack을 처음 쓰는 사람이 하나씩 따라 해볼 수 있도록 만든 한국어 가이드입니다.

목표는 Codex 기능을 외우는 것이 아닙니다. 목표는 Codex를 실제 업무에 적용할 수 있도록 작은 작업물 하나를 남기는 것입니다.

## 0. 준비물 확인

먼저 아래가 준비되어 있는지 확인합니다.

- Codex가 설치되어 있어야 합니다.
- GitHub에서 이 저장소를 clone할 수 있어야 합니다.
- 터미널에서 `git` 명령을 사용할 수 있어야 합니다.

터미널에서 확인합니다.

```bash
git --version
```

Codex가 CLI로 설치되어 있다면 아래도 확인합니다.

```bash
codex --version
```

`codex --version`이 동작하지 않아도 Codex Desktop app을 사용 중이라면 괜찮습니다. 이 경우 Codex app에서 프로젝트 폴더를 열어 진행하면 됩니다.

## 1. 저장소 clone

원하는 작업 폴더로 이동한 뒤 저장소를 clone합니다.

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
cd codex-onboarding-pack
```

폴더 안에 스킬이 있는지 확인합니다.

```bash
find .agents/skills -maxdepth 2 -name SKILL.md -print
```

아래 세 개가 보이면 정상입니다.

```text
.agents/skills/codex-camp-start/SKILL.md
.agents/skills/codex-day1-core/SKILL.md
.agents/skills/codex-day2-skills/SKILL.md
```

## 2. Codex에서 repo 열기

### Codex CLI를 쓰는 경우

저장소 root에서 실행합니다.

```bash
codex
```

### Codex Desktop app을 쓰는 경우

Codex app에서 `codex-onboarding-pack` 폴더를 프로젝트로 엽니다.

중요한 점은 Codex가 이 저장소의 root를 보고 있어야 한다는 것입니다. 그래야 `.agents/skills` 안의 스킬을 찾을 수 있습니다.

## 3. 첫 스킬 호출

Codex에 아래처럼 입력합니다.

```text
$codex-camp-start
```

또는 자연어로 이렇게 요청해도 됩니다.

```text
Codex 온보딩 시작해줘.
```

정상이라면 Codex가 다음 중 어떤 방식으로 시작할지 물어봅니다.

- 빠른 체험
- Daily workflow
- Skill builder
- Facilitator mode

처음이라면 이렇게 답하세요.

```text
빠른 체험으로 시작할게.
```

## 4. Day 1: Codex 핵심 지도 만들기

Day 1은 `$codex-day1-core` 스킬로 진행됩니다.

직접 호출하고 싶다면 이렇게 입력합니다.

```text
$codex-day1-core
```

Day 1에서 배우는 내용은 다음과 같습니다.

- Codex app, CLI, IDE extension, web/cloud의 차이
- `Skill`, `Plugin`, `MCP`, `Subagent`, `Hook`, `AGENTS.md`의 역할
- Codex에게 좋은 요청을 주는 법
- 내 daily 업무 중 Codex로 바꿀 수 있는 흐름 찾기

Codex가 각 블록마다 설명한 뒤 멈추면, 직접 해본 다음 이렇게 답합니다.

```text
완료
```

또는

```text
다음
```

Day 1의 목표 결과물은 아래 중 하나입니다.

- 채팅 안에 정리된 `Codex Onboarding Map`
- 파일로 저장된 `CODEX_ONBOARDING_MAP.md`

## 5. Day 2: 내 첫 Skill 만들기

Day 2는 반복 업무 하나를 Codex Skill로 바꾸는 과정입니다.

호출합니다.

```text
$codex-day2-skills
```

처음에는 아래처럼 답해도 좋습니다.

```text
내가 매일 반복하는 업무를 하나 골라서 첫 스킬로 만들고 싶어.
```

Day 2에서 만드는 목표 파일은 다음과 같습니다.

```text
.agents/skills/my-first-workflow/SKILL.md
```

처음 만들 스킬 주제 예시는 다음과 같습니다.

- 매일 아침 메일 triage
- 회의 전 agenda 정리
- Slack/문서에서 액션 아이템 뽑기
- GitHub PR 리뷰 체크리스트
- 수업/워크샵 준비 체크리스트
- 브라우저 QA 기록 정리

## 6. Daily 업무에 적용하기

내 업무를 Codex workflow로 바꿀 때는 아래 표를 먼저 채웁니다.

```md
| Task | Input source | Output | Frequency | Human review needed? | Best Codex surface |
| --- | --- | --- | --- | --- | --- |
| 예: 아침 메일 triage | Gmail inbox | 우선순위 표 + 답장 초안 | 매일 | Yes | Gmail plugin + Skill |
```

그다음 Codex에 이렇게 요청합니다.

```text
이 표를 바탕으로 내가 매일 쓸 수 있는 Codex Skill 초안을 만들어줘.
한 번에 너무 크게 자동화하지 말고, 사람이 검토하는 지점을 포함해줘.
```

## 7. MCP를 연결해보고 싶다면

MCP는 Codex가 외부 도구나 최신 문서, 사내 서비스, 브라우저/Figma 같은 도구와 연결될 때 사용합니다.

처음에는 꼭 MCP를 설치할 필요는 없습니다. 먼저 Skill만으로 workflow를 만들어보고, 외부 데이터가 필요해질 때 MCP를 연결하는 것이 좋습니다.

예를 들어 문서 검색 MCP를 실험해보고 싶다면 Codex 문서의 최신 안내를 확인한 뒤 진행하세요.

```bash
codex mcp --help
```

예시 패턴은 다음과 같습니다.

```bash
codex mcp add context7 -- npx -y @upstash/context7-mcp
```

연결 후 Codex 안에서 `/mcp`를 열어 활성화 상태를 확인합니다.

## 8. 자주 막히는 지점

### 스킬이 안 보여요

1. Codex를 저장소 root에서 열었는지 확인합니다.
2. `.agents/skills` 아래에 `SKILL.md` 파일들이 있는지 확인합니다.
3. Codex를 재시작합니다.

### `$codex-camp-start`가 안 먹어요

아래처럼 자연어로 요청합니다.

```text
이 repo의 .agents/skills/codex-camp-start/SKILL.md를 사용해서 온보딩을 시작해줘.
```

### 이 스킬을 모든 프로젝트에서 쓰고 싶어요

저장소 root에서 실행합니다.

```bash
./scripts/install-to-user-skills.sh
```

그러면 세 스킬이 `~/.agents/skills` 아래로 복사됩니다.

## 9. 추천 첫 실습 순서

처음이라면 이 순서로 진행하세요.

1. `git clone`
2. `codex` 실행 또는 Codex app에서 repo 열기
3. `$codex-camp-start`
4. 빠른 체험 선택
5. `$codex-day1-core` 완료
6. daily 업무 후보 하나 고르기
7. `$codex-day2-skills`
8. `.agents/skills/my-first-workflow/SKILL.md` 초안 만들기
9. 실제 업무 하나에 테스트해보기
10. 필요한 경우 MCP 또는 Plugin으로 확장하기

## 10. 다음 목표

이 온보딩을 끝낸 뒤에는 아래 중 하나를 해보면 좋습니다.

- 내 업무용 Skill 하나를 완성하기
- 팀 repo에 `AGENTS.md` 작성하기
- Gmail, Google Drive, Slack, GitHub, Figma 같은 plugin 연결 실험하기
- MCP가 필요한 업무와 필요 없는 업무를 구분해보기
- 반복 업무를 주간 자동화 후보로 정리하기
