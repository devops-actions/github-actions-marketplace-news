---
title: Repo Impersonation Monitor
date: 2026-06-27 06:34:08 +00:00
tags:
  - markhinderliter
  - GitHub Actions
draft: false
repo: https://github.com/markhinderliter/repo-impersonation-monitor
marketplace: https://github.com/marketplace/actions/repo-impersonation-monitor
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/markhinderliter/repo-impersonation-monitor** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-impersonation-monitor) to find the latest changes.

## What's Changed

First alpha of the Repo Impersonation Monitor — an opt-in GitHub Action a maintainer adds to their own repo to detect repos impersonating their project, and (later) open a paste-ready abuse report.

## What's in v0.1.0
- **Candidate discovery:** exact-name, bare-org/vanity, and permutation (near-miss name) generators (separator swaps, owner+name org-folding, curated affixes) against the GitHub Search API.
- **Structural scoring:** stripped-source-tree, non-fork, recent-creation, ships-binary, PE version-resource mismatch, platform/path inconsistency → conservative confidence tiers (propose, never auto-accuse).
- **Metadata-only PE inspection:** release binaries are parsed, never executed.
- **Action contract:** `action.yml` with `dry-run` (report-only) support; opens an issue only on high-confidence matches when enabled.
- **Validation:** seeded known-answer harness + a real-cases manifest; two network-gated live runners (scoring-on-known and discovery), both metadata-only / read-only.
- **Security posture:** zizmor + bandit + pip-audit + OpenSSF Scorecard gating in CI; THREAT_MODEL.md.

## Versioning note
This is an **immutable** `v0.1.0` alpha tag. There is **no moving `v1` major alias yet** — we're not committing to the "`v1` = latest" convention at alpha. Pin `@v0.1.0` explicitly. A moving major alias will arrive with a stable line.

Known limitation (documented): opt-in design under-serves the new, low-popularity maintainers who are the most common targets. Fork-class look-alikes are excluded from search by GitHub default (THREAT_MODEL §6).

