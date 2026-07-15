---
title: Remyx Outrider
date: 2026-07-15 06:46:09 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.28
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Outrider is a GitHub Action that automates the validation and comparison of new methods against an organization's codebase. It provides draft PRs with a self-review, handles preflight checks and issues, supports branch-only mode for exploring multiple candidates without committing to any one, and allows quickstart installation via CLI tools. The action uses Anthropic Opus or z.ai GLM-5.2 as model backends, with configurable costs based on the backend used.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.28**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

Outrider is a GitHub Action that automates the validation and comparison of new methods against an organization's codebase. It provides draft PRs with a self-review, handles preflight checks and issues, supports branch-only mode for exploring multiple candidates without committing to any one, and allows quickstart installation via CLI tools. The action uses Anthropic Opus or z.ai GLM-5.2 as model backends, with configurable costs based on the backend used.

## What's Changed

## New

**Two-tier drafter/refiner setup** ([PR #91](https://github.com/remyxai/outrider/pull/91)) — a companion pair of workflow templates alongside the existing `outrider.yml`:

- **`outrider-daily.yml`** — drafter role: high-frequency, `publish=branch`, Anthropic Claude Haiku 4.5 default. Distinctive defaults: `maintain-state=true`, `staged-synthesis=false`. Accumulates `.remyx/repo_intel.yaml` across dispatches; produces branches that the refiner selects from weekly.
- **`outrider-weekly-refine.yml`** — refiner orchestrator: weekly cron + `workflow_dispatch`. Three steps in one job: pick candidate from past 7 days of drafter output → generate targeted gap analysis via Claude Sonnet 4.6 → dispatch `outrider.yml` with `pin-arxiv` + `start-from-ref` + `lead-content=<inline markdown>` + `staged-synthesis=true` + Opus 4.8. The refinement's chain (fidelity → convention → test) runs inline. Terminal artifact: a ready-for-review draft PR.

Design rationale in `docs/customization.md` §5:

- Higher commit-to-PR rate on borderline cases — drafter branches anchor extension point, test scaffolding, and diff shape before Opus's preflight decision.
- Cheap exploration of the arxiv frontier — daily dispatches sample from an ever-growing candidate pool; spec generation alone saturates on any given paper × repo pair while the arxiv corpus keeps growing.
- Compounding intel accumulation — failed drafts still add negative-space signal to preflight.

Single-vendor default: one `ANTHROPIC_API_KEY` secret covers both tiers. `z.ai` GLM path documented as an opt-in override in `docs/backends.md`.

## Fixed

**Refiner picker enumeration** ([PR #92](https://github.com/remyxai/outrider/pull/92)) — the auto-pick step now enumerates only branches present in `.remyx/repo_intel.yaml`'s `confirmed_by` list (the drafter's own landing record) instead of filtering the full branch list on name patterns. Prior behavior let inherited upstream branches on forks (`dependabot/*`, `feat/*`, `chore/*`) slip through and often win the most-recent pick, then fail at the arxiv-resolution gate. Now: only drafter-authored branches are candidates, by construction.

First-time-setup forks with no drafter landings yet emit a clear no-op warning (`No drafter-known branches in .remyx/repo_intel.yaml — nothing to promote yet`) rather than the misleading "no candidate branches in past N days" message.

## Compatibility

Backwards-compatible. Existing single-file `outrider.yml` installs continue to work unchanged. The `remyxai/outrider@v1` action tag now points to v1.7.28; workflows already referencing `@v1` pick up both changes on next dispatch.

## `remyxai-cli` companion

An opt-in `--two-tier` flag for `remyxai outrider setup-local` is proposed in [remyxai/remyxai-cli#47](https://github.com/remyxai/remyxai-cli/pull/47), which fetches these templates from `remyxai/outrider@v1` at install time.
