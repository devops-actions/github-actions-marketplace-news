---
title: MergeWarden for AI PRs
date: 2026-07-26 06:37:57 +00:00
tags:
  - sjh9714
  - GitHub Actions
draft: false
repo: https://github.com/sjh9714/mergewarden
marketplace: https://github.com/marketplace/actions/mergewarden-for-ai-prs
version: v0.6.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  MergeWarden is a GitHub Action that automates the review of AI-generated pull requests by checking their scope, workflow permissions, and untrusted text usage against predefined boundaries and policies. It helps in maintaining code quality, preventing security vulnerabilities, and ensuring compliance with team guidelines. MergeWarden also gates its own pull requests to monitor its operations, providing clear evidence of its actions for auditing purposes.
---


Version updated for **https://github.com/sjh9714/mergewarden** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergewarden-for-ai-prs) to find the latest changes.

## Action Summary

MergeWarden is a GitHub Action that automates the review of AI-generated pull requests by checking their scope, workflow permissions, and untrusted text usage against predefined boundaries and policies. It helps in maintaining code quality, preventing security vulnerabilities, and ensuring compliance with team guidelines. MergeWarden also gates its own pull requests to monitor its operations, providing clear evidence of its actions for auditing purposes.

## What's Changed

**v0.5.0 made agent detection work. This release fixes what that exposed.**

With detection live, `contract/missing` fires on nearly every agent pull request — and it was hardcoded to `error`.

`error` blocks. Our own [adoption path](https://github.com/sjh9714/mergewarden#adopt-safely) tells teams to graduate to `mode: block` at step 4, which would then have rejected **every agent pull request** — no coding agent emits a scope contract by default, and the scan study measured **0 of 2,204**. Nothing a reviewer does to the change can resolve it.

It also ranked a missing declaration exactly as severe as `workflow/permission-escalation`, which fires when a workflow actually moves from `contents: read` to `contents: write` plus `id-token: write`. One is the absence of a convention almost nobody has adopted; the other is a privilege boundary moving.

## The change

```yaml
contract:
  missing_severity: warn # or: error
```

`contract` was the only rule family without severity control, so this closes an inconsistency rather than adding a special case.

Verified on real agent pull requests at `mode: block`:

| Pull request | Before | After |
|---|---|---|
| Agent PR, no contract, nothing dangerous | block | **warn** |
| Agent PR, no contract, **edits an agent instruction file** | block | **block** |

The tool now blocks on what a pull request did, not on a convention it did not follow.

`contract/invalid`, `contract/out-of-scope` and `contract/blocked-path` stay `error` — each fires on something a pull request did against its own declaration.

## Breaking

No API breaks, but the default decision changes in one case, which is why this is a minor bump:

- On `mode: block`, an agent PR whose only issue is a missing contract no longer blocks. Restore with `contract.missing_severity: error`.
- On the default `mode: warn`, the decision is unchanged. Only the reported severity moves from error to warning.

## Also fixed

Three strings said "an mergewarden contract", left from the v0.4.0 rename — the sentence most new installs would read first.

Full notes: [docs/release-notes-v0.6.0.md](https://github.com/sjh9714/mergewarden/blob/main/docs/release-notes-v0.6.0.md)

Published from signed tag `v0.6.0` (`verified=true`) with npm provenance.
