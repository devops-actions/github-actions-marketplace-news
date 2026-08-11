---
title: runward gate
date: 2026-08-11 14:25:21 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.33.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward automates AI-assisted software engineering by verifying that the engineering decisions behind AI-written code were followed deterministically. It provides a way to check whether the architecture, where things run, how it's secured, and how it's handed over were correctly handled after the code ships. The action scaffolds a filled reference mission and ends by running the strict gate itself, ensuring the load-bearing decisions were actually made and written down.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.33.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward automates AI-assisted software engineering by verifying that the engineering decisions behind AI-written code were followed deterministically. It provides a way to check whether the architecture, where things run, how it's secured, and how it's handed over were correctly handled after the code ships. The action scaffolds a filled reference mission and ends by running the strict gate itself, ensuring the load-bearing decisions were actually made and written down.

## What's Changed

**No verdict changes.** The release path now carries its own proof, two claims that were true became enforced, and the gate's requirements are stated one at a time with the test that exercises each.

## The release carried no proof

Until today a GitHub release carried the SBOM and **nothing else** — not the tarball, not a single attestation:

```
v0.33.2: runward-sbom.cdx.json
v0.33.1: runward-sbom.cdx.json
v0.33.0: runward-sbom.cdx.json
```

The provenance existed — `npm audit signatures` returns it, and deps.dev shows Google verifying it independently — but it lived on the **npm registry**, and a GitHub release is where most people look.

So OpenSSF Scorecard read the release assets and answered, verbatim:

> `Signed-Releases: 0` — *Project has not signed or included provenance with any releases.*

**The project's own public scorecard contradicted its strongest claim**, across at least three releases.

The real bundle now goes up under the `.intoto.jsonl` name the ecosystem reads, with the tarball beside it: an attestation whose subject the reader cannot fetch from the same place proves nothing they can act on. `test -s "$BUNDLE"` reds the release rather than shipping a silent gap.

**This release is the first proof that the path works.** It could not be tested any other way.

## Two lines the compliance sheet could only assert

**`npm audit --audit-level=high` on every pull request.** There was no such job — `grep -rn "npm audit" .github/workflows/` returned nothing, and a HIGH advisory sat green and unmerged while a release was cut. Scoped to high and above on purpose: a floor at `low` reds on advisories nobody would act on, and a guard that cries on the safe case gets switched off.

**A coverage floor.** The `coverage` script existed and nothing called it. A **ratchet, not a target**: 78 against a measured 80.41, moved only by a deliberate commit. ADR-0046 refuses a threshold on the *mutation* score for reasons that do not transfer — a mutation score is a property of the tests, whereas line coverage is recomputed from scratch on every run.

## Tool operational requirements

**51 requirements** over the verdict surface, each citing a test file and a case name inside it. The substance was already in `runward/contracts/port-contract.md` — in prose, with **zero identifiers**. Prose cannot be checked off: an assessor asks *which requirement, verified where*.

Each entry states what a green **leaves open**, per requirement. TOR-028 is the one to read first: a tampered seal reddens the gate, and the same entry says the seal establishes nothing about **when** it was written, because `sealedAt` is the mission's word.

It is **not a qualification kit**, and says so in its own opening: a vendor kit's documents are produced under a quality system a third party has assessed, and these are produced by one maintainer with no external assessment of any kind. Its traceability guard checks that a citation **resolves**, never that the cited test is **relevant**. Section 10 names what carries no requirement at all.

## Why runward issues no attestation about your application

The answer is **no**, in any form, and the reason is measured rather than principled: the machine contract cannot distinguish a substantial mission from one carrying no project code, the corpus belongs to the audited party, the seal date is the mission's word, and issuer, subject and verifier would be the same party.

What can be published instead is a **replayable record, by the operator, in their own repository** — with the admission that on a private repository the only level that checks content is unavailable to an outside reader, which is the commonest case.

## Test suite

**428 → 435**, and 98 mutants that survived the entire net now die. Re-measured before instructing: the derived figure was 199, the measured one **179**, because twenty had been killed by tests that never aimed at them. 81 survivors remain, filed as a register rather than a backlog.

**Full changelog**: https://github.com/stranxik/runward/blob/main/CHANGELOG.md

