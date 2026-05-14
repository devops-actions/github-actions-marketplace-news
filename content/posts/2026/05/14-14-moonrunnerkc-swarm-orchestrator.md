---
title: Falsifying Swarm Orchestrator
date: 2026-05-14 14:37:13 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v8.0.3
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v8.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

The Swarm Orchestrator GitHub Action facilitates deterministic verification and falsification of code changes by validating externally-supplied patches or locally-generated ones against hand-authored contracts. It automates quality assurance workflows by enforcing that no code is committed unless it passes obligation verifiers, quality gates, and falsification tests, ensuring robust and auditable changes. Key features include a provider-agnostic system, append-only evidence ledgers, and support for both offline deterministic validation and optional model-backed patch generation.

## What's Changed

The orchestrator no longer requires Anthropic by default. It now has three providers behind the same interface:

- **deterministic** — no model, no network. You supply the contract and patches yourself.
- **local** — any Ollama or OpenAI-compatible endpoint. You pick the model.
- **anthropic** — the previous behavior, preserved as opt-in.

Wired through CLI flags, env vars, and the config file. Provider switching works on the synthetic benchmark harness and on the real SWE-bench harness. Grammar-constrained decoding eliminates a class of malformed-output bugs. All three providers pass the same interface contract test, so they are interchangeable.

Tests went from 2290 to 2458, all passing.

## Docs

- README leads with the deterministic provider.
- New `docs/providers.md` and `docs/migration.md`.
- Updated `docs/configuration.md` and `ARCHITECTURE.md`.
- `CHANGELOG.md` has the full entry list under `[8.0.3]`.
- Benchmark READMEs document the new provider flags and the comparison mode.
- Repo-wide grep confirms no doc still implies Anthropic is required.

## Breaking change

The default extractor and session are now `deterministic`. Users who relied on the previous default must opt in:

```bash
--extractor anthropic --session anthropic
# or
EXTRACTOR_PROVIDER=anthropic SESSION_PROVIDER=anthropic
# or set provider.extractor / provider.session in .swarm/config.yaml
```

See [docs/migration.md](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v8.0.3/docs/migration.md) for the full migration guide.

## Highlights

- Three interchangeable providers behind one `Extractor` / `Session` interface.
- CLI surface: `--extractor`, `--session`, and ten `--local-*` flags on `compile`, `run`, `resume`.
- Precedence chain: flag > env var > `.swarm/config.yaml` `provider:` block > built-in default.
- Grammar-constrained decoding (`json-schema` on openai-compatible / ollama / vllm; `gbnf` on llama-cpp).
- Per-consumer grammar coercion warning: `--local-grammar gbnf` no longer drops silently when the extractor cannot honor it.
- Provider-comparison harness at `benchmarks/provider-bench/` plus `--compare-providers` on `run_swebench.py`.
- Parameterized Session contract test ensures new providers are drop-in compatible.

See [CHANGELOG.md](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v8.0.3/CHANGELOG.md) for the full entry list.
