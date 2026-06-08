# Codex Onboarding Pack

[English README](README.md)
| [Step-by-Step 시작 가이드](GETTING_STARTED.ko.md)

Codex를 처음 배우는 사람이 기능을 외우는 대신, 실제 작업물을 남기면서 익힐 수 있도록 만든 온보딩 스킬 팩입니다.

만든 사람: **Codex Ambassador [한서우 / Seowoo Han](https://swhan0329.github.io/)**

링크: [포트폴리오](https://swhan0329.github.io/) · [LinkedIn](https://www.linkedin.com/in/swhan0329/) · [GitHub](https://github.com/swhan0329)

이 팩은 세 개의 스킬로 시작합니다.

- `$codex-start`: 언제든 다시 부를 수 있는 온보딩 시작점입니다.
- `$codex-core-coach`: Codex 기본기, 개발 용어, daily workflow 적용을 쉽게 설명합니다.
- `$codex-skill-builder`: 업무 흐름을 Codex Skill로 만들고, 테스트하고, 계속 개선합니다.

이 학습 흐름은 한국어와 영어를 모두 지원합니다. 사용자가 한국어로 말하면 한국어로, 영어로 말하면 영어로 진행하며, `Skill`, `Plugin`, `MCP`, `Subagent`, `Hook`, `AGENTS.md` 같은 공식 제품 용어는 영어 표기를 함께 유지합니다.

## Codex App으로 시작하기 (추천)

1. Codex App을 열고 로그인합니다.
2. 새 thread에 아래처럼 붙여넣습니다.

```text
이 GitHub repo를 Codex plugin으로 추가하고 설치해줘:
https://github.com/swhan0329/codex-onboarding-pack
```

3. Codex가 marketplace 추가 명령을 요청하면 아래 명령을 사용합니다.

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
```

4. Codex에서 `/plugins`를 열고 **Codex Onboarding Pack**을 설치한 뒤 새 thread에서 시작합니다.

```text
@codex-onboarding-pack start onboarding
```

설치 후 시작 스킬을 직접 호출해도 됩니다.

```text
$codex-start
```

## 설치

### Plugin marketplace 사용

이 저장소를 현재 프로젝트로 열지 않고도 온보딩 스킬을 쓰고 싶을 때 사용합니다.

GitHub repo를 marketplace source로 추가합니다.

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
```

그다음 Codex에서 `/plugins`를 열고 **Codex Onboarding Pack**을 설치한 뒤 새 스레드에서 시작합니다.

```text
@codex-onboarding-pack start onboarding
```

### Repo-local fallback

스킬 파일을 직접 확인하거나 수정하거나 테스트하고 싶을 때만 사용합니다.

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
cd codex-onboarding-pack
codex
```

그다음 이렇게 요청합니다.

```text
$codex-start
```

### 사용자 전체 설치

어떤 프로젝트에서든 이 스킬들을 쓰고 싶다면 아래 스크립트를 실행합니다.

```bash
./scripts/install-to-user-skills.sh
```

스킬이 바로 보이지 않으면 Codex를 재시작합니다.

## 첫 실행

Plugin 설치 후에는 이렇게 시작합니다.

```text
@codex-onboarding-pack start onboarding
```

또는 시작 스킬을 직접 호출합니다.

```text
$codex-start
```

그다음 지금 필요한 흐름을 고릅니다.

- Start here: Codex App에서 시작하고 기본 흐름을 익힙니다.
- Explain simply: Codex 용어나 개발 용어를 쉽게 설명받습니다.
- Daily workflow: 실제 반복 업무 하나를 Codex workflow로 바꿉니다.
- Skill builder: 재사용 가능한 Codex Skill을 만들거나 개선합니다.
- Facilitator mode: 수업이나 워크샵 진행안으로 사용합니다.

## 무엇을 배우나

이 온보딩은 다음을 단계적으로 다룹니다.

- Codex app, CLI, IDE extension, web/cloud의 차이
- `Skill`을 만드는 방법
- `Plugin`이 왜 배포 단위인지
- `MCP`로 외부 도구와 문맥을 연결하는 방법
- `Subagent`로 탐색과 리뷰를 나누는 방법
- `Hook`으로 검증이나 기록을 자동화하는 방법
- `AGENTS.md`로 프로젝트 규칙을 남기는 방법
- daily 업무를 Codex로 반복 가능한 workflow로 바꾸는 방법

## 결과물

학습자는 다음 중 하나 이상의 작업물을 남기게 됩니다.

- `CODEX_WORKING_NOTES.md`
- daily workflow 후보 목록
- `.agents/skills/<workflow-name>/SKILL.md`
- 본인 업무에 맞춘 Skill 초안

## 기준 문서

이 학습 흐름은 Codex 공식 문서의 Skills, Plugins, MCP, Subagents, Hooks, app features, workflows 내용을 기준으로 구성했습니다. 각 스킬의 reference 파일에는 Codex가 필요할 때 최신 공식 문서를 다시 확인할 수 있도록 링크를 포함했습니다.
