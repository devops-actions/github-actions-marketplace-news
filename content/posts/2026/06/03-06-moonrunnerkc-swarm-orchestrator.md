---
title: Falsifying Swarm Orchestrator
date: 2026-06-03 06:52:49 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v11.1.0-advisory
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v11.1.0-advisory**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## What's Changed

Auditor release covering the v11 cycle: a defect-injection oracle that measures cheat-detection recall against ground truth, the judge running as a primary detector for cheats with no structural tell, and an opt-in execution-grounded layer that runs the change instead of only reading it. Findings stay advisory by default; nothing blocks a merge unless you opt into gate mode.

## Measured results

- **Oracle recall: 253/300 (84%) planted cheats caught**, up 20.5% from the pre-upgrade baseline of 210/300, across twelve categories. Pre/post A/B in `benchmarks/results/AB-REPORT.md`; per-detector table in `benchmarks/oracle-corpus/per-detector-recall.md`. Reproduce with `npm run benchmarks:full`.
- **Two real merged Cloudflare cheats reproduce offline and are invisible to Semgrep and the ESLint security rules:** [#14063](https://github.com/cloudflare/workers-sdk/pull/14063) (fake refactor: a function renamed but two callers still call the old name) and [#14132](https://github.com/cloudflare/workers-sdk/pull/14132) (error swallow: a bare empty `catch` hides every error in the block). Reproduce with `swarm audit --diff-file benchmarks/real-prs/diffs/cloudflare-workers-sdk/<pr>.diff`. Full cross-repo study in `benchmarks/real-prs/v11-BENEFIT-REPORT.md`.
- **Low noise on unbiased PRs:** 0.11 false-alarm findings per PR on an 18-PR pilot, at or below the pre-upgrade auditor, with the recall gain intact (`benchmarks/real-prs/REAL-WORLD-REPORT.md`).

## 11.1.0 — execution-grounded checks

An opt-in, advisory-only layer (`executionGrounded.enabled: true`) provisions a sandboxed checkout of a PR and runs it, with three checks scoped to the changed lines:

- **Diff-scoped mutation testing** (Stryker): a surviving mutation on a changed line is a line the tests run past without constraining.
- **Issue-linked repro execution**: a repro from a closed issue that still fails means the fix did not deliver.
- **Coverage delta** (Istanbul): a changed line no test executes.

Verified end to end on [trpc/trpc#6098](https://github.com/trpc/trpc/pull/6098): of the mutants on changed lines, 8 covered survivors fall on the exact lines the later hotfix [trpc/trpc#6140](https://github.com/trpc/trpc/pull/6140) changed, a signal no diff-only tool in this repo can emit. Corpus headline M=1, R=0, U=1, F_clean=3.357. Needs no LLM and no external cost; runs under a Node 22 toolchain. Full evaluation in `benchmarks/real-prs/v11-EXECUTION-GROUNDED-REPORT.md` (`npm run execution-grounded:full`).

New ledger kinds: `pr-audit-mutation-finding`, `pr-audit-issue-repro-finding`, `pr-audit-coverage-finding`. Dev-only deps (`@stryker-mutator/core` + runner adapters); no new runtime dependencies.

## 11.0.0 — defect-injection oracle and a judge-primary path

- **Defect-injection oracle** (`src/audit/oracle/`): splices one labeled cheat into a presumed-clean real PR, so recall is measured against ground truth. `npm run oracle:build` writes the corpus byte-identically; every injection carries a sha256-pinned label.
- **Judge as a primary detector** (`judge-primary.ts`): raises a finding for the two semantic categories (`goal-not-fixed`, `cheat-mock-mutation`) that no regex or AST detector keys on, lifting them from 0/50 to 20/50. Advisory by default, opt-out via `judgePrimary.enabled: false`.
- **Chunking, not truncation** (`diff-chunker.ts`): oversized diffs are split into hunk-grouped chunks so a tail defect reaches the judge, and into per-hunk chunks so a verdict localizes to a (file, hunk-index) id.
- **Eleventh detector**: `type-suppression` (a `@ts-ignore` / `eslint-disable` added over a changed line) ships in the default set, bringing the default set to eight and the full set to eleven.

## Honest scope

The structural detectors over-flag normal PRs at scale, which is why findings ship advisory and nothing blocks by default. No detector has yet cleared the 0.90-precision gate to block on its own, and the 205-PR real-corpus baseline is AI-labeled with a "pending human review" stamp on every entry: human re-labeling is the next milestone. Use this as a cheat and under-constraint signal, not a general bug finder. See the README's "Limitations and what's next" and `benchmarks/real-prs/REDUNDANCY-FINDING.md`.

## Install

```bash
git clone https://github.com/moonrunnerkc/swarm-orchestrator.git
cd swarm-orchestrator
npm install
npm run build
npm link
swarm --help
```

Node 20 or later (the execution-grounded layer wants Node 22). Full notes in `CHANGELOG.md`.

