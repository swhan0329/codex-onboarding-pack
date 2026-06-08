# Block 5: MCP and Plugin Handoff

Official references:

- https://developers.openai.com/codex/mcp
- https://developers.openai.com/codex/plugins
- https://developers.openai.com/codex/plugins/build

## EXPLAIN

Korean:

스킬만으로 충분한 경우와 MCP/Plugin이 필요한 경우를 나눠야 합니다.

- Skill: 진행법을 가르치면 충분할 때
- MCP 또는 app connector: 외부 도구나 최신 문서, 사내 서비스, Gmail/Drive/Slack/Figma 같은 live data가 필요할 때
- Plugin: 여러 스킬, 앱 연결, MCP 서버, hooks를 설치 가능한 묶음으로 배포하고 싶을 때

English:

Separate the workflow from the connection layer.

- Skill: enough when Codex only needs instructions and local context.
- MCP or app connector: needed for live external tools, current docs, internal services, or apps such as Gmail, Drive, Slack, and Figma.
- Plugin: useful when you want to distribute skills plus app integrations, MCP servers, or hooks as one installable bundle.

## EXECUTE

Ask the learner to decide:

```text
Does this workflow need live external data?
If yes, which source?
Can an existing plugin/app connector cover it?
If no, is an MCP server needed?
Should this remain a local skill, or become a plugin later?
```

Show this MCP example only as a pattern, not as a required install:

```bash
codex mcp add context7 -- npx -y @upstash/context7-mcp
```

Explain that Codex also supports streamable HTTP MCP servers and stores MCP configuration in `config.toml`.

## CHECK

Good answer:

- Does not add MCP just for teaching.
- Names the external source and auth expectation.
- Keeps plugin packaging as a later step unless distribution is needed now.
