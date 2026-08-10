---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-10 14:23:20 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.14.159
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is an open-source CLI orchestration tool that leverages deterministic multi-agent scheduling in Python. It automates tasks by scheduling them through plain Python and ensures reproducibility end to end, with each task running in its own git worktree behind lint, type, and test gates. Artifact-mode tasks provide a plain working directory for completion on a signed lineage receipt instead of committing changes. The tool supports various coding agents and includes features like always-on lineage spines, replay journals, and an opt-in HMAC-chained audit log with receipts that can be verified offline. It is suitable for production environments and is under active development.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.14.159**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is an open-source CLI orchestration tool that leverages deterministic multi-agent scheduling in Python. It automates tasks by scheduling them through plain Python and ensures reproducibility end to end, with each task running in its own git worktree behind lint, type, and test gates. Artifact-mode tasks provide a plain working directory for completion on a signed lineage receipt instead of committing changes. The tool supports various coding agents and includes features like always-on lineage spines, replay journals, and an opt-in HMAC-chained audit log with receipts that can be verified offline. It is suitable for production environments and is under active development.

## What's Changed

The minor landed on 14, so the version is π to three digits. If this release ever needs a patch, we'll append digits — 3.14.1592 — the way TeX does. That's the only whimsical thing in here.

This is the release where the surface stopped pretending. A first-use report (#3514) described ninety minutes of setup that ended in nothing: an error message recommending a flag that doesn't exist, a run that produced no plan and said nothing, and a command list too large to hold in one head. Most of what shipped since v3.13.0 answers some part of that, directly or by removing the class of defect behind it. The README now also says plainly what this is: a beta maintained by one person — pin the version for anything you depend on, file regressions, they get fixed fast.

## Read before upgrading

- **Five commands are gone, no deprecation window** (#3472): `postmortem` → `bernstein report postmortem`, `incident` → `bernstein report incident`, `commit-stats` → `bernstein report commits`, and the `consensus` and `issue-to-pr` groups are removed outright. Everything else that moved (`quickstart`, `init-wizard`, `validate`, `routine`, benchmark subcommands, impact analysis, `changelog`/`run-changelog` swap, `listen`) kept aliases that print a deprecation notice for the documented window.
- **Plan loading rejects what it used to swallow** (#3534, #3539). Out-of-range enums, a scalar where `files` expects a list, a non-integer `priority`, an explicit `null` — these used to load as defaults, which is how a run could start, produce no plan, and say nothing. They now raise `PlanLoadError` with the field named. Two tolerances remain and are tracked: `dry-run --plan` still converts a load error into an empty exit-0 result (#3550), and both verifiers still skip malformed journal rows instead of failing (#3549).
- **`evolution_enabled: false` now disables the evolution loop** (#3397). It previously did not, which is the kind of sentence a config option should never need written about it.
- **Verification absences downgrade instead of passing** — unparseable attestation key (#3494), missing identity signal (#3429), symlinked receipt store (#3414), and `telemetry verify-span` exit codes now match `trace verify-projection` for these cases (#3407). One divergence is still open: removed audit evidence exits 0 on `verify-projection` but 1 on `verify-span` (#3551).

## Worth knowing

- The reference docs are now **CI-gated against the registered CLI** (#3511, #3536) — twenty-three commands were documenting flags the parser rejected; that defect class is closed, not groomed.
- The no-adapter error names a flag that exists (#3530), and a test resolves every command in that message against the live CLI so it can't drift back.
- **A signed run receipt that verifies fully offline** (#3387), and `bernstein audit diagnose` (#3388), which names the first faulty step instead of leaving you to bisect.
- New surfaces: **Muse Code adapter** (#3542), Kimchi CLI with ACP ingress conformance (#3509), a generic adapter for Python-library runtimes (#3510), a Playwright browser driver behind a conformance kit (#3508), **Agent Plugins v1.0.0 manifests** validated in CI against vendored schemas (#3541), and a read-only datasource query driver (#3386).
- The demo produces real completion evidence instead of mock theater (#3432), and the front page shows a recorded real run that ships its own proof (#3438).
- Floor-raising: two mypy backlogs cleared, coverage ratcheted to 83.25%, every TypeScript package under the typecheck gate, the secret scanner pinned to an exact release.

Every behaviour change, with the exact windows and replacements, is spelled out in the [full release notes](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/release-notes/v3.14.159.md).

Thanks to @Silentpartnercoding, @Louis20060723, @bymyforge, @AmirF194, @essentialols, @PyaaZz and @Maqbool61 for landing work in this cycle — the beta line in the README is an invitation.

**Full changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.13.0...v3.14.159

