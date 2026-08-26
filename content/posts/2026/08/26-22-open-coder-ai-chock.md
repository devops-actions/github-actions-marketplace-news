---
title: Chock Governance Check
date: 2026-08-26 22:50:16 +00:00
tags:
  - open-coder-ai
  - GitHub Actions
draft: false
repo: https://github.com/open-coder-ai/chock
marketplace: https://github.com/marketplace/actions/chock-governance-check
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Chock automates AI coding agents' rules by compiling them into deterministic guardrails that enforce policies across different CI/CD systems and tools used by developers. It ensures consistency in code standards and compliance with project requirements, reducing human errors and maintaining high-quality codebases.
---


Version updated for **https://github.com/open-coder-ai/chock** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chock-governance-check) to find the latest changes.

## Action Summary

Chock automates AI coding agents' rules by compiling them into deterministic guardrails that enforce policies across different CI/CD systems and tools used by developers. It ensures consistency in code standards and compliance with project requirements, reducing human errors and maintaining high-quality codebases.

## What's Changed

## 0.5.0 — Managed-setting and SKILL honesty

MINOR: the Claude managed-setting emitter and the generated SKILL note change, so an
adopter's next `chock sync` / `chock plugin build` rewrites those artifacts. No credited
enforcement surface changes — both are non-credited/advisory outputs being brought into
line with what they can actually deliver (do-not-claim, applied to the emitter itself).

- **`protect-main-branch` managed-setting is now empty.** It previously emitted a
  branch-blind command-text deny (`commit.*\b(main|master)\b`) that missed a plain
  `git commit` on main and false-positived on "main" in a message. A static managed
  setting cannot resolve branch state, so the honest managed-setting for branch
  protection carries no deny — enforcement lives in its git-hook and ci-gate surfaces,
  which do read the branch.
- **`scan-secrets` managed-setting aligned to the gate.** Added `jks|keystore` to the
  credential-file pattern and more high-confidence credential prefixes (xoxb, sk/rk_live,
  sk-ant, AIza, npm_) so the in-session echo is less of a silent subset of the git-hook.
  Kept lookahead-free for cross-client regex-engine safety; the git-hook remains
  authoritative.
- **SKILL advisory note is conditional on artifact.** A `rule` (advise-tier) policy no
  longer claims it "becomes a git hook that exits non-zero" when compiled — it ships rule
  text and stays advisory. Only `hook` policies carry that line; guard-script policies
  still get the enforced note in the per-client plugin formats.


