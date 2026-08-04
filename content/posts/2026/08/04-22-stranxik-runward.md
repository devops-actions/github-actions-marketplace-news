---
title: runward gate
date: 2026-08-04 22:19:27 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.32.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward is an open-source delivery methodology that verifies engineering decisions behind AI-generated code. It helps ensure that projects are designed, implemented, and deployed with rigor, using plain code to validate architectural and security measures. The action automates the verification of these decisions through a deterministic gate process, providing compliance evidence for ISO 42001, NIST AI RMF, and EU AI Act standards.**
---


Version updated for **https://github.com/stranxik/runward** to version **v0.32.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward is an open-source delivery methodology that verifies engineering decisions behind AI-generated code. It helps ensure that projects are designed, implemented, and deployed with rigor, using plain code to validate architectural and security measures. The action automates the verification of these decisions through a deterministic gate process, providing compliance evidence for ISO 42001, NIST AI RMF, and EU AI Act standards.**

## What's Changed

**The largest correctness release this project has had.** Five adversarial audits, every case *executed* against the shipped binary rather than reasoned about.

Three asked *"how do I get a false green"*. Two asked the opposite: *"where does the gate cry on a mission that is telling the truth"*. Both halves were needed — **of the nine hardening classes written in the morning, four cried on the honest case.**

## The gate could be satisfied by paperwork

`check --strict` exited 0 on missions containing **no evidence at all**. The cheapest cost **2 726 bytes of arbitrary text and zero lines of project code**, with the seal applied and the ISO 42001 pack assembled on top.

The aggravating form: **the emptiest missions produced the most reassuring output.** Citing each rule's own file printed `36 of 36 typed pointers the gate opened and checked (100%)`. Answering `n/a` to all 36 rules removed the only vacuity signal, because that counter printed only when `applied > 0`.

Closed: the corpus is checked against the **installed package** rather than a lock the audited party can re-sign; circular evidence is refused (`file:<manifest>#<slug>` was a universal green key, the slug being column 1 of every row); a 0-byte ADR, the scaffolded template, a rejected or unratified decision no longer satisfy a deviation; containment actually runs on the real path, so a symlink to `/etc/hosts` no longer turns the seal into a file-read oracle; the seal covers the claim and not only the files it cites; the counter is unconditional and counts only pointers the gate could open; the grammar is read before anything rewrites it; and a catastrophic signature can no longer hang the gate in CI.

## The gate refused honest missions

A **Windows checkout** made all 64 rules read as empty and the gate announced *"the mapping may have been stripped"* — git doing its documented job accused the operator. **npm/pnpm workspaces** broke under the containment hardening, a regression introduced by the first half of this same release. An **unreadable file** was a crash rather than a verdict, and `--json` stopped being JSON. The gate **punished precision**: a path outside the project passed as prose and failed as a typed pointer. A **documentary rule** could not be proven at all. **House rules** made a normal team's mission red. And `file:SRC/Guard.TS` went green on macOS while failing on Linux CI.

All closed, each verified by re-running the case that produced the wrong verdict.

## What this changes for you

**Missions that were green may go red** — a hand-edited rule, a deviation resting on an unratified ADR, a circular pointer. Those verdicts were about something other than what they claimed.

**Missions that were red may go green** — every Windows checkout, every workspace.

Nothing changes in the exit-code contract, the machine surface, or the six phases. And none of this makes the gate judge whether evidence *implements* a rule: `GATE_NON_SCOPE` is unchanged and remains the honest statement of depth.

[ADR-0045](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0045-the-gate-cannot-be-satisfied-by-paperwork.md) records the nine classes, what stays declared, the alternatives refused, and the one class deliberately **not** done with the measurement that made it near-redundant.

**196 unit tests.** runward's own mission and the shipped example green throughout.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

