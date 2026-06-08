# Codex Onboarding Pack

[한국어 README](README.ko.md)
| [한국어 Step-by-Step Guide](GETTING_STARTED.ko.md)

Guided Codex onboarding skills for people who want to learn Codex by producing real work artifacts.

This pack starts with three skills:

- `$codex-camp-start`: the bilingual always-on entry point.
- `$codex-core-coach`: plain-language Codex basics, developer terms, and daily workflow coaching.
- `$codex-skill-builder`: create, test, improve, and reuse Codex skills.

The learning flow supports Korean and English. Codex should answer in the user's dominant language, while keeping official product terms such as Skill, Plugin, MCP, Subagent, Hook, and AGENTS.md visible.

## Start with Codex App (recommended)

1. Clone this repository or download it as a local folder.
2. Open the Codex App and sign in.
3. Open the `codex-onboarding-pack` folder as a project/workspace.
4. Start a new thread inside that project.
5. Ask:

```text
$codex-camp-start
```

Codex should detect the repo-local skills under `.agents/skills` and begin the onboarding flow.

## Install

### Repo-local use in Codex App

Clone this repository, then open the folder in Codex App:

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
```

In Codex App, open the cloned `codex-onboarding-pack` folder, start a new thread, and ask:

```text
$codex-camp-start
```

### Repo-local use in Codex CLI

If you prefer the terminal, run Codex from the repo root:

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

Then choose what you need right now:

- Start here: open Codex App and learn the basic flow.
- Explain simply: ask for plain-language explanations of Codex or developer terms.
- Daily workflow: turn a real recurring task into a Codex workflow.
- Skill builder: create or improve a reusable skill.
- Facilitator mode: run this as a class or workshop.

## Source Basis

The learning flow is based on the public Codex documentation for skills, plugins, MCP, subagents, hooks, app features, and workflows. The skills include official links in their reference files so Codex can refresh facts when teaching.
