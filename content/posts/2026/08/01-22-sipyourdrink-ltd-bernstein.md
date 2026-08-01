---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-01 22:20:32 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.13.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic orchestrator for CLI coding agents that uses plain Python scheduling to ensure reproducibility. It automates the orchestration of tasks, ensuring checkable results after execution through lineage and replay capabilities. Each task runs in its own git worktree with isolated mutable state, providing an audit chain and receipts for verifying offline.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.13.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic orchestrator for CLI coding agents that uses plain Python scheduling to ensure reproducibility. It automates the orchestration of tasks, ensuring checkable results after execution through lineage and replay capabilities. Each task runs in its own git worktree with isolated mutable state, providing an audit chain and receipts for verifying offline.

## What's Changed

A reliability release, and mostly one defect repeated across the release
machinery: a step that could not run reported as a step that passed. The npm
wrapper had been failing inside a green job since 2.3.0; Homebrew, the SBOMs
and the container image never ran at all for a release cut by automation; and
the drift detector meant to catch any of that closed its own tickets over
registries it had failed to read. All four are fixed, the RPM channel is wired
up, and the reconciler now refuses to return a verdict for a channel it could
not probe.

Full details for every item: [docs/release-notes/v3.13.0.md](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/release-notes/v3.13.0.md).

## Behaviour changes

- **A delegation chain with no recorded scope is now unproven rather than
  valid** (#3306). Grading is a separate three-state verdict on `ChainResult`;
  `bernstein delegation verify` exits 1 on fail, 3 on unproven, 0 on pass. A
  script that treated exit 0 as proof of narrowing now sees 3 where it was
  previously told nothing was wrong. No receipt schema changed.
- **A failed npm wrapper publish now fails its job** (#3322). Nothing depends
  on `publish-npm`, so the failure surfaces without holding back PyPI or the
  GitHub Release.
- **`reconcile-release` fails when it could not read a channel** (#3345), and
  its auto-close of drift issues requires every channel verified, not merely
  no drift observed.

## Release machinery

- Releases created by automation now dispatch their downstream consumers
  explicitly — container image, Homebrew tap, SBOM attachment — instead of
  relying on an event that a `GITHUB_TOKEN`-created release never raises
  (#3323, #3345).
- The SBOM workflow distinguishes a missing release from an API failure;
  only the former is skippable (#3345).
- RPM builds publish to Copr from the same tag trigger as every other channel,
  and a submission failure fails the job (#3325).
- The coverage-ratchet guard no longer parses an API error body as a baseline
  after the ratchet branch is auto-deleted (#3347).

## Merge gate

- Every pull-request head now receives a `review-bot-ack` verdict: the
  publisher election is deterministic, a cancelled gate run is re-dispatched
  once instead of standing down silently, and the publisher's superseded runs
  no longer pile up in the Actions history (#3313, #3331).

## Command-line defects

Six defects found by reading the code rather than waiting for reports:

- `doctor --json` lost its entire payload when one tool probe timed out
  (#3330); undo audit logging resolved through a module alias mypy could not
  see (#3308); the worker heartbeat busy-looped on re-registration failure
  (#3309); `agents match` crashed on any catalog hit (#3310); prompts over
  8191 characters could not spawn through a Windows `.cmd` shim (#3311); and
  `stop --force` left the watchdog process alive (#3312).
- Three typed-interface mismatches in the task lifecycle produced dead-letter
  paths that lost incident data (#3315, #3316, #3317).

## Documentation and changelog surfaces

- The changelog surfaces stop contradicting each other: `CHANGELOG.md` and
  `docs/CHANGELOG.md` are pointer documents, stranded entries moved to
  `docs/release-notes/unreleased.md`, and `bernstein changelog` serves the
  page for the installed version (#3343).
- The release flow is documented as it works; configuration files nothing
  read are removed (#3340, #3344). Deleted command surfaces are swept out of
  the docs, and two claims the code could not back are corrected (#3342).

## Contributors

- @aeoess designed and implemented delegation-chain grading (#3306): the
  closed verifier reason set, fail-dominant composition over the existing
  narrowing algebra, the `scope_ref` cross-check, and the third state for a
  chain that records no scope.

