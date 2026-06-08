# Codex Onboarding Pack

[한국어 README](README.ko.md)
| [한국어 Step-by-Step Guide](GETTING_STARTED.ko.md)

Guided Codex onboarding skills for people who want to keep learning Codex by producing real work artifacts.

Created by **Codex Ambassador [한서우 / Seowoo Han](https://swhan0329.github.io/)**.

Links: [Portfolio](https://swhan0329.github.io/) · [LinkedIn](https://www.linkedin.com/in/swhan0329/) · [GitHub](https://github.com/swhan0329)

This pack starts with three skills:

- `$codex-start`: the bilingual always-on entry point.
- `$codex-core-coach`: plain-language Codex basics, developer terms, daily workflow coaching, and recommended next steps.
- `$codex-skill-builder`: create, test, improve, and reuse Codex skills.

The learning flow supports Korean and English. Codex should answer in the user's dominant language, while keeping official product terms such as Skill, Plugin, MCP, Subagent, Hook, and AGENTS.md visible.

## Start with Codex App (recommended)

1. Open the Codex App and sign in.
2. Paste this into a new thread:

```text
Add and install this Codex plugin from GitHub:
https://github.com/swhan0329/codex-onboarding-pack
```

3. If Codex asks for terminal commands, use:

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

4. Start a new thread and ask:

```text
@codex-onboarding-pack start onboarding
```

You can also invoke the start skill directly after install:

```text
$codex-start
```

## Install

### Plugin marketplace use

Use this when you want the onboarding skills available without opening this repository as your active project.

Add the GitHub repo as a marketplace source:

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

Then open Codex, start a new thread, and ask:

```text
@codex-onboarding-pack start onboarding
```

### Repo-local fallback

Use this only when you want to inspect, edit, or test the skill files locally.

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
cd codex-onboarding-pack
codex
```

Then ask:

```text
$codex-start
```

### User-wide use

To make the skills available from any project on this machine:

```bash
./scripts/install-to-user-skills.sh
```

Restart Codex if the skills do not appear immediately.

## First Run

After installing the plugin, start with:

```text
@codex-onboarding-pack start onboarding
```

Or invoke the start skill directly:

```text
$codex-start
```

Then choose what you need right now:

- Start here: open Codex App and learn the basic flow.
- Explain simply: ask for plain-language explanations of Codex or developer terms.
- Daily workflow: turn a real recurring task into a Codex workflow.
- Skill builder: create or improve a reusable skill.
- Extend Codex: decide whether MCP, Plugins, Subagents, Hooks, or AGENTS.md are needed.

After each completed step, Codex should recommend one next step and offer two alternatives. Reply `next` to continue on the recommended path.

## Source Basis

The learning flow is based on the public Codex documentation for skills, plugins, MCP, subagents, hooks, app features, and workflows. The skills include official links in their reference files so Codex can refresh facts when teaching.
