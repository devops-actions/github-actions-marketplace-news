---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-04-23 14:05:17 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## Action Summary

AgentRepoCoach is a GitHub Action and CLI tool that evaluates the readiness of a codebase for autonomous AI agents by calculating a composite Codebase Agent Health (CAH) score. It automates the analysis of key aspects like navigability, error quality, decision-making support, testing practices, and module organization, offering actionable insights to improve code maintainability and AI compatibility. This tool helps teams identify and address structural and documentation gaps in their repositories while providing automated thresholds for CI/CD workflows.

## What's Changed

# v0.2.0 — Full Language Coverage + Coaching Recommendations

AgentRepoCoach now scores repos in 5 languages and tells you exactly what to fix first.

## What's new

### Full language adapters for TypeScript, Go, and Rust

All three previously-stubbed adapters are now fully implemented:

- **TypeScript** — `tsconfig.json`/`package.json` detection, throw-site scanning with multi-line context, JSDoc detection, Jest/Vitest test method extraction
- **Go** — `go.mod` detection, `errors.New`/`fmt.Errorf`/custom error mapping, Go doc comment detection, `Test*` function extraction
- **Rust** — `Cargo.toml` detection, `panic!`/`Err(Custom)` mapping, `///` doc comment detection, `#[test]` attribute detection

All adapters use regex-only analysis (no AST parser dependencies) and implement the full 9-method `LanguageAdapter` interface.

### Coaching recommendations engine

AgentRepoCoach no longer just scores your repo — it coaches you through the fixes. The new coaching engine:

- Analyzes sub-component score gaps across all five components
- Surfaces the **top-3 actionable fix tips** ranked by weighted impact
- Works in every output format: terminal summary, verbose mode, markdown PR comments, and JSON reports (new `coaching` array)

### Dogfood improvements

AgentRepoCoach now scores 100/100 on its own repo:

- `AGENTS.md` for agent-friendly codebase navigation
- `codebase-map.md` for repo structure overview
- `cli-manifest.json` for CLI discoverability
- `docs/architecture.md` documenting the system design
- 5 Architecture Decision Records (ADRs)
- Fix hints on all raise sites; docstrings on all public declarations

## Bug fixes

- Python adapter `_TEST_METHOD_PATTERN` was missing `re.MULTILINE` flag, causing zero test methods to be detected in Python repositories

## What's supported

| Language   | Status   |
|------------|----------|
| C#         | Full MVP |
| Python     | Full MVP |
| TypeScript | Full MVP |
| Go         | Full MVP |
| Rust       | Full MVP |

## Highlights

- Still zero runtime dependencies (Python 3.11+ stdlib only, including `tomllib`)
- Composite Action (no Docker, no slow cold start)
- TOML config (`.agentrepocoach.toml`) with zero-config defaults
- JSON + Markdown output formats
- `fail-threshold` input for PR gating
- Output is safe to publish as a CI artifact (no source snippets)

## Upgrade

### GitHub Action

```yaml
- uses: WouterDeBot/agentrepocoach@v0.2.0
```

### CLI

```bash
pip install --upgrade agentrepocoach
```

## Feedback

Feedback welcome via [GitHub Issues](https://github.com/WouterDeBot/agentrepocoach/issues)
and [Discussions](https://github.com/WouterDeBot/agentrepocoach/discussions).

## License

Apache 2.0

