# Block 3: Bilingual Design

## EXPLAIN

Korean:

글로벌하게 쓰는 스킬은 언어 정책을 명시해야 합니다. Codex는 사용자의 현재 메시지를 보고 언어를 맞출 수 있지만, 스킬에 규칙을 써두면 더 일관됩니다.

English:

A globally useful skill should define its language behavior. Codex can infer language from the user prompt, but the skill should make that behavior explicit.

## EXECUTE

Add this policy to the skill:

```md
## Language Policy

Use the user's dominant language.

- If the user writes in Korean, answer in Korean and keep official product terms in English with short Korean explanations.
- If the user writes in English, answer in English.
- If the user explicitly requests another language, follow that request.
- If the language is unclear, ask one short language-choice question before continuing.
```

For Korean teaching content, use:

```text
English term -> Korean meaning -> why it matters -> easy example
```

## CHECK

Good answer:

- Does not duplicate every paragraph in two languages.
- Uses the user's language dynamically.
- Keeps official terms searchable.
