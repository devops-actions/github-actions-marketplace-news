---
title: runward gate
date: 2026-08-21 21:55:19 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.36.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward is an open-source delivery methodology that verifies engineering decisions behind AI-written code by ensuring they are followed through plain code. It automates the process of checking whether the architecture, where things run, how it's secured, and how it's handed over were correctly made and written down. The action provides a deterministic gate that ensures the decisions are verified and determined, not replaced with an LLM's suggestion.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.36.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward is an open-source delivery methodology that verifies engineering decisions behind AI-written code by ensuring they are followed through plain code. It automates the process of checking whether the architecture, where things run, how it's secured, and how it's handed over were correctly made and written down. The action provides a deterministic gate that ensures the decisions are verified and determined, not replaced with an LLM's suggestion.

## What's Changed

**Three false greens in the evidence layer, found by instructing the mutants that survive runward's own test net — and the instrument that found them, which was measuring the machine instead of the code.**

### The false greens

None of these needed a mutant to reach. They were exposed by building a mission that would actually exercise each function, which is what instructing a survivor requires ([ADR-0046](docs/adr/ADR-0046-mutation-testing-is-an-instrument-not-a-gate.md) decision 3).

- **A code fence hid the manifest from the circular-evidence check** (RWD-2026-0025). `textOutsideManifest` removes the conformance table before looking for a self-cited symbol, because column 1 of every row is the rule's own slug and would always match. It took the **first** matching heading, fenced or not, so an example of the format pasted above the real table left the real table inside the text being searched. That is RWD-2026-0002, the universal green key, reopened by a code fence — and `readManifest` had already fixed this exact shape for row parsing. Measured: the same self-citing row exits **1** without the illustration and **0** with it.
- **One invisible character swallowed a typed pointer** (RWD-2026-0026). The pointer pattern ends in `$`, and `.` never matches a line terminator in JavaScript, so a single CR, U+2028 or U+2029 after the prefix made `$` unreachable: the pointer was dropped **in silence**, the row still read as typed, and the cited file was never opened. A paste leaves such characters behind and nobody can see them. Measured on a row citing a file that does not exist: exit **1** with an ordinary cell, exit **0** with a U+2028 in it. Terminators are now folded to a space before parsing, which cannot change a well-formed cell since a space is already a pointer separator.
- **An absent seal said nothing at all** (RWD-2026-0027). The output could not distinguish "never sealed" from "seal deleted": tamper with a sealed evidence file and the gate exits 1, delete `runward/evidence-lock.json` and the same tampered tree exits 0, silently. The strict run now names the regime it is in. The **verdict** is deliberately unchanged, and RWD-2026-0028 records why in a new `known-defects.md` section for constraints that cannot be closed inside the repository: sealing is opt-in, and an in-repository marker declaring "this mission seals" buys nothing against anyone deliberate while costing honest teams a red gate — the reasoning `scaffold-lock.ts` already carries about the corpus lock.

### The instrument, and why its own numbers had to be thrown away

- **The mutation harness is committed** — configuration, resumable passes, the probe, and a survivor register generated from measured verdicts. The ratchet of ADR-0046 decision 2 had existed since 2026-08-05 with **no list to be diffed against**, so "the survivor list does not grow" could not be falsified. That is the shape ADR-0045 refuses from an operator.
- **The raw numbers were fiction.** The harness bounded children with `spawnSync`'s timeout, which signals the direct child only, while `node --test` isolates each test file in its own process — every expired run left about a dozen grandchildren alive, still executing their mutant. Measured: load average **78 on 8 cores**, 32 orphans surviving the driver, and at one point two copies of the verifier racing each other. Stryker counts a `Timeout` as *detected*, so starved survivors vanished into the detected column and the score went **up**: the same module read **98.1 %** contaminated and **77.4 %** clean, with 199 of 269 "timeouts" turning out to be survivors.
- **The instrument now refuses to measure what it cannot measure**: process groups killed whole, hangs reported rather than inferred from an exit code, a lock against a second concurrent copy, the mutant read back from disk before any verdict is taken, and a mutant list bound to the sha256 of the build it was measured on — three fixes moved one function by 47 lines, and a replay would otherwise have spliced into other code with full confidence.
- **[`docs/compliance/mutation-register.md`](docs/compliance/mutation-register.md)** files all 215 survivors of `evidence` as **144 holes, 42 equivalents and 29 display-only**, each carrying what was run and observed rather than what was reasoned, every equivalence argued, guarded on every commit by a test that never runs Stryker.

Nothing here changes the gate's contract: no threshold, no score is a crossing condition, and CI does not run the pass.

