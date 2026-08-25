---
title: runward gate
date: 2026-08-25 05:55:32 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.36.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward is an open-source delivery methodology for AI-assisted software engineering that verifies the engineering decisions behind AI-written code. It automates the verification of architectural choices, deployment strategies, security measures, and other critical aspects of system design to ensure they are implemented correctly. Runward ensures that each step in the development process is documented and executable, providing a way to verify the integrity and correctness of complex systems without relying solely on AI-generated code.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.36.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward is an open-source delivery methodology for AI-assisted software engineering that verifies the engineering decisions behind AI-written code. It automates the verification of architectural choices, deployment strategies, security measures, and other critical aspects of system design to ensure they are implemented correctly. Runward ensures that each step in the development process is documented and executable, providing a way to verify the integrity and correctness of complex systems without relying solely on AI-generated code.

## What's Changed

**Two more false greens in the spelling ladder, both live since 0.32.0 and 0.34.0 — and neither reachable by reading the code. One needed a permission state nobody creates by accident; the other needed a filesystem the author does not have.**

### The false greens

- **A directory the gate could not list silently cleared the case check** (RWD-2026-0029). `onDiskSpelling` returns `null` for *"the spelling already matches"*, and its `catch` returned `null` too — so *"I could not check"* and *"it is fine"* were the same answer. Measured: `file:./src/Guard.TS` citing a file spelled `guard.ts` is refused with the directory at `0755` and **passes at `0111`**, on a filesystem where it resolves only because the filesystem is forgiving. One permission bit cleared the check for everything beneath it. An unverifiable spelling is now its own answer and a named violation — where the gate cannot verify, it says so in the run ([ADR-0045](docs/adr/ADR-0045-the-gate-cannot-be-satisfied-by-paperwork.md)).
- **On Windows, a redundant `./` defeated the check entirely** (RWD-2026-0030). There `onDiskSpelling` is already defeated by 8.3 short names (`RUNNER~1` against the long name the parent directory lists), which is why `spellingViaRealpath` exists — so it is the **only rung left**, and its failure is the whole ladder's. It compared the operator's raw cell against a canonical suffix: `.\src\Guard.TS` versus `src\guard.ts`. The comparison failed on the *prefix* rather than on the *case*, and "no difference" is what a caller reads as "correctly spelled". Measured on the windows-latest leg: `file:src/Guard.TS` refused, the same pointer written `file:./src/Guard.TS` accepted, same tree. macOS caught both forms all along, which is precisely why nothing before that leg could see it.

Both are a green on the author's machine that turns red on a case-sensitive runner — the surprise that makes people stop trusting a gate.

### The tool-adapter routing is guarded

`tool-adapters.test.js` proved each committed-tool adapter answers correctly **when called**. Nothing proved the gate *calls* it, or *acts* on the answer: 27 mutants sat on that routing and survived the unit suite and the whole net. They **move** a verdict rather than remove it — a coverage report routed to the lint branch still produces a violation, just the wrong one, and a test that only checks "something was raised" passes.

A matrix now covers 4 adapters × every state they can return, each asserting the failure **class** and never the wording, each with the mirror state that must stay silent. Plus the structural cases: the same SARIF body under three filenames routes identically ([ADR-0056](docs/adr/ADR-0056-committed-tool-artifacts-as-evidence.md) recognises shape, never extension), and an ordinary source file still reaches the symbol check. **Measured after: 73 mutants in that range, 73 killed.**

### Also

- The mutation instrument's concurrency is set from a measurement rather than from the core count: the unit suite uses **310 % CPU**, so each worker costs ~3 cores and the ceiling on 8 cores is two. Getting this wrong always errs toward flattery, because a starved run is filed as a caught mutant.
- Tests that depend on filesystem behaviour now **probe** the capability — case-insensitivity, and whether this process can be denied a directory listing — instead of inferring it from `process.platform`. A case-sensitive volume on macOS and a root container on Linux both exist.

