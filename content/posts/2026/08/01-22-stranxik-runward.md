---
title: runward gate
date: 2026-08-01 22:18:12 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.31.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward is an open-source delivery methodology that automates the verification of engineering decisions behind AI-generated code through a deterministic gate process. It helps ensure that the architecture, security, and compliance are thoroughly checked before deployment, providing a clear path from development to production.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.31.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward is an open-source delivery methodology that automates the verification of engineering decisions behind AI-generated code through a deterministic gate process. It helps ensure that the architecture, security, and compliance are thoroughly checked before deployment, providing a clear path from development to production.

## What's Changed

An adversarial fact-check on [the v0.30.0 article](https://runward.dev/news/2026-08-01-six-tests-that-could-not-fail/) re-tested every claim it made. **Two of the three mutations that article published as harmless were live defects**, and the figure it corrected was itself wrong.

## Two mutations that were not equivalent

**Bracket balance in the TOML reader.** A `#` two characters past an opening quote was taken for a comment, the line truncated, an inline array lost its closing bracket, and the balance loop swallowed the rest of the file. The `#` need not sit on a line runward reads:

```toml
[vars]
DOC_LINKS = ["https://acme.dev/docs#install"]

[triggers]
crons = ["0 3 * * *"]
```

That array, in a table runward never consults, destroyed the `[triggers]` below it. A HIGH rule silently stopped surfacing. The published reasoning argued line by line about an automaton that carries state **across** lines.

**Derivation notes.** The binding-source check could mean *"no other manifest produced anything"* instead of *"this one produced nothing"*: a false note beside a cron just derived from that same file, a real absence silenced, and a note naming **the wrong manifest**. No exit code moved, which is why it was first filed as "an informational message". Evidence that points at the wrong file, in a product whose thesis is *no step without proof*, is not classified by its output channel.

## A published figure was wrong

The site said the gate can require **27** of 64 craft rules. It is **31**. The catalog computed it from a hand-written literal missing `handover`, a gated phase, dropping four rules, one of them CRITICAL.

Worse: the article claimed the figure was *"computed from the machine contract, so it can no longer drift"*. The set of gated phases was restated by hand, and had **already** drifted. The correction of an overclaim reproduced the failure mode it claimed to remove.

`rules --json` now publishes **`gatedPhases`**, read from `GATED_DELIVERABLES`. Additive field per [ADR-0024](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0024-machine-surface-of-the-rule-set.md).

## The survivor that really is equivalent

`mission.ts`'s line filter is equivalent across 3267 comparisons, but **by accident**: only while every shipped template ends with a newline. Strip one and a deliverable flips `in-progress` to `filled`, opening a phase. A test now pins that invariant and deliberately does **not** kill the mutation. Guarding the reason beats guarding the symptom.

## Every guard proven able to fail

Each mutation reddens its own test and only it. Removing a template's trailing newline reddens the invariant guard. Reintroducing the old literal verbatim reddens the contract guard.

169 unit tests, self-gate green.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

