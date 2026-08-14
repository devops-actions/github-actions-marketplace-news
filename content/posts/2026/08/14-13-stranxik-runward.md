---
title: runward gate
date: 2026-08-14 13:41:19 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.34.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward automates the verification of engineering decisions behind AI-generated code. It ensures that every critical architectural decision is written down and checked deterministically, preventing potential errors in production. The action helps teams to ensure that they have a clear chain of evidence for their software systems.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.34.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward automates the verification of engineering decisions behind AI-generated code. It ensures that every critical architectural decision is written down and checked deterministically, preventing potential errors in production. The action helps teams to ensure that they have a clear chain of evidence for their software systems.

## What's Changed

**Three decisions from the 2026-08-12 product review land: the construction gate becomes usable in CI, and the gate is made as strong as its headline. This release deliberately reddens some previously green missions — the migration note below names exactly which, and the one-line fix for each.**

### `runward check --through <phase-id>` — the construction gate ([ADR-0053](docs/adr/ADR-0053-the-construction-gate-certifies-a-declared-horizon.md))

A required `check --strict` exits 1 for the whole build, because later-phase deliverables are unfilled by definition — so it was unusable in CI during construction, and teams hacked a partial-green with `jq` or `|| true`. `--through <phase-id>` certifies a declared PREFIX: every phase up to and including `<phase-id>` is crossed on evidence, nothing past it. It narrows only the phase counters; the 0/1/2 exit contract, the seal and the six phases are untouched, and the phase-global integrity checks (corpus, seal, unratified ADRs, drift) are NOT scoped, so a regression at or below the horizon still reds — the horizon is a floor, not a ceiling. It refuses `--freeze` (a seal certifies a full crossing) and an unknown id, both exit 2; it prints a loud "not a completion verdict" banner and carries additive JSON (`through`, `horizon`, `gaps.deferred`). The wiring contract is in the ADR: the release / merge-to-main gate stays the full `check --strict`; `--through` is a construction progress signal, never the sole required release check.

### The gate is made as strong as its headline ([ADR-0051](docs/adr/ADR-0051-the-gate-is-made-as-strong-as-its-headline.md))

- **Symbols match at an identifier boundary.** `#guardFields` no longer matches a file that contains only `guardFieldsLegacy`. A renamed identifier — the exact "moved or renamed" case the violation message names — now reds instead of silently passing, and a seal can no longer sit on a pointer whose identifier no longer exists. Non-identifier symbols (dotted, quoted) keep their exact-substring semantics.
- **Five more rules carry an evidence signature** (6 of 64, up from 1): `resilience-retry-backoff`, `resilience-multi-provider-fallback`, `security-mcp-server-pinning`, `security-code-execution-sandbox`, `security-tool-change-reapproval` — each a conventional idiom the rule text prescribes, each with a `nonScope` stating what a match does NOT prove. Rules whose idiom is illustrative rather than a code token stay unsigned, and the refusals are named in the commit.
- **The run names the signed share of the verdict**: "N of M `applied` row(s) rest on a signed rule". Counted, never gated; additive JSON (`evidence.signed`).

### Overclaim rules externalized ([ADR-0050](docs/adr/ADR-0050-the-public-claim-is-narrowed-to-the-provable-form.md) decision 2, structural part)

The forbidden-claim list moves out of the CLI test into `src/lib/claims-rules.ts`, shipped with the package, so a site-build guard can consume the same list from the pinned dependency — one source, no drift. No behaviour change; the guard's three meta-guards are intact. ADR-0050 stays proposed (its site-copy decisions need the site repo).

### Migration — this release reddens some green missions on purpose

After `runward update` refreshes a mission's rule corpus (or on the next `check --strict` for a mission that judges against the package corpus), two populations turn red. Both are the mechanism working, and each has a one-line fix:

1. **A pointer symbol that was a fragment of the real identifier.** If an `applied` row's `#SYMBOL` passed only because it is a substring of a larger identifier (e.g. `#guardFields` over `guardFieldsLegacy`), it now reads "symbol not found". **Fix:** point at the real identifier, or drop the `#SYMBOL` to keep the bare path.
2. **A prose `applied` row on one of the five newly-signed rules.** A signature makes file-backed evidence mandatory for `applied` rows, so an `applied` row that carried only prose (no `file:`/`test:` pointer whose content matches the idiom) now reds with "cited, not applied". **Fix:** point the row at evidence that carries the rule's shape, or answer `n/a` / `deviated` with a reason — a rule the mission does not implement was never meant to be `applied`.

The two reference missions (runward's own, and the shipped `request-triage` example) are strict-green under this release; every change was validated in both directions on each.
