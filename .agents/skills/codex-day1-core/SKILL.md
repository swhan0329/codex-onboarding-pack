---
name: codex-day1-core
description: Teach Codex core concepts step by step. Use for Day 1 onboarding, Codex feature maps, daily workflow orientation, Skills/Plugins/MCP/Subagents/Hooks overview, and first practical Codex exercises.
---

# Codex Day 1 Core

Teach Codex by helping the learner create a practical feature map and one daily-workflow candidate.

## Language Policy

Use the user's dominant language. If Korean, explain official English terms with Korean meanings. If English, use English and keep examples concrete. If unclear, ask the learner to choose Korean or English before continuing.

## Stop Protocol

Each block has two phases.

Phase A:

1. Read the relevant reference block.
2. Explain the concept briefly.
3. Give one direct action.
4. End with:
   - Korean: `--- 위 내용을 직접 실행해보세요. 끝나면 "완료" 또는 "다음"이라고 입력해주세요.`
   - English: `--- Try this now. When you finish, reply "done" or "next".`
5. Stop. Do not continue to the next block.

Phase B:

1. When the user replies `done`, `next`, `완료`, or `다음`, ask one reflection question or give one short check.
2. Offer to continue to the next block.

## Blocks

| Block | File | Outcome |
| --- | --- | --- |
| 0 | `references/block0-orientation.md` | Understand the camp promise and choose an artifact. |
| 1 | `references/block1-surfaces.md` | Know Codex app, CLI, IDE, web/cloud, browser, and computer use. |
| 2 | `references/block2-extension-map.md` | Understand Skills, Plugins, MCP, Subagents, Hooks, and AGENTS.md. |
| 3 | `references/block3-safe-workflow.md` | Learn how to give Codex a good task and verify results. |
| 4 | `references/block4-daily-work.md` | Pick one daily workflow to improve with Codex. |
| 5 | `references/block5-wrap.md` | Create a concise onboarding map artifact. |

Start at Block 0 unless the user asks for a specific block.

## Artifact

Help the learner create either:

- `CODEX_ONBOARDING_MAP.md` in the current project, if they want a file and it is safe to write, or
- a paste-ready Markdown artifact in the chat, if they prefer not to write files.

Never write files unless the user has chosen the file-writing path or the task context clearly asks for it.
