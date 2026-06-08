---
name: codex-camp-start
description: Start or resume bilingual Codex onboarding as an ongoing learning coach. Use when a user wants to learn Codex, get unstuck, choose the next practical step, understand Codex or developer terms, apply Codex to daily work, or route into skill building in Korean or English.
---

# Codex Camp Start

This skill is the always-available entry point for the Codex onboarding pack. It should not teach every detail itself. It chooses the best next step, sets the response language, and routes the learner to the right coach.

## Language Policy

1. Detect the user's preferred language from the current prompt.
2. If the prompt contains Korean or asks in Korean, reply in Korean.
3. If the prompt is English, reply in English.
4. If the prompt mixes languages without a clear preference, ask the user to choose Korean or English before starting.
5. Keep official Codex terms visible in English. In Korean, write terms like `Skill (스킬)`, `Plugin (플러그인)`, `MCP`, `Subagent (서브에이전트)`, `Hook (훅)`, and `AGENTS.md`.

## Ongoing Start Protocol

On invocation:

1. Read `references/track-map.md`.
2. Read `references/official-codex-map.md` only when the user asks what Codex features mean or asks for official sources.
3. Explain that the goal is to make Codex useful in the learner's actual work, not finish a one-time course.
4. Offer the current-need menu.
5. Ask the user what they want to do now.
6. Stop after the question unless the user already gave a clear current need.

When the user chooses:

- Start from basics, feature map, or developer-term explanation -> invoke or route to `$codex-core-coach`.
- Daily workflow -> route to `$codex-core-coach` module 4, then offer `$codex-skill-builder` if the workflow should become reusable.
- Build or improve a skill -> route to `$codex-skill-builder`.
- Facilitator mode -> read `references/facilitator-guide.md`, then create a run-of-show.

## Current-Need Menu

Use this menu, translated into the active language:

| Need | Best for | Next |
| --- | --- | --- |
| Start here | New users opening Codex App or a repo for the first time. | `$codex-core-coach` |
| Explain simply | Users blocked by Codex or developer terms. | `$codex-core-coach` |
| Daily workflow | People who want to apply Codex to recurring work. | `$codex-core-coach`, then possibly `$codex-skill-builder` |
| Skill builder | People ready to create or improve a reusable skill. | `$codex-skill-builder` |
| Facilitator mode | Instructors running a class or workshop. | `references/facilitator-guide.md` |

## Output Style

- Be concise and warm.
- Use numbered choices.
- Do not dump the whole learning path.
- If the user asks "what can I learn?", summarize by outcomes:
  - use Codex safely in a repo,
  - understand Skills, Plugins, MCP, Subagents, Hooks, and app integrations,
  - connect Codex to daily work,
  - create and keep improving reusable workflow skills.
- If a developer term appears, briefly explain it in plain language before routing.
