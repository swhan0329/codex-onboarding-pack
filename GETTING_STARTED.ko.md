# Codex Onboarding Pack 시작 가이드

이 문서는 Codex Onboarding Pack을 처음 쓰는 사람이 하나씩 따라 해볼 수 있도록 만든 한국어 가이드입니다.

목표는 Codex 기능을 외우는 것이 아닙니다. 목표는 Codex를 실제 업무에 적용할 수 있도록 작은 작업물 하나를 남기고, 다음 실습으로 계속 이어가는 것입니다.

만든 사람: **Codex Ambassador [한서우 / Seowoo Han](https://swhan0329.github.io/)**

링크: [포트폴리오](https://swhan0329.github.io/) · [LinkedIn](https://www.linkedin.com/in/swhan0329/) · [GitHub](https://github.com/swhan0329)

## 0. 준비물 확인

먼저 아래가 준비되어 있는지 확인합니다.

- Codex App이 설치되어 있고 로그인할 수 있어야 합니다.
- 아래 GitHub URL에 접근할 수 있어야 합니다.
- 터미널에서 `codex` 명령을 사용할 수 있으면 좋지만, 필수는 아닙니다.

Codex CLI는 선택 사항입니다. 이 가이드는 먼저 Codex App으로 시작합니다.

GitHub URL:

```text
https://github.com/swhan0329/codex-onboarding-pack
```

Codex CLI도 함께 쓰고 싶다면 아래를 확인합니다.

```bash
codex --version
```

`codex --version`이 동작하지 않아도 괜찮습니다. Codex App에서 먼저 아래 요청을 해보세요.

## 1. Codex App에서 GitHub URL로 설치하기 (추천)

새 thread에 아래처럼 붙여넣습니다.

```text
이 GitHub repo를 Codex plugin으로 추가하고 설치해줘:
https://github.com/swhan0329/codex-onboarding-pack
```

Codex가 직접 진행할 수 있으면 안내에 따라 설치합니다.

만약 marketplace source를 추가하라는 명령을 알려주거나 터미널 실행이 필요하다고 하면 아래 명령을 사용합니다.

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

설치 확인은 아래 명령으로 합니다.

```bash
codex plugin list --marketplace codex-onboarding-pack
```

정상 출력 예시는 다음과 같습니다.

```text
PLUGIN                                       STATUS              VERSION  PATH
codex-onboarding-pack@codex-onboarding-pack  installed, enabled  0.1.2    ...
```

나중에 최신 버전으로 업데이트하려면 아래처럼 실행합니다.

```bash
codex plugin marketplace upgrade codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

`/plugins`에서 직접 설치해도 되고, 위 두 번째 명령처럼 `codex plugin add`로 설치해도 됩니다.

설치 후 새 thread에서 이렇게 시작합니다.

```text
@codex-onboarding-pack start onboarding
```

또는 시작 스킬을 직접 호출합니다.

```text
$codex-start
```

## 2. 설치 후 보이는 스킬

```text
$codex-start
$codex-core-coach
$codex-skill-builder
```

정상이라면 Codex가 다음 중 어떤 도움이 필요한지 물어봅니다.

- Start here
- Explain simply
- Daily workflow
- Skill builder
- Extend Codex

처음이라면 이렇게 답하세요.

```text
Start here로 시작할게.
```

## 3. Repo-local fallback

스킬 파일을 직접 확인하거나 수정하거나 테스트하고 싶을 때만 이 경로를 사용합니다.

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
cd codex-onboarding-pack
codex
```

Codex가 열리면 이렇게 시작합니다.

```text
$codex-start
```

repo-local skill 파일이 보이는지 확인하려면:

```bash
find .agents/skills -maxdepth 2 -name SKILL.md -print
```

아래 세 개가 보이면 정상입니다.

```text
.agents/skills/codex-start/SKILL.md
.agents/skills/codex-core-coach/SKILL.md
.agents/skills/codex-skill-builder/SKILL.md
```

## 4. 기본기와 용어를 쉽게 배우기

기본기 설명은 `$codex-core-coach` 스킬로 진행됩니다. 이 스킬은 한 번 듣고 끝내는 강의가 아니라, Codex를 쓰다가 막힐 때 다시 부르는 코치입니다.

직접 호출하고 싶다면 이렇게 입력합니다.

```text
$codex-core-coach
```

이 스킬로 배울 수 있는 내용은 다음과 같습니다.

- Codex app, CLI, IDE extension, web/cloud의 차이
- `Skill`, `Plugin`, `MCP`, `Subagent`, `Hook`, `AGENTS.md`의 역할
- Codex에게 좋은 요청을 주는 법
- 내 daily 업무 중 Codex로 바꿀 수 있는 흐름 찾기
- 개발 용어나 Codex 용어를 쉬운 예시로 풀어보기

예를 들어 이렇게 물어볼 수 있습니다.

```text
MCP가 뭔지 개발자가 아닌 사람도 이해할 수 있게 설명해줘.
```

또는

```text
지금 내가 Codex App에서 뭘 먼저 해보면 좋을지 한 단계씩 알려줘.
```

순차 학습을 선택한 경우 Codex가 각 모듈마다 설명한 뒤 멈춥니다. 직접 해본 다음 이렇게 답합니다.

```text
완료
```

또는

```text
다음
```

그러면 Codex가 대화를 끝내지 않고 추천 다음 단계 1개와 대안 2개를 제안합니다. 추천 경로로 이어가려면 다시 `다음`이라고 답하면 됩니다.

목표 결과물은 아래 중 하나입니다.

- 채팅 안에 정리된 `Codex Working Notes`
- 파일로 저장된 `CODEX_WORKING_NOTES.md`

## 5. 반복 업무를 Skill로 만들거나 개선하기

반복 업무를 Codex Skill로 바꾸는 과정은 `$codex-skill-builder`가 담당합니다. 처음 만들 때도 쓰고, 이미 만든 스킬을 고칠 때도 다시 쓸 수 있습니다.

호출합니다.

```text
$codex-skill-builder
```

처음에는 아래처럼 답해도 좋습니다.

```text
내가 매일 반복하는 업무를 하나 골라서 첫 스킬로 만들고 싶어.
```

이미 스킬이 있다면 이렇게 요청할 수 있습니다.

```text
이 Skill이 언제 호출되어야 하는지 description을 더 잘 다듬어줘.
```

만드는 목표 파일은 다음과 같습니다.

```text
.agents/skills/<workflow-name>/SKILL.md
```

스킬 주제 예시는 다음과 같습니다.

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

1. Codex App에서 `/plugins`를 열고 **Codex Onboarding Pack**이 설치되어 있는지 확인합니다.
2. 설치되어 있다면 새 thread를 시작합니다.
3. `@codex-onboarding-pack start onboarding`으로 먼저 호출해봅니다.
4. 그래도 안 보이면 Codex를 재시작합니다.

### `$codex-start`가 안 먹어요

먼저 plugin 이름으로 호출합니다.

```text
@codex-onboarding-pack start onboarding
```

repo-local fallback으로 쓰는 중이라면 아래처럼 자연어로 요청합니다.

```text
이 repo의 .agents/skills/codex-start/SKILL.md를 사용해서 온보딩을 시작해줘.
```

### 이 스킬을 모든 프로젝트에서 쓰고 싶어요

저장소 root에서 실행합니다.

```bash
./scripts/install-to-user-skills.sh
```

그러면 세 스킬이 `~/.agents/skills` 아래로 복사됩니다.

## 9. 추천 첫 실습 순서

처음이라면 이 순서로 진행하세요.

1. Codex App 실행
2. GitHub URL을 주고 plugin 추가/설치 요청
3. 필요하면 `codex plugin marketplace add swhan0329/codex-onboarding-pack` 실행
4. 필요하면 `codex plugin add codex-onboarding-pack@codex-onboarding-pack` 실행
5. `@codex-onboarding-pack start onboarding`
6. 모르는 용어나 기본 개념은 `$codex-core-coach`로 질문하기
7. daily 업무 후보 하나 고르기
8. 재사용하고 싶은 흐름은 `$codex-skill-builder`로 Skill 초안 만들기
9. 실제 업무 하나에 테스트해보기
10. 필요한 경우 MCP 또는 Plugin으로 확장하기

## 10. 다음 목표

이 온보딩을 끝낸 뒤에는 아래 중 하나를 해보면 좋습니다.

- 내 업무용 Skill 하나를 완성하기
- 팀 repo에 `AGENTS.md` 작성하기
- Gmail, Google Drive, Slack, GitHub, Figma 같은 plugin 연결 실험하기
- MCP가 필요한 업무와 필요 없는 업무를 구분해보기
- 반복 업무를 주간 자동화 후보로 정리하기
