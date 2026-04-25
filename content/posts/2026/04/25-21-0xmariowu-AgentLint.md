---
title: AgentLint
date: 2026-04-25 21:29:26 +00:00
tags:
  - 0xmariowu
  - GitHub Actions
draft: false
repo: https://github.com/0xmariowu/AgentLint
marketplace: https://github.com/marketplace/actions/agentlint
version: v1.1.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/0xmariowu/AgentLint** to version **v1.1.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentlint) to find the latest changes.

## Action Summary

AgentLint is a GitHub Action that evaluates and optimizes the "harness" components surrounding AI coding agents, such as configuration files, rules, and workflows, to improve their reliability and effectiveness. It automates the identification of issues across multiple dimensions, offering evidence-backed checks and actionable fixes to reduce errors, improve context clarity, and enhance overall agent performance. This tool addresses common challenges in harness engineering, ensuring AI agents deliver consistent and high-quality outputs.

## What's Changed

Production blocker fix bundle — 5 of 9 P0 items from `docs/p0-production-blocker-scan-2026-04-25.md` plus the version bump itself. Closes the gaps that broke the canonical install + setup paths after the PR1–PR5 hygiene cleanup.

### You can now…

- **Trust `agentlint setup` actually installs husky hooks** — `templates/hooks/husky/{pre-commit,pre-push,commit-msg}` now exist as real shell files. Setup fails loud (`die`) when zero hooks would be copied, instead of silently writing `core.hooksPath=.husky` with an empty `.husky/` directory. The audit found this had been broken since v0.9.0 absorbed VibeKit. (P0-3)
- **Copy-paste the INSTALL.md GitHub Action snippet** and have it work — the snippet now includes `actions/checkout@v4`, surrounding `name`/`on`/`permissions`/`jobs` boilerplate, and an inline note explaining why checkout is required. (P0-4)
- **Trust the INSTALL.md verify commands** — `agentlint check --help` (which exited 1 with "scanner produced no output") is replaced with `agentlint help`. Both `agentlint --version` and `agentlint help` now exit 0 on a fresh global install. (P0-6)
- **See the `~/.claude/` side effect up front** — INSTALL.md now opens with a "Side effects" section and README links to it inline, instead of burying `--ignore-scripts` deep in failure modes. (P0-9)
- **Run `agentlint check`, `fix`, and `setup` from `agentlint-ai@1.1.6`** — published from the bumped commit, with the `v1` moving major tag fast-forwarded by `release.yml`. (P0-1)

### Tests added (regression pinning)

- `INSTALL.md Verify section uses commands that actually exit 0`
- `public docs GitHub Action snippets include actions/checkout`
- `INSTALL.md Side effects section is present and lists ~/.claude + --ignore-scripts`
- `tests/test-husky-hooks.sh` — positive + negative path on `setup --no-install`
- `tests/e2b/scenarios/install/run.sh` setup-ts now asserts `.husky/{pre-commit,pre-push,commit-msg}` exist + executable + `core.hooksPath` is `.husky` (accepting husky-9 `.husky/_`)

### Deferred (tracked for v1.1.7+)

- **P0-2** remote `main` branch protection enforces declared required checks (GitHub UI/API config drift; decoupled from package release).
- **P0-5** portable symlink resolver in `scripts/agentlint.sh` and `src/scanner.sh` (current `readlink -f` fallback chain breaks on environments without GNU `readlink`).
- **P0-7** `node src/reporter.js` no-stdin TTY hang.
- **P0-8** `/al` session-analyzer cross-attribution tightening.

