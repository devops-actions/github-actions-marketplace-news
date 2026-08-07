---
title: runward gate
date: 2026-08-07 07:20:30 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.33.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward is an open-source tool designed to verify the engineering decisions behind AI-generated code by using plain code. It automates the verification process of full engineering missions from framing through handover, ensuring that the load-bearing decisions are followed and documented effectively. Runward provides a deterministic gate that checks against predefined expectations, preventing unintended outcomes and ensuring code integrity.**
---


Version updated for **https://github.com/stranxik/runward** to version **v0.33.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward is an open-source tool designed to verify the engineering decisions behind AI-generated code by using plain code. It automates the verification process of full engineering missions from framing through handover, ensuring that the load-bearing decisions are followed and documented effectively. Runward provides a deterministic gate that checks against predefined expectations, preventing unintended outcomes and ensuring code integrity.**

## What's Changed

**0.32.0 fixed what an audit found. This one measures what the net that guards it would catch, and publishes the answer with everything in it that counts against us.**

No behaviour of the gate changes. 24 golden outputs across four missions and six flag combinations are byte-identical to 0.32.0, exit codes included.

## How much does this test suite actually detect

A full mutation pass (Stryker 9.6.1) on the seven library modules the verdict is computed from. **Mutation score 60.78 %** — 2 973 mutants, 1 769 killed, 38 timeout, 1 166 survived, in 2 h 35.

A survivor count is not a defect count, and treating it as one produces a day of false findings. So: 433 survivors carry mutators able to flip a *decision* and were re-run against the whole net (unit suite, self-gate, OSCAL validation, end-to-end smoke). **53 died there, 380 survived everything.** 246 of those were then instructed one function at a time, each by applying the mutant to a real mission and reading the verdict rather than reasoning about the code. **181 now die**, measured centrally rather than claimed.

Three mechanisms were **correct in every shipped release** and guarded by **no test**:

| Mechanism | What one mutation does |
|---|---|
| Seal tamper detection | One field returned false in `verifyEvidenceLock` takes a sealed, tampered mission from exit 1 to **exit 0**. `check.ts` gates the whole seal section on it, so the violations were neither printed nor counted. Reproduced by hand. |
| The ReDoS screen (ADR-0020) | The nested-group collapse loop was entered by no fixture. It could be deleted with the suite still green. |
| Pointer containment | The repository fallback was dead code under test: every containment test ran in a bare temp directory. |

**One correction the pass forced on its own reading**, and the reason ADR-0046 exists: a surviving mutant is *not* automatically a false green. Forcing `artifactState` to call every ADR directory `filled` survives the unit suite, the self-gate, the smoke run **and** the audit corpus — and the mission is still **refused**, because a typed pointer does not resolve. Defence in depth. What it corrupts is the printed line, and for this tool a proof surface that lies under a correct verdict is a defect of its own.

Mutation testing is adopted as an **instrument, never a gate**. No score is ever a crossing condition: a number in a manifest is a verdict satisfied by a figure nobody re-derived, which is exactly what ADR-0045 forbids, and runward does not do to itself what it refuses from an operator.

## The verdict is now computed where a test can reach it

The largest absence of that measurement was the one that mattered: `src/commands/check.ts`, where the verdict is assembled and the exit code chosen, sat at **8.70 % line and 0 % function coverage**, no unit test imported it, and the mutation pass could not reach it at all.

`src/lib/verdict.ts` is now a pure reading of the mission: it prints nothing, never touches `process.exitCode`, runs no hook. **97.79 % line, 100 % function**, and inside the measured perimeter from now on. 12 hand-written mutants, 11 killed; the survivor is argued rather than assumed (ADR-0047).

## What we publish about ourselves

- **`docs/compliance/known-defects.md`** — 20 entries in four classes, each with the version range it affects and the command that verifies it. It lists **both directions**: the undue passes *and* the five undue refusals that shipped in 0.31.x. A register that only published false greens describes half a campaign.
- **`docs/compliance/regulated-adoption.md`** gains the axis it was missing. It was written on the shape of a SaaS questionnaire; the axis that decides for a tool that renders a verdict — **whether the verdict is right** — was absent from all 82 lines. New section 8 works the tool-confidence analysis through for medical device, automotive, rail and airborne software, **adverse case first**, and asserts no level and no class for runward in any scheme.
- Its footer no longer claims every verifiable claim on the page is enforced in CI. That was a reassuring count over a set the author chose.
- One published falsehood corrected: `GATE_NON_SCOPE` is **not** printed in every compliance pack. It appears only in the ISO/IEC 42001 draft — and the pack it is missing from is the one that goes to a high-risk provider.

## Guards that had a broken perimeter

Four instances in one week, the recurring defect of this repository:

- **The reproducible-build job had never once compared two tarballs** — `npm pack --pack-destination` does not create the directory, so it exited ENOENT on its own output path. The claim it guards is true; the guard never reached the comparison.
- **The overclaim guard** saw neither `TQL`, nor `TCL2/3`, nor the rail classes. Widened *before* the section that produces that risk was written.
- **`CITATION.cff` was pinned at 0.21.0** for eleven releases.
- `docs/compliance/eu-ai-act.md` contradicted itself two lines apart on the high-risk binding date.

## Also

- `test/audit-corpus.js` — the adversarial campaign behind ADR-0045 becomes a corpus anyone can replay against the real CLI.
- `regimes/eu-ai-act@2026-1744.json` — the expired sheet had missed an amending regulation. The dated-facts watch now detects that the **text** moved instead of waiting for a date we guessed.
- Unit suite **209 → 342**. Whole-project line coverage 74.90 → 79.70 %.

**Full changelog**: https://github.com/stranxik/runward/blob/main/CHANGELOG.md

