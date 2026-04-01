---
title: Agentura Eval
date: 2026-04-01 21:55:23 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a GitHub Action designed to automate testing of AI agents by comparing their behavior against predefined baselines. It ensures that changes to the agent—such as updates to prompts, tools, or model providers—do not introduce regressions or degrade performance. By running tests on every pull request, it identifies issues like accuracy drops, behavioral inconsistencies, or cost inefficiencies before merging, providing actionable feedback directly in your workflow.

## What's Changed

## Behavioral Contracts

The biggest addition in this release. You can now define what your agent is allowed to do and gate every PR on it.

Add a `contracts` block to `agentura.yaml`:
```yaml
contracts:
  - name: clinical_action_boundary
    applies_to: [triage_suite]
    failure_mode: hard_fail
    assertions:
      - type: allowed_values
        field: output.action
        values: [observe, refer, escalate, order_test]
        message: "Agent recommended an action outside approved scope"
      - type: forbidden_tools
        tools: [prescribe_medication, modify_ehr_record]
      - type: required_fields
        fields: [output.action, output.rationale, output.confidence]

  - name: confidence_floor
    applies_to: [triage_suite]
    failure_mode: escalation_required
    assertions:
      - type: min_confidence
        field: output.confidence
        threshold: 0.75
        message: "Confidence below threshold — human review required"
```

### Failure modes

| Mode | Behavior |
|---|---|
| `hard_fail` | Blocks merge, exits 1 |
| `soft_fail` | Warning annotation, does not block |
| `escalation_required` | Flags for human review, does not block |
| `retry` | Re-runs up to 3 times before hard failing |

### Assertion types (v1)

All four are fully deterministic — no LLM calls, no latency cost:

- `allowed_values` — output field must be in an allowed set
- `forbidden_tools` — tool name must not appear in tool_calls
- `required_fields` — output must contain these keys
- `min_confidence` — numeric field must meet a minimum threshold

### Contract results in audit manifest

Every contract evaluation is appended to `.agentura/manifest.json` with contract name, version, assertion results, observed values, and failure mode. The manifest gives compliance teams a versioned, immutable record of what behavioral boundaries were in force at every eval run.

### New demo

`examples/triage-agent/` — a clinical triage agent demo with
two contracts. Run it:
```bash
cd examples/triage-agent
npx agentura run --local
```

You'll see one `hard_fail` (agent recommended `prescribe`) and two `escalation_required` (confidence below threshold).

---

## Provider Expansion

The `consensus` command now supports all five providers:
```bash
# Groq
npx agentura consensus \
  --input "your prompt" \
  --models "groq:llama-3.3-70b-versatile,groq:llama-3.1-8b-instant"

# Ollama (local, no API key)
npx agentura consensus \
  --input "your prompt" \
  --models "ollama:llama3.2,ollama:mistral"

# Gemini
npx agentura consensus \
  --input "your prompt" \
  --models "gemini:gemini-2.0-flash,groq:llama-3.3-70b-versatile"

# Mixed providers for true heterogeneous consensus
npx agentura consensus \
  --input "your prompt" \
  --models "anthropic:claude-sonnet-4-6,openai:gpt-4o,gemini:gemini-2.0-flash"
```

Provider support is now consistent across all three eval surfaces:

| Provider | llm_judge | semantic_similarity | consensus |
|---|---|---|---|
| Anthropic | ✅ | ✅ | ✅ |
| OpenAI | ✅ | ✅ | ✅ |
| Gemini | ✅ | ✅ | ✅ |
| Groq | ✅ | ✅ | ✅ |
| Ollama | ✅ | ✅ | ✅ |

## Better CLI errors

- `agentura consensus` with no flags now prompts interactively
- `agentura trace` with no flags now prompts for agent path
- Missing API keys print an actionable export command instead
  of a raw error
