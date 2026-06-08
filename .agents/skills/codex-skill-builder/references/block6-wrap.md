# Block 6: Wrap

## EXPLAIN

Korean:

좋은 결과물은 "스킬을 배웠다"가 아니라 "내 업무 하나를 Codex가 반복 실행할 수 있는 절차로 만들었다"입니다.

English:

The useful output is not "I learned skills." It is "I turned one recurring task into a workflow Codex can reuse."

## EXECUTE

Finalize or improve the learner's skill with this checklist:

```md
# Skill Review

- [ ] Name is kebab-case.
- [ ] Description says when to use it.
- [ ] Description says when not to use it or has clear boundaries.
- [ ] Inputs are explicit.
- [ ] Steps are imperative.
- [ ] Verification is included.
- [ ] Output format is clear.
- [ ] Language policy is included if the skill is for global use.
- [ ] MCP/plugin needs are intentionally included or intentionally deferred.
```

## CHECK

Good answer:

- Produces a usable `SKILL.md`.
- Has at least one realistic test prompt.
- Has one next improvement, not ten.

## CONTINUE

After the review, do not end the onboarding. Recommend one of these:

- Run the skill on one real work item and inspect the result.
- Improve the skill description based on a false positive or false negative trigger.
- Decide whether the skill should stay local, be shared as a Plugin, or connect to live data through MCP or an app connector.
