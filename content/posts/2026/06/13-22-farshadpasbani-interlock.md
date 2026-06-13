---
title: Agent Interlock
date: 2026-06-13 22:17:37 +00:00
tags:
  - farshadpasbani
  - GitHub Actions
draft: false
repo: https://github.com/farshadpasbani/interlock
marketplace: https://github.com/marketplace/actions/agent-interlock
version: v0.1.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/farshadpasbani/interlock** to version **v0.1.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-interlock) to find the latest changes.

## What's Changed

Security hardening release. Covers both the GitHub Action (`farshadpasbani/interlock@v1` now points here) and the npm CLI (`agent-interlock@0.1.3`).

## 🔒 Security

**Action — dependency advisory.** Pinned `undici` to `^6.24.0` (resolves to 6.26.0), clearing the high-severity `undici ≤ 6.23.0` advisory cluster — HTTP request/response smuggling, CRLF injection, unbounded-decompression DoS (GHSA-2mjp-6q6p-2qxm, GHSA-4992-7rv2-5pvq, GHSA-g9mf-h72j-4rw9 and related). It entered transitively through `@actions/http-client`, whose entire declared `^5` range pulls a vulnerable `undici`. The action bundle was rebuilt; `npm audit --omit=dev` is clean.

**CLI — gate could be neutered before it was armed.** `agent-interlock init` now **always** protects `.github/**` (Tier 2) in the generated policy. Previously it only did so when `.github/workflows/` already existed — but the documented install flow adds the workflow *after* `init`, so the gate's own workflow file could land unprotected, letting an agent PR disable the gate as a lenient Tier-1 change.

**Least-privilege token.** The default workflow now requests only `contents: read` + `pull-requests: write` — the redundant `issues: write` was dropped (for a pull-request resource, the comment/label endpoints are governed by the `pull-requests` permission, not `issues`). Verified against CI.

## 📄 Docs & hygiene

- Added `SECURITY.md` — threat model (Interlock is a governance *aid*, not a containment *boundary*; it rests on agent self-identification, the `observe` default, and the protected-path list) + private vulnerability reporting.
- Added `.github/dependabot.yml` (npm + github-actions, weekly).
- README: new "What it is — and what it isn't" trust-boundary section.

## ⬆️ Upgrading

- **Action users on `@v1`:** nothing to do — `v1` now points to this release. You can tighten your workflow's `permissions:` to `contents: read` + `pull-requests: write` (drop `issues: write`); existing blocks keep working, they're just broader than needed.
- **CLI users:** `npm i -g agent-interlock@0.1.3` or `npx agent-interlock@latest`. Re-run `init` (or add `.github/**` to your `tiers.tier2`) to pick up the gate-protection fix.

