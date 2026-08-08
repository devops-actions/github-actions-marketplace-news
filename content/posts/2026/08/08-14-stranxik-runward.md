---
title: runward gate
date: 2026-08-08 14:24:14 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.33.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:** Runward is an open-source method for verifying engineering decisions in AI-generated code. It automates the verification process of architectural, security, and operational aspects by creating a deterministic gate that checks the integrity of the delivered software. The action simplifies the setup and execution of the verification process with a single command.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.33.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Summary:** Runward is an open-source method for verifying engineering decisions in AI-generated code. It automates the verification process of architectural, security, and operational aspects by creating a deterministic gate that checks the integrity of the delivered software. The action simplifies the setup and execution of the verification process with a single command.

## What's Changed

**A false green, in the release published the same day.** One `rm` on a file the audited party owns, and a corpus of 64 rule files reduced to the word `ok` crossed the gate.

```
64 rule files reduced to "ok", scaffold-lock.json present  ->  exit 1
64 rule files reduced to "ok", scaffold-lock.json deleted  ->  exit 0
```

Reproduced against `runward@0.33.0` installed from npm, not against a working tree.

## What was open

`corpusDivergence` answers `unrecorded` when a mission keeps its own rule copy and carries no `scaffold-lock.json`. That is a compatibility path for missions predating the lock, and it printed a warning while contributing **nothing** to the verdict.

The lock lives in the audited repository. So *"this mission predates the lock"* and *"someone deleted the lock"* are the same observation, and the second costs one command. **[ADR-0045](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0045-the-gate-cannot-be-satisfied-by-paperwork.md) class 1 reopens by deleting a file instead of re-signing it** — and the known-defects register called that class closed.

It is also the aggravating form ADR-0045 names, one storey up: the gate said it could not check, in prose, next to a green exit code. **Where the gate cannot verify, it says so in the run, and the run is the exit code.**

## The fix, and what it leaves alone

`unrecorded` is a named line of the verdict from this release.

| Case | 0.33.0 | 0.33.1 |
|---|---|---|
| fabricated corpus + lock deleted | **0** | 1, with a named reason |
| shipped example, intact | 0 | 0 |
| no local rule copy (`package`) | 0 | 0 |
| runward's own mission | 0 | 0 |

A legacy mission is one `runward update` away, and the safest configuration — no local copy at all — was never the one punished.

## Guarded twice, and one guard had to be repaired

`test/unit/verdict.test.js` pins both directions and kills two mutants. `test/audit-corpus.js` replays it end to end — and **the first draft of that replay was decorative**: it renamed the rule files, so every manifest row cited a slug that no longer existed and the mission reddened on conformance, which made the case pass with the fix removed. It guts the bodies in place now: green with the fix, exit 0 without it.

## How it was found, which belongs in the record

Not by re-running the audit method ADR-0045 says to re-run on any release touching these modules. By an investigation into an unrelated product question, where an analyst asked to build the cheapest mission that would earn a hypothetical attestation built it. **A reevaluation trigger is only as good as whoever remembers to pull it.**

ADR-0045 gains an amendment stating that class 1 was not closed, rather than leaving a ratified decision claiming a closure that did not hold. The register gains RWD-2026-0021 and corrects the RWD-2026-0001 entry.

## Also

- The SBOM round-trip guard shipped with `workflow_dispatch` only, which was the defect it exists to prevent: a guard someone has to remember is a guard that does not run. It fires on any pull request touching `release.yml`.
- `chalk` 6.0.0, verified with colours forced since the suite redirects to files and emits no escape sequence at all: six outputs on 5.6.2 and 6.0.0, **byte-identical**.
- Dependency advisories closed (`js-yaml` 5.2.3, `fast-uri` 3.1.5). `npm audit` reports 0.

**Full changelog**: https://github.com/stranxik/runward/blob/main/CHANGELOG.md

