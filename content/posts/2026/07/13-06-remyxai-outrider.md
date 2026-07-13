---
title: Remyx Outrider
date: 2026-07-13 06:18:43 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.20
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.20**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Fix

**Pre-PR fidelity gate's remediation pass now inherits the coding session's `self_review` mode context.** Under v1.7.19 and earlier, the remediation pass (after `_attempt_pre_pr_fidelity_patch` applied edits) called `_run_pre_pr_fidelity_check` without `self_review`, silently defaulting to Mode 1 with no substitutions or scope-outs. Any Mode-2 refinement that triggered the fidelity gate on the first pass then had its documented substitutions wrongly re-flagged as fabrication on the second pass — hard-to-shift outcome for legitimate Mode-2 diffs.

Same architectural pattern as v1.7.17's integration-check test-file exemption: coding sessions have grown mode / substitution / scope-out semantics; downstream chain gates need to inherit that context.

### Evidence

Surfaced on the v1.7.19 E2E validation run against `smellslikeml/atropos` (RLMF, arxiv:2606.32032v1). The coding session declared Mode 2 with 2 substitutions + 4 scope-outs, all architecturally justified (paper's trainer-level GRPO advantage-scaling → reward-level group shaping; paper's LLM self-judge → optional `<meta_confidence>` XML tag with graceful degradation). First fidelity check: `mode-2, subs=2, scoped_out=4` → 14 items needs-judgment. Patch attempt applied edits. Second fidelity check: `mode-1, subs=0, scoped_out=0` → 10 items still flagged. Run correctly routed to `skipped_fidelity_fabrication_after_patch`, but for the wrong reason: the coding session's self_review still cited Mode 2 with the same substitutions at end-of-run — only the fidelity gate switched check contexts.

### Fix

Pass `self_review=review` to the remediation-pass `_run_pre_pr_fidelity_check` call in `process_target`, matching the first-pass kwargs verbatim. One-line change; ships with a source-code regression test guarding both invocation sites against future refactors dropping the kwarg.

## Tests

929 tests pass. New:

- `test_classify_mode_cited_defaults_to_none_on_missing_self_review` — documents the bug's blast radius
- `test_classify_mode_cited_reads_mode_2_from_self_review` — Mode-2 correctly detected when self_review present
- `test_process_target_source_passes_self_review_to_both_fidelity_calls` — source-code check asserting both invocation sites pass `self_review=`

## Migration

**No action required** — backward-compatible one-line change. All existing dispatches benefit immediately.
