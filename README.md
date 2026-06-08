# Codex Onboarding Pack

[한국어 README](README.ko.md)
| [한국어 Step-by-Step Guide](GETTING_STARTED.ko.md)

Guided Codex onboarding skills for people who want to keep learning Codex by producing real work artifacts.

Created by **Codex Ambassador [한서우 / Seowoo Han](https://swhan0329.github.io/)**.

Links: [Portfolio](https://swhan0329.github.io/) · [LinkedIn](https://www.linkedin.com/in/swhan0329/) · [GitHub](https://github.com/swhan0329)

This repo includes a `practice-lab-template/` folder with dummy files. Onboarding can copy it into `codex-practice-lab/` so learners can try summarizing meeting notes, editing a draft, fixing a tiny bug, and summarizing CSV data.

This pack starts with three skills:

- `codex-start`: the bilingual always-on entry point.
- `codex-core-coach`: plain-language Codex basics, developer terms, daily workflow coaching, and recommended next steps.
- `codex-skill-builder`: create, test, improve, and reuse Codex skills.

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

4. Start a new thread, type `$` in the prompt box, search for `codex-start`, and select it.
5. Choose `Start here` to create `codex-practice-lab/` and run the first copy-paste prompt.

In some Codex App versions, the same entry may appear as `Codex Start Coach`. Select that entry if you see it.

## Install

### Plugin marketplace use

Use this when you want the onboarding skills available without opening this repository as your active project.

Add the GitHub repo as a marketplace source:

```bash
codex plugin marketplace add swhan0329/codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

Verify the install:

```bash
codex plugin list --marketplace codex-onboarding-pack
```

You should see `codex-onboarding-pack@codex-onboarding-pack` with `installed, enabled` status.

Update later:

```bash
codex plugin marketplace upgrade codex-onboarding-pack
codex plugin add codex-onboarding-pack@codex-onboarding-pack
```

Then open Codex, start a new thread, type `$`, and select `codex-start`. In some versions, it may appear as `Codex Start Coach`.

### Repo-local fallback

Use this only when you want to inspect, edit, or test the skill files locally.

```bash
git clone https://github.com/swhan0329/codex-onboarding-pack.git
cd codex-onboarding-pack
codex
```

Then type `$` and select `codex-start`. You can also ask in natural language:

```text
Use the codex-start skill to start onboarding.
```

### User-wide use

To make the skills available from any project on this machine:

```bash
./scripts/install-to-user-skills.sh
```

Restart Codex if the skills do not appear immediately.

## First Run

After installing the plugin, start a new thread, type `$`, and select `codex-start`. In some versions, it may appear as `Codex Start Coach`.

Then choose what you need right now:

- Start here: create a dummy practice folder and copy/paste the first prompt.
- Explain simply: ask for plain-language explanations of Codex or developer terms.
- Daily workflow: turn a real recurring task into a Codex workflow.
- Skill builder: create or improve a reusable skill.
- Extend Codex: decide whether MCP, Plugins, Subagents, Hooks, or AGENTS.md are needed.

After each completed step, Codex should recommend one next step and offer two alternatives. Reply `next` to continue on the recommended path.

## Source Basis

The learning flow is based on the public Codex documentation for skills, plugins, MCP, subagents, hooks, app features, and workflows. The skills include official links in their reference files so Codex can refresh facts when teaching.
