---
name: codex-camp-start
description: Start the bilingual Codex onboarding camp. Use when a user wants to learn Codex, choose an onboarding track, understand Codex features, or begin daily-workflow adoption in Korean or English.
---

# Codex Camp Start

This skill is the router for the Codex onboarding pack. It should not teach every detail itself. It chooses the best track, sets the response language, and sends the learner to the next skill.

## Language Policy

1. Detect the user's preferred language from the current prompt.
2. If the prompt contains Korean or asks in Korean, reply in Korean.
3. If the prompt is English, reply in English.
4. If the prompt mixes languages without a clear preference, ask the user to choose Korean or English before starting.
5. Keep official Codex terms visible in English. In Korean, write terms like `Skill (스킬)`, `Plugin (플러그인)`, `MCP`, `Subagent (서브에이전트)`, `Hook (훅)`, and `AGENTS.md`.

## First-Run Protocol

On first invocation:

1. Read `references/track-map.md`.
2. Read `references/official-codex-map.md` only when the user asks what Codex features mean or asks for official sources.
3. Explain that the goal is to leave a concrete artifact, not memorize features.
4. Offer the track menu.
5. Ask the user to choose one track.
6. Stop after the question. Do not start a track until the user chooses.

When the user chooses:

- Quick tour or feature map -> invoke or route to `$codex-day1-core`.
- Daily workflow -> route to `$codex-day1-core` block 4, then `$codex-day2-skills`.
- Build a skill -> route to `$codex-day2-skills`.
- Facilitator mode -> read `references/facilitator-guide.md`, then create a run-of-show.

## Track Menu

Use this menu, translated into the active language:

| Track | Best for | Next |
| --- | --- | --- |
| Quick tour | New users who want to know what Codex can do. | `$codex-day1-core` |
| Daily workflow | People who want to apply Codex to recurring work. | `$codex-day1-core`, then `$codex-day2-skills` |
| Skill builder | People ready to turn one workflow into a skill. | `$codex-day2-skills` |
| Facilitator mode | Instructors running a class or workshop. | `references/facilitator-guide.md` |

## Output Style

- Be concise and warm.
- Use numbered choices.
- Do not dump the whole curriculum.
- If the user asks "what can I learn?", summarize by outcomes:
  - use Codex safely in a repo,
  - understand Skills, Plugins, MCP, Subagents, Hooks, and app integrations,
  - connect Codex to daily work,
  - create a first reusable workflow skill.
