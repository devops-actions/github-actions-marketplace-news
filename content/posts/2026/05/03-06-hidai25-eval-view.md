---
title: EvalView - AI Agent Testing
date: 2026-05-03 06:40:14 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.7.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.7.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to detect and manage behavioral regressions in AI agents, such as unexpected changes in tool usage, decision-making, or output quality, that standard tests and health checks might miss. It automates the process of tracking output drift, classifying changes, and providing actionable insights to help developers address issues and maintain consistent agent behavior. With features like confidence-based drift detection, change classification, and auto-healing for certain failures, EvalView enables teams of any size to implement robust regression testing and ensure reliable AI performance.

## What's Changed

## What's new in 0.7.1

### Added
- **TOML test cases** — `TestCaseLoader` now understands `.toml` alongside `.yaml`/`.yml` (#209). Same schema, different on-disk encoding for teams that already author config in TOML. Uses stdlib `tomllib` on Python 3.11+ and falls back to `tomli` on 3.9/3.10. Example in `examples/test_case_toml.toml`.
- **CSV log import** — `evalview generate --from-log` now accepts CSV alongside JSONL, OpenAI, and EvalView capture formats (#216). Header row identifies columns, with aliases matching the JSONL parser. Tool cells accept JSON list, comma-, semicolon-, or pipe-separated forms. Example fixture and README under `examples/log-import/`.

### Changed
- Chat-mode command validator now derives its allowlist from the Click registry instead of a hand-maintained set.
- `evalview inspect` is now a hidden alias that forwards to `evalview visualize` (which is the strict superset).
- `evalview view` is no longer hidden — surfaced under the "Inspect & Visualize" section of `--help`.
- Daily dogfood workflow now updates a single rolling issue instead of filing a new one each failing day.
- `parse_csv`'s `warn` callback type tightened from `Any` to `Optional[Callable[[str], None]]` (#221).

### Removed
- `evalview quickstart` deprecated shim (use `evalview demo` or `evalview init`).
- `requirements.txt` (use `pyproject.toml` + `uv.lock`).

### Internal
- Four 1k+ files split into focused submodules following the PR #202 mixin pattern (#215).
- Root-directory polish pass (#218): tighter `.gitignore`, `install.sh` → `scripts/install.sh`, 39 tracked root entries.

### Docs
- `AGENT_INSTRUCTIONS.md` → `AGENTS.md`, and `guides/` moved under `docs/` (#219).
- `docs/README.md` index expanded; per-directory READMEs in `demo/`, `demo-agent/`, `demo-tests/`.

### Fixed
- Hermetic test suite — `git clone && make test` goes green on first run with no env setup beyond `uv`.
- Lint-clean main — drops unused imports left after the quickstart removal.

---

**PyPI**: https://pypi.org/project/evalview/0.7.1/
**npm**: https://www.npmjs.com/package/evalview/v/0.7.1
**Full changelog**: https://github.com/hidai25/eval-view/blob/main/CHANGELOG.md

🤖 Co-authored with Claude Code
