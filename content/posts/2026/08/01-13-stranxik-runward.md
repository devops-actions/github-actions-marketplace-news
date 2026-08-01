---
title: runward gate
date: 2026-08-01 13:55:01 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.30.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward verifies engineering decisions behind AI-written code**, ensuring that load-bearing decisions are followed during software development. This tool helps in automating the verification process by providing deterministic checks on architectural, security, and operational aspects of the system after deployment.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.30.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward verifies engineering decisions behind AI-written code**, ensuring that load-bearing decisions are followed during software development. This tool helps in automating the verification process by providing deterministic checks on architectural, security, and operational aspects of the system after deployment.

## What's Changed

An **internal-validity pass**: instead of adding surface, mutate the source and see whether the tests notice. 42 valid mutations, 36 killed or type-caught, **6 survivors — three of them real holes**. Everything here was found by measurement, not by reading.

## The one shipped behaviour change

**`AGENTS.md` now carries the gesture its own obligation needs.** It already told the agent to *"confront them at the point of action, not from memory"* — and then named only `runward explain <rule>`, which reads a rule whose **name you already know**. It never said how to find out **which** rules govern the file being touched. The obligation had no instrument, so it could not be executed.

`runward rules --for <paths>` is now in the same sentence, with the honesty clause that must travel with it: rules declaring no territory are counted, never matched.

This is **not** an extension of [ADR-0042](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0042-craft-rule-confrontation-is-continuous-not-a-gate-crossing-ritual.md), which deliberately kept the confrontation step out of the non-building workflows. `AGENTS.md` is not a workflow: it is the contract handed to the agent **every session**, and it already carried the obligation.

> `runward update` does not refresh `AGENTS.md`, and is right not to — it is a mission deliverable ([ADR-0010](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0010-agents-md-as-a-first-class-handover-deliverable.md)), not shipped method. **Existing missions do not receive this; new ones do.** An existing mission that wants it copies the sentence.

## Holes the mutation bench found

| Hole | Why it mattered |
|---|---|
| `resolveFile` traversal guard | the path **every `applied` row goes through**. `verifyEvidenceLock` had its traversal test; pointer resolution did not |
| `findMissionRoot` climb | the one behaviour that makes `runward check` usable from anywhere inside a repo, which is how it is actually run |
| `*` crossing a path separator | a declared territory silently **wider** than declared — rules surfacing on files they do not govern |
| a block comment eating its line | drops whatever follows `/*` on the same line of a `wrangler.jsonc` |

## When NOT to seal, measured

Sealing this repository would seal 25 files, and **25 of 25 changed within 30 days**. A committed lock here would turn `check --strict` red on the first commit after every seal, making `--freeze` a per-commit ritual and the red meaningless.

The opt-in was right. The boundary was written nowhere — and an operator in a regulated setting is exactly the one who would seal everything on principle, then meet a permanently red gate without understanding why. **Seal what has stopped moving**: a handover, a release, a version entering operation. ([ADR-0021 amendment](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0021-blocking-drift-and-evidence-sealing.md))

## Honest bounds

Three survivors were **not** holes, and they are named as such rather than papered over with contrived fixtures. **107 candidate mutations were not tried** — the bench is bounded per file. This is a sample, not a proof of coverage.

165 unit tests, self-gate green.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

