---
title: IA-QA Eval
date: 2026-06-20 15:03:30 +00:00
tags:
  - ia-qa-com
  - GitHub Actions
draft: false
repo: https://github.com/ia-qa-com/eval-action
marketplace: https://github.com/marketplace/actions/ia-qa-eval
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ia-qa-com/eval-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ia-qa-eval) to find the latest changes.

## What's Changed

Gate your CI/CD pipeline on LLM quality. Run `.ia-eval.yaml` evaluation contracts against real models and fail the build when your prompts, RAG pipeline, or AI feature regress.

## What it does
- Runs your eval contract against OpenAI, Anthropic, Google or Groq (**BYOK** — your keys, your call)
- Returns a **PASS / FAIL / PARTIAL** verdict + score, written to the GitHub job summary
- **Exits non-zero on failure** so you can block merges on quality regressions
- Deterministic scorers (contains, regex, JSON shape, cosine similarity) — no flaky LLM-as-judge required to gate

## Quickstart
```yaml
- uses: ia-qa-com/eval-action@v1
  with:
    contract: evals/smoke.ia-eval.yaml
    api_key_groq: ${{ secrets.GROQ_API_KEY }}   # Groq has a free tier
```

## Example contract (`evals/smoke.ia-eval.yaml`)
```yaml
# yaml-language-server: $schema=https://www.ia-qa.com/api/eval/json-schema
metadata:
  name: Smoke Test
  version: "1.0"
  model: llama-3.3-70b-versatile
  provider: groq
expectations:
  min_score: 70
scenarios:
  - id: capital-france
    input: What is the capital of France? Reply with only the city name.
    expectations:
      contains: ["Paris"]
```

## Inputs
| Input | Required | Description |
|-------|----------|-------------|
| `contract` | ✅ | Path to your `.ia-eval.yaml` file |
| `api_key_openai` / `api_key_anthropic` / `api_key_groq` / `api_key_google` | | Provider keys (BYOK) |
| `fail_on_fail` | | Fail the step on FAIL/PARTIAL (default `true`) |
| `min_score` | | Override the contract's min score |

## Outputs
`verdict` · `score` · `passed` · `failed` · `total`

## The format
`.ia-eval.yaml` is an open, provider-agnostic spec → **[ia-qa-com/eval-spec](https://github.com/ia-qa-com/eval-spec)**.
Add the schema line for live autocomplete in your editor:
`# yaml-language-server: $schema=https://www.ia-qa.com/api/eval/json-schema`

## Privacy
Your API keys are sent to `www.ia-qa.com` to run the model calls and are never stored. Self-host the backend and override `api_url` for full control.

MIT licensed.

