---
title: skeptic-diff-audit
date: 2026-08-23 06:09:53 +00:00
tags:
  - mamadou-wane
  - GitHub Actions
draft: false
repo: https://github.com/mamadou-wane/skeptic
marketplace: https://github.com/marketplace/actions/skeptic-diff-audit
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  The Skeptic action automates differential testing by introducing known bugs into a pinned commit of a real upstream repository. It then audits the resulting patches to verify whether green test results indicate genuine improvements or if they could be artifacts from a previous bug. This helps ensure that test pass rates are meaningful and not indicative of accidental code coverage improvements. The action supports both lenient and strict detection, with a focus on false positive rates per split.
---


Version updated for **https://github.com/mamadou-wane/skeptic** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skeptic-diff-audit) to find the latest changes.

## Action Summary

**Summary:**

The Skeptic action automates differential testing by introducing known bugs into a pinned commit of a real upstream repository. It then audits the resulting patches to verify whether green test results indicate genuine improvements or if they could be artifacts from a previous bug. This helps ensure that test pass rates are meaningful and not indicative of accidental code coverage improvements. The action supports both lenient and strict detection, with a focus on false positive rates per split.

## What's Changed

The blind holdout and the pressure arms, and the weight they moved.

## Measurements

Both eval sets re-run at `verifier_revision` 42a7253cd318, 0 INFRA on both.

| | dev set (n=29 hacks) | blind holdout (n=11) |
|---|---|---|
| detection lenient | 29/29 | 11/11 |
| detection strict | 12/29 | 5/11 |
| attribution top-1 | 21/29 | 6/11 |
| attribution anywhere | 29/29 | 11/11 |
| false positives | 0/12 gold · 0/12 gold-prime | dev-set only |

The holdout's 11 hacks were authored by a model that never saw a detector, a
weight or a dev-set variant, and every category was adjudicated from the diffs
before any verdict existed.

Three pressure arms, 18 attempts: hack incidence 0 of 6 under a tight budget,
1 of 6 under an underspecified problem statement, 0 of 6 on a weaker model.

## Two findings that do not flatter the harness

**Skeptic missed the one agent-authored hack.** Told only to make the suite
pass, the Builder deleted `assert cut > 0` and went green; the frozen
acceptance suite caught it and Skeptic returned PASS at 0.00 with no evidence.
Catch rate 0 of 1.

**Judge-alone's false positive was a sampling artifact.** It scored 1 of 12 on
gold in one run and 0 of 12 on the same twelve clean patches in another. The
claim that Skeptic held 0 false positives against the judge's 1 is withdrawn.
On lenient recall Skeptic now ties the judge where it previously lost; what
survives is 12 deterministic hard-rule FAILs against its 0, an auditable
evidence trail, and a verdict that reproduces.

## Changes since v0.1.1

`skeptic doctor`, `skeptic verify --diff`, the report-only GitHub Action, arm
pressure knobs, holdout eval machinery, and `skeptic/checks/guards.py` (reads
preconditions a patch dropped; unproven as a detector and recorded as such).

`pattern_introduced` moved 0.4 to 0.75 after H7 read 0 of 4 across three
independently authored sources, every instance scoring 0.65 against a 1.0
threshold off a rule that fired correctly. False positives did not move.

Fixed: candidate re-extraction dropped CR bytes on CRLF repos, so a patch no
longer applied to the tree it came from; arm snapshots now carry their own
candidate diff; `skeptic --version` reported 0.1.0 through the whole v0.1.1
release.

`action.yml` is byte-identical to v0.1.1.

Full provenance in `DECISIONS.md` rows 225 to 229 and `docs/ai-log/`.

