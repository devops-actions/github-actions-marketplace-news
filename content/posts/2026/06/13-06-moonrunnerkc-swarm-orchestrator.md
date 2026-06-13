---
title: Falsifying Swarm Orchestrator
date: 2026-06-13 06:46:05 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v12.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v12.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## What's Changed


### The proof tier: six execution-grounded restoration proofs

The headline is the proof tier. A structural detector flags (advisory, never
blocks); a proof gates only when its per-instance controls are all green and
ships the exact command that reproduces it in a fresh checkout. Eight triggers
qualify to gate: six execution-grounded restoration proofs (`test-tamper`,
`mock-mutation`, `no-op-fix`, `type-suppression`, `fake-refactor`, and the new
`dead-branch`) plus `claim-falsified` and `obligation-failure`. No structural
detector gates: every one is `advisory-only` in
[`promotions.json`](benchmarks/real-corpus/promotions.json).

What is provable today is the eight gate triggers above. What stays advisory is
every structural detector (the best, error-swallow, is PR-level precision 0.40
against outcome labels, far under the 0.90 Wilson bar) and the corroborated
promotion tier (no detector's runtime-corroborated subset has cleared the bar
because the viable slice carries no outcome-bad PRs). Details in
[`docs/limitations.md`](docs/limitations.md).

#### Added

- **`dead-branch-proven`, the sixth restoration proof.** The structural
  dead-branch-insertion detector flags an inserted `if` whose condition is a
  literal that can never be true; the proof instruments the inserted branch in
  the provisioned workspace and runs the affected-test closure. A positive
  control before the `if` records that the condition was evaluated; a probe
  inside the body records whether the body ran. Proven dead only when the
  control fired and the body never did; a body that runs refutes and demotes.
  Fail-closed on an unreached control, an ambiguous branch, an empty or capped
  closure, or a failed instrumentation. The injected probe is path-baked
  CommonJS, so a pure-ESM module that cannot `require` records nothing and lands
  on `not-proven:control-not-reached` rather than a false proof. Wired the full
  vertical (block trigger, ledger kind `pr-audit-dead-branch-restoration`,
  report table, `runProofRestorations` seam, the `dead-branch-unreached` runtime
  corroboration signal, self-certifying tier) with a pure core test, a gate
  test, a live-mocha confirm/refute e2e, and a seam-wiring case. `block-eligible`
  is now 8 ([`block-eligibility.json`](benchmarks/real-corpus/block-eligibility.json)).
- **Measured proven-finding gate precision, an honest n=0.** The six-engine
  proof tier ran across the execution-grounded-viable slice of the
  outcome-labeled corpus (`npm run gate-precision`): it provisioned and ran 11
  of the 12 viable PRs (one repo's `npm install` fails deterministically,
  recorded as a failure), every one of which history shows survived, and fired
  zero proven block triggers. So precision is n=0: no false positives on clean
  PRs, with an empty denominator because the slice carries no genuine cheats.
  Artifact and per-PR records in
  [`gate-precision.json`](benchmarks/real-corpus/gate-precision.json) and
  [`GATE-PRECISION-REPORT.md`](benchmarks/real-corpus/GATE-PRECISION-REPORT.md).
- **Two now-live automated paths that grow the denominator.** The nightly
  backward-mine cron ([`backward-mine.yml`](.github/workflows/backward-mine.yml),
  04:00 UTC) mines outcome-bad agent commits the forward sample misses; its
  first full-budget run scanned 110 revert markers over 18 months and confirmed
  0 (recorded in
  [`confirmed-bad-backward.json`](benchmarks/real-prs/agent-corpus/confirmed-bad-backward.json)).
  The EG-viable measurement dispatch
  ([`eg-viable-measure.yml`](.github/workflows/eg-viable-measure.yml)) ran the
  full 12-repo matrix: 11/12 measured, 1 non-viable, 0 corroborated findings
  ([`eg-viable-corroborated.json`](benchmarks/real-corpus/eg-viable-corroborated.json)).

#### Changed

- **`promotions.json` corroborated tier reads measured, not pending.** After the
  12-repo dispatch completed, `compute-promotions` folds the aggregated
  `eg-viable-corroborated.json`, so the corroborated reason records the completed
  run (11/12 measured, 1 non-viable, 0 corroborated findings) instead of
  pending-dispatch. The tier stays `viability-screened` and nothing gates: the
  Wilson 0.90 floor and minimum-TP bar are unchanged and the slice is
  outcome-clean.
- **The backward-mine workflow uploads its corpus instead of pushing to
  protected `main`.** A direct push from `github-actions[bot]` is rejected by
  branch protection, so the nightly run now uploads the grown corpus as an
  artifact for a maintainer to review (spot-checking each entry against its
  evidence SHAs) and fold, the same review-then-fold contract
  `eg-viable-measure.yml` uses.


