---
title: wartzar-bee CI Cost Guardrail
date: 2026-07-23 06:10:06 +00:00
tags:
  - wartzar-bee
  - GitHub Actions
draft: false
repo: https://github.com/wartzar-bee/ci-guardrail
marketplace: https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `wartzar-bee/ci-guardrail` calculates the cost difference between the base and head branches of a PR, posts a comment with the delta and top contributors, and can block the build if the token cost increases beyond a configured threshold. It uses `@wartzar-bee/tokenscope` to estimate token costs based on file size and complexity, providing insights into potential cost regressions.
---


Version updated for **https://github.com/wartzar-bee/ci-guardrail** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wartzar-bee-ci-cost-guardrail) to find the latest changes.

## Action Summary

The GitHub Action `wartzar-bee/ci-guardrail` calculates the cost difference between the base and head branches of a PR, posts a comment with the delta and top contributors, and can block the build if the token cost increases beyond a configured threshold. It uses `@wartzar-bee/tokenscope` to estimate token costs based on file size and complexity, providing insights into potential cost regressions.

## What's Changed

## v1.1.1 — self-test CI + tests badge

Patch release. No change to the action's behavior (entrypoint.sh / action.yml untouched vs v1.1.0). Backward compatible — `uses: wartzar-bee/ci-guardrail@v1` picks it up when the `v1` tag is moved.

### Added
- **Self-test CI.** `.github/workflows/test.yml` runs the 50-test integration suite (`bash test/run-test.sh`) on every push to `main` and every pull_request. The suite mocks `tokenscope` and `git` on PATH, so it needs only bash + python3 (both preinstalled on ubuntu-latest) — no npm/tokenscope install.
- **Tests badge** in the README (above the Marketplace badge). For a GitHub Action, a visible green self-test is a direct trust/conversion signal for the repo visitors the dev.to announcement + Marketplace listing drive here.

### Fixed
- **README hero-line overclaim (honesty fix).** The top-of-README tagline claimed the action "comments on the responsible lines". It does not — it comments on the responsible **files** (`tokenscope scan` emits file-level token data with no line-level attribution; the PR comment renders per-file delta tables). Corrected "lines"->"files" so the flagship's first-impression line matches action.yml's Marketplace description and the actual behavior. Brand HARD RULE: never claim a capability the product lacks.
- **Publish allowlist gap.** `.publish-include` now lists `.github/workflows/test.yml`. It previously did not, so the tests badge added in the prior tick would have pointed at a workflow that never shipped to the public repo — a broken (404) badge. Now the workflow ships, the badge runs, and it goes green after the first push.

Tests: 50/50 pass. Pre-publish audit: CLEAN.
