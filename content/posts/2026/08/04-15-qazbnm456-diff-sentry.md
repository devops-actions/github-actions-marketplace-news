---
title: diff-sentry malicious change scan
date: 2026-08-04 15:05:28 +00:00
tags:
  - qazbnm456
  - GitHub Actions
draft: false
repo: https://github.com/qazbnm456/diff-sentry
marketplace: https://github.com/marketplace/actions/diff-sentry-malicious-change-scan
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **diff-sentry is a GitHub Action designed to scan pull requests against potential malicious or obfuscated code patterns using machine learning models. It checks for various attack vectors such as workflow configuration, obfuscation, execution techniques, and exfiltration, providing evidence-based alerts without relying on an API key or model. The action runs efficiently under read-only tokens and can be configured to skip certain paths and report only specific severities.**
---


Version updated for **https://github.com/qazbnm456/diff-sentry** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diff-sentry-malicious-change-scan) to find the latest changes.

## Action Summary

**diff-sentry is a GitHub Action designed to scan pull requests against potential malicious or obfuscated code patterns using machine learning models. It checks for various attack vectors such as workflow configuration, obfuscation, execution techniques, and exfiltration, providing evidence-based alerts without relying on an API key or model. The action runs efficiently under read-only tokens and can be configured to skip certain paths and report only specific severities.**

## What's Changed

The first release, and a repositioning: the front door is now a GitHub Action anyone installs in fifteen lines. The trajectory / studio / fine-tuning half stays, as the second goal for people who run the infrastructure themselves.

```yaml
name: diff-sentry
on: pull_request
permissions:
  contents: read
jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: qazbnm456/diff-sentry@v0.4.0
```

No API key, no model, no network. It runs on fork pull requests under the read-only token they already get.

## Highlights

**Ten new rules covering the AsyncAPI "Miasma" families.** Reconstructing that supply-chain attack stage by stage found seven of its eight stages passing the rules silently: they were shell- and YAML-shaped while the attack was Node end to end. Now covered: `pull_request_target` that checks out the PR head (`pwn-request`, critical), payloads shoved past the diff viewport by a long whitespace run, bidi-override and zero-width characters, detached child processes, inline `node -e`, fetch-to-disk droppers, `_0x…` obfuscated identifiers, and IPFS/permaweb gateways.

**Severities are tuned, not maximal.** A plain workflow edit is `medium` and does not fail your build. `pull_request_target` alone is `medium`, because that is the ordinary label-bot shape; it becomes `critical` only when the same workflow also checks out the PR head. Rules that would be noisy alone require two halves to fire. Every rule ships with its negative case, and the corpus pins both.

**Evidence a model cannot suppress.** The deterministic rules run before any model takes a turn, and the alert decision is derived from the union of recorded hits rather than from a model's self-report. A successful prompt injection can skew a verdict; it cannot remove a piece of evidence. In the Action, no model runs at all.

**It runs on its own pull requests.** This repo's CI uses the Action it publishes, scanned by the rules in the PR rather than the ones already on main, so every PR is an integration test of what you install. It caught a real defect on its first run.

**Deliberately not `pull_request_target`.** Handing model credentials to a fork PR run requires exactly the misconfiguration that opened the Miasma compromise. The README documents the safe way to comment results back on a fork PR instead.

## Also in this release

- `diff-sentry scan` — the deterministic layer as a standalone command, with a `diff-sentry` console entry point.
- Fixed: `scan` no longer flags what a diff *deletes*. Scanning a raw diff used to flag a change for the payload it was removing, which turns every remediation commit red.
- `rlm-kit` → `rlm-harness` 1.0.0 from PyPI; nothing in the dependency closure resolves outside PyPI any more.

Full detail in [CHANGELOG.md](https://github.com/qazbnm456/diff-sentry/blob/main/CHANGELOG.md).

