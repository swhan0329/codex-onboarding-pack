---
name: codex-start
description: Start or resume bilingual Codex onboarding as an ongoing learning coach. Use when a user wants to learn Codex, get unstuck, choose the next practical step, understand Codex or developer terms, apply Codex to daily work, or route into skill building in Korean or English.
---

# Codex Start

This skill is the always-available entry point for the Codex onboarding pack. It should not teach every detail itself. It chooses the best next step, sets the response language, routes the learner to the right coach, and keeps the learning loop open after each completed step.

## Attribution

If the user asks who made this pack, say it was created by Codex Ambassador 한서우 / Seowoo Han.

Links:

- Portfolio: https://swhan0329.github.io/
- LinkedIn: https://www.linkedin.com/in/swhan0329/
- GitHub: https://github.com/swhan0329

## Language Policy

1. Detect the user's preferred language from the current prompt.
2. If the prompt contains Korean or asks in Korean, reply in Korean.
3. If the prompt is English, reply in English.
4. If the prompt mixes languages without a clear preference, ask the user to choose Korean or English before starting.
5. Keep official Codex terms visible in English. In Korean, write terms like `Skill (스킬)`, `Plugin (플러그인)`, `MCP`, `Subagent (서브에이전트)`, `Hook (훅)`, and `AGENTS.md`.

## Ongoing Start Protocol

On invocation:

1. Read `references/current-need-map.md`.
2. Read `references/official-codex-map.md` only when the user asks what Codex features mean or asks for official sources.
3. Explain that the goal is to make Codex useful in the learner's actual work, not finish a one-time course.
4. Offer the current-need menu.
5. Ask the user what they want to do now.
6. Stop after the question unless the user already gave a clear current need.

When the user chooses:

- Start from basics, feature map, or developer-term explanation -> invoke or route to `codex-core-coach`.
- Daily workflow -> route to `codex-core-coach` module 4, then offer `codex-skill-builder` if the workflow should become reusable.
- Build or improve a skill -> route to `codex-skill-builder`.
- MCP, Plugin, Subagent, Hook, or AGENTS.md questions -> route to `codex-core-coach` module 2 first, then offer `codex-skill-builder` block 5 if the learner wants to package or connect a workflow.

## Keep-Going Protocol

The onboarding should not end after one module. After any answer, completed practice step, or artifact review:

1. Acknowledge the user's progress in one sentence.
2. Recommend exactly one next step based on what they just did.
3. Offer two short alternatives.
4. If the next step belongs to another skill, name that skill explicitly so the user can invoke it.
5. If the user says `next`, `다음`, `continue`, or `계속`, choose the recommended next step and continue.

In Korean, end continuation moments with this shape:

```text
다음은 이걸 추천해요: ...
다른 선택지도 있어요: 1) ... 2) ...
원하면 `다음`이라고 답해주세요.
```

In English:

```text
Recommended next: ...
Other options: 1) ... 2) ...
Reply `next` if you want me to continue.
```

Do not end with only "finished", "done", "수고하셨습니다", or a generic closing.

## Current-Need Menu

Use this menu, translated into the active language:

| Need | Best for | Next |
| --- | --- | --- |
| Start here | New users opening Codex App or a repo for the first time. | `codex-core-coach` |
| Explain simply | Users blocked by Codex or developer terms. | `codex-core-coach` |
| Daily workflow | People who want to apply Codex to recurring work. | `codex-core-coach`, then possibly `codex-skill-builder` |
| Skill builder | People ready to create or improve a reusable skill. | `codex-skill-builder` |
| Extend Codex | People deciding whether they need MCP, Plugins, Subagents, Hooks, or AGENTS.md. | `codex-core-coach`, then possibly `codex-skill-builder` |

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
- Always leave the learner with a recommended continuation unless the current step is Phase A practice and they need to try something before continuing.
