---
title: AI Issue Triage
date: 2026-05-18 06:34:15 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-issue-triage
marketplace: https://github.com/marketplace/actions/ai-issue-triage
version: v0.2.4
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-issue-triage** to version **v0.2.4**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-issue-triage) to find the latest changes.

## Action Summary

This GitHub Action, `gha-issue-triage`, automates issue triage by leveraging AI to detect duplicates, evaluate relevance and feasibility, score complexity, and apply labels such as `bug`, `feature`, or `good-first-issue`. It also posts a summarized analysis as a sticky comment, updating it upon re-runs. The action streamlines issue management and reduces manual effort, ensuring efficient organization and prioritization of issues.

## What's Changed

Docs-only patch release. No runtime behaviour change vs. `v0.2.3`.

## Fixed

- README and `docs/integrations.md` usage examples now reference the actual release tag (`@v0.2.4`). Previously pointed at `@v0` and `@v1` respectively, **neither of which exists** — copy-pasted examples failed with `tag not found`. The non-existent floating tag pattern was abandoned earlier in favour of explicit version pins.

## Documentation

- Backfilled empty `## [0.2.2]` and `## [0.2.3]` sections in `CHANGELOG.md` with the actual changes that shipped under those tags (description trim + `actions/checkout` SHA-pin respectively). The bump workflow inserts version headings but doesn't move `[Unreleased]` content — both prior bumps left their sections empty.

## Marketplace

Re-publish from this release: https://github.com/qte77/gha-issue-triage/releases/edit/v0.2.4

Full history: [`CHANGELOG.md`](https://github.com/qte77/gha-issue-triage/blob/v0.2.4/CHANGELOG.md)

