---
title: Drift — Architectural Erosion Check
date: 2026-03-30 06:15:11 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v0.10.9
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v0.10.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a deterministic static analysis tool designed to detect architecture erosion in AI-generated code within Python projects. It identifies issues such as structural hotspots, boundary violations, and pattern fragmentation that silently weaken codebases, providing actionable insights to improve code consistency and maintainability. By automating structural feedback, it helps development teams manage the risks of accelerated code generation without relying on large language models.

## What's Changed

## What's new in v0.10.9

**Short:** drift closes agent-facing gaps from real-world agent workflow analysis  consistent signal abbreviations, full explain coverage for all 19 signals, and a scoped acceptance field that unblocks agents trapped by pre-existing diff noise.

### Added

- **Full signal coverage in drift explain**: COD, CCC, CXS, FOE, CIR, DCA added  all 19 signals now reachable via drift explain ABBREV.
- **Consistent task ID prefixes for all 19 signals**: _SIGNAL_PREFIX extended from 6 to all 19, eliminating wrong fallback prefixes (byp-, cog-, dea-). Explicit signal_abbrev field added to fix-plan task dicts.
- **Complete _ABBREV_TO_SIGNAL mapping**: Extended to 19 entries (CXS, FOE, CIR, DCA) so drift fix-plan --signal CXS and resolve_signal() work for all signals.
- **in_scope_accept field in drift diff**: New boolean that signals whether the scoped target path is clean, independent of pre-existing out-of-scope diff noise.
- **Actionable out_of_scope_diff_noise guidance**: recommended_next_actions now provides a concrete resolution path.
