---
title: tokentoll LLM Cost Diff
date: 2026-05-29 14:48:53 +00:00
tags:
  - Jwrede
  - GitHub Actions
draft: false
repo: https://github.com/Jwrede/tokentoll
marketplace: https://github.com/marketplace/actions/tokentoll-llm-cost-diff
version: v0.8.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Jwrede/tokentoll** to version **v0.8.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tokentoll-llm-cost-diff) to find the latest changes.

## Action Summary

**tokentoll** is a GitHub Action designed to prevent cost regressions in large language model (LLM) usage by statically analyzing Python, JavaScript, and TypeScript code for LLM API calls. It evaluates pull requests against user-defined cost policies, providing a PASS/WARN/FAIL verdict and blocking merges that violate the policy. This action helps teams manage and control LLM-related costs by automating cost analysis and enforcing budget thresholds during the development process.

## What's Changed

Patch release driven by dogfooding v0.8.0 against five popular TS LLM repos: vercel/ai-chatbot, langchain-ai/langchainjs, anthropics/anthropic-sdk-typescript, openai/openai-node, mckaywrigley/chatbot-ui. Three real bugs surfaced, each with a minimal regression test pinning the fix.

## Fixes

### TypeScript wrapper expressions are now unwrapped

Code like:

```ts
client.chat.completions.create({
  model: chatSettings.model as ChatCompletionCreateParamsBase[\"model\"],
  max_tokens: 1024 as number,
});
```

previously failed to resolve because the resolver bailed on `as_expression`. Now `as`, `satisfies`, `!`, parens, and the legacy `<T>value` syntax are all transparent.

### Member chains rooted at `this` and `super`

Class-based SDKs use `this.client.x.y.create(...)` everywhere. The detector required an `identifier` base segment, so every such call slipped through. Detection counts after the fix:

| Repo | Before | After |
|---|---|---|
| anthropic-sdk-typescript | 2 | 7 |
| langchainjs | 12 | 24 |
| openai-node | 23 | 25 |

### Vercel AI SDK detector no longer matches method calls

`generateText`, `streamText`, `embed`, `embedMany` are imported from `@ai-sdk/*` and called bare. Accepting member-expression callees (`this.client.embed(req)`) produced false positives for libraries like langchain-cohere that expose methods with the same names. Removed 7 false positives from the langchainjs scan.

## Tests

141 passing (was 138). Three new fixture files plus three regression tests, each derived from the failing real-world pattern:

- `ts_wrappers.ts` covers `as`/`satisfies`/`!`/parens/`<T>`
- `this_chain.ts` covers `this.client.x.y.create`
- `cohere_embed_not_vercel.ts` covers the Vercel false-positive case

## Upgrade

```bash
pip install --upgrade tokentoll
```

```yaml
- uses: Jwrede/tokentoll@v0.8.1
```

No schema or CLI changes. Existing `.tokentoll.yml` files keep working.
