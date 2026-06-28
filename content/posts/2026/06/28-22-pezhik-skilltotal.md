---
title: SkillTotal AI Component Security Scan
date: 2026-06-28 22:13:39 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.19.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.19.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **False-positive calibration (ruleset 20).** Five real-world FP classes that over-scored
  legitimate components are fixed by demoting non-behavioral evidence to `needs_review`, with the
  genuine attack shape still detected (guarded by the offline detection floor): (1) prompt-injection
  strings inside eval/benchmark **data corpora** (a detector test vector, not behavior — this also
  stops a benign tool being mislabeled `malicious`); (2) remote pipe-to-shell inside a shell `#`
  **comment** (`# Usage: curl … | bash`); (3) credential paths in a **denylist/guardrail** (a policy
  that protects `~/.ssh`/`id_rsa`, not access to it — also clears the spurious exfil combo it fed);
  (4) public **Algolia DocSearch** search keys (read-only, safe to embed); (5) command-injection in
  **compound test trees** (`cli-e2e-tests/`); (6) security prose in **C-family code/JSDoc comments**
  (`.ts`/`.js`/`.go`/`.rs`) plus defensive "refuse to send credentials to …" phrasing — which had
  mislabeled the official MCP TypeScript SDK as `malicious`. No detection was removed; report schema
  unchanged.


