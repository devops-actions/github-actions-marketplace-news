---
title: Z-AI GLM Code Review Bot
date: 2026-08-29 21:56:16 +00:00
tags:
  - secondsky
  - GitHub Actions
draft: false
repo: https://github.com/secondsky/z.ai-code-review-bot
marketplace: https://github.com/marketplace/actions/z-ai-glm-code-review-bot
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Z-AI GLM Code Review Bot automates code reviews using AI-driven models, providing inline line-level review comments, deterministic scanners, structured findings with noise caps and severity rankings, and interactive `/zai` commands. It also offers commit-status feedback and per-path review instructions without editing the workflow.
---


Version updated for **https://github.com/secondsky/z.ai-code-review-bot** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/z-ai-glm-code-review-bot) to find the latest changes.

## Action Summary

The Z-AI GLM Code Review Bot automates code reviews using AI-driven models, providing inline line-level review comments, deterministic scanners, structured findings with noise caps and severity rankings, and interactive `/zai` commands. It also offers commit-status feedback and per-path review instructions without editing the workflow.

## What's Changed

Z-AI GLM Code Review Bot v2.0.0 — the Marketplace release of the v2 line, now running on the **Node 24** runtime.

This tag supersedes the original v2.0.0 cut: it moves the tag to current main so `@v2.0.0`, `@v2`, and the Marketplace listing all serve the latest audited build — **build `31b626c` (2026-08-29)**. A floating `v2` major tag tracks this release.

## Since the original v2.0.0 cut

### Runtime & tooling
- **node20 → node24** (`runs.using`) — Node 20 reached EOL in April 2026 and GitHub Actions forces Node 24 execution. CI now tests Node 22/24.
- `@actions/core` pinned to 2.0.3 (core@3 breaks native ESM bundling), actions/checkout & setup-node bumped to v7.

### Review defaults (2026-08-29, #21)
- **Default model is now `glm-5.3`** (`ZAI_MODEL`). `glm-5.3-flash` works out of the box as the faster/cheaper option — no allowlist, any model name passes through.
- **`ZAI_MAX_FINDINGS` default raised 8 → 25** (clamp unchanged at [1, 50]; `.zai.yml` can still only lower the cap).

### Supply-chain & dependency refresh (2026-08-29, #22–#29)
- **Workflow hardening (#22, #23):** every CI action SHA-pinned, `persist-credentials: false`, job timeouts, `ubuntu-24.04`, concurrency guards, and new **actionlint / zizmor / CodeQL / OSSF Scorecard / Socket** gates — plus a `workflow-security` policy test that enforces the invariants.
- **Dependabot 7-day supply-chain cooldown** on npm and GitHub Actions ecosystems (new releases age 7 days before Dependabot proposes them).
- **Dependency bumps:** `actions/upload-artifact` v7.0.1, `github/codeql-action` v4.37.8, vitest family 4.1.11; `picomatch` and others follow via the cooldown. `@actions/core` stays deliberately on 2.x.
- README quickstart pinned to the audited build SHA (#29).

### Security & correctness (audited across 14 adversarial waves, all fixed via TDD)
- **Adversarial audit waves W1–W21** (#8, #12): 170+ bugs fixed across prompt-injection defenses, markdown rendering (CommonMark code spans, nested blockquotes, surrogate pairs), `.zai.yml` config wiring, scheduling/push parity, and secret redaction.
- **CodeRabbit follow-up** (#10): 4 findings fixed, including a prompt-injection bypass and an unbounded `scheduleMaxPrs`.
- **Feature-tracker audit** (#9): 66 user stories walked, 5 logistical bugs fixed.
- **Simplification audit** (#13): 20 fixes — 9 drifting duplicate helpers deduped, 2 hardening fixes, plus a real `.zai.yml` glued-quote parsing bug.
- **Deferred follow-ups** (#15): key-parity & `action.yml` drift guards, early-exit pagination, worker pool, status-policy parity.

### Housekeeping
- Version pinned to v2 everywhere (`package.json` 2.0.0, `@v2` usage ref), README gains a Marketplace badge and refreshed docs, MIT license field added.
- Action renamed to **Z-AI GLM Code Review Bot** — the name "Z.ai Code Review" was already taken on the Marketplace by the upstream repo.

**Test suite: 2349 passing. Zero npm audit vulnerabilities.**

---

### Upgrading from v1
See the README for the v2 input table — v2 adds structured findings, inline review comments, deterministic scanners (gitleaks + ast-grep), a walkthrough summary, `.zai.yml` repo config, and incremental review. All v1 users should carry `ZAI_API_KEY` unchanged; everything else has sensible defaults.

