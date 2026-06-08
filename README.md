# Codex Onboarding Pack

[한국어 README](README.ko.md)
| [한국어 Step-by-Step Guide](GETTING_STARTED.ko.md)

Guided Codex onboarding skills for people who want to learn Codex by producing real work artifacts.

This pack starts with three skills:

- `$codex-camp-start`: the bilingual router and first-run guide.
- `$codex-day1-core`: Codex feature map and daily workflow onboarding.
- `$codex-day2-skills`: build and test a first reusable Codex skill.

The curriculum supports Korean and English. Codex should answer in the user's dominant language, while keeping official product terms such as Skill, Plugin, MCP, Subagent, Hook, and AGENTS.md visible.

## Install

### Repo-local use

Clone this repository, open Codex from the repo root, and start:

```bash
codex
```

Then ask:

```text
$codex-camp-start
```

### Plugin marketplace use

The repository also includes a minimal plugin manifest and marketplace entry. After the repo is available to your GitHub account, you can add it as a Codex marketplace source:

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
```

Then open Codex, use `/plugins`, install **Codex Onboarding Pack**, start a new thread, and ask:

```text
@codex-onboarding-pack start onboarding
```

### User-wide use

To make the skills available from any project on this machine:

```bash
./scripts/install-to-user-skills.sh
```

Restart Codex if the skills do not appear immediately.

## First Run

Start with:

```text
$codex-camp-start
```

Then choose one track:

- Quick tour: learn the Codex feature map.
- Daily workflow: turn a real recurring task into a Codex workflow.
- Skill builder: make your first skill.
- Facilitator mode: run this as a class or workshop.

## Source Basis

The curriculum is based on the public Codex documentation for skills, plugins, MCP, subagents, hooks, app features, and workflows. The skills include official links in their reference files so Codex can refresh facts when teaching.
