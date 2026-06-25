---
title: Remyx Outrider
date: 2026-06-25 22:20:47 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.16
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.16**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Highlights

**Phase A: paper-anchored fidelity audit when no reference URL** (#69 / REMYX-145)

Phase A previously skipped the entire inline chain when a paper had no public reference impl — Phase B (convention) and Phase C (test gate) cascaded to skip alongside it, even though they have no dependency on A's output. Concrete impact: PRs for papers without a public code release stayed in draft with the original Outrider body preamble (the canonical-first body rewrite from v1.6.15 never ran).

This release adds a paper-anchored degraded mode (A2):

- When a reference URL is missing but an arxiv id is extractable from the PR body, Phase A fetches the paper's title + abstract and audits the diff against the paper's described method.
- Lower precision than the reference-anchored variant — abstracts can be vague on implementation specifics — but materially better than skipping. The Coverage matrix surfaces an "Audit anchor" line so maintainers read the precision floor from the artifact itself.
- New statuses `fidelity_audited_paper_anchored{,_needs_judgment}` are prefix-matched by the chain dispatcher's existing `startswith("fidelity_audited")` check, so Phase B + C now run automatically when the paper has no reference impl.

## Operator notes

- Forks pinned to `@v1` pick this up automatically (`v1` now points at this release).
- The reference-anchored audit path is unchanged — existing reference-impl trials produce the same Coverage matrix shape.
- `fidelity_skipped_no_reference` is preserved as a status, now emitted only when *both* reference URL and arxiv abstract are unavailable.
