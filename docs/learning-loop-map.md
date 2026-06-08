# Learning Loop Map

## Learning Promise

Learners should be able to return to this pack whenever they need help using Codex in real work. The goal is a practical mental model, plain-language explanations, and at least one reusable workflow artifact.

## Skills

| Skill | Purpose | Output |
| --- | --- | --- |
| `codex-start` | Route the learner to the right current need and keep language consistent. | Selected next step and skill invocation. |
| `codex-core-coach` | Explain Codex basics, developer terms, surfaces, and safe workflows through small actions. | `CODEX_WORKING_NOTES.md` or a paste-ready equivalent. |
| `codex-skill-builder` | Teach skill authoring and improvement by turning real workflows into reusable skills. | `.agents/skills/<workflow-name>/SKILL.md` draft or improvement plan. |

## Suggested Expansion

- `codex-plugin-mcp-coach` for plugin packaging and MCP connections.
- `codex-subagents-review-coach` for parallel review, validation, and review loops.
- `codex-team-workflow-coach` for team-level operating notes and recurring workflows.

## Design Rules

- Teach by doing, not by listing product features.
- Keep every block to one small action.
- End each Phase A with a direct practice instruction, then stop.
- Ask the learner to reply "done", "next", "완료", or "다음" before continuing.
- For Korean learners, use the pattern: English term -> Korean meaning -> why it matters -> easy example.
- For English learners, keep official English terms and give concrete examples.
- Treat unfamiliar terms as teaching opportunities: define briefly, show a practical example, then return to the user's task.
