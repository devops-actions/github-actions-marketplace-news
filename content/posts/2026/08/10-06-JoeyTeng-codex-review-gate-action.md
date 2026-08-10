---
title: Codex Review Gate
date: 2026-08-10 06:13:18 +00:00
tags:
  - JoeyTeng
  - GitHub Actions
draft: false
repo: https://github.com/JoeyTeng/codex-review-gate-action
marketplace: https://github.com/marketplace/actions/codex-review-gate
version: v1.5.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The Codex Review Gate GitHub action automates a deterministic `codex/review-gate` status check that passes only when a complete and clean evidence snapshot is produced from the latest official trusted provider artifact. The action coordinates GitHub comments, reviews, reactions, and commit statuses to ensure repository maintainers can make Codex review a required branch-protection signal.
---


Version updated for **https://github.com/JoeyTeng/codex-review-gate-action** to version **v1.5.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-review-gate) to find the latest changes.

## Action Summary

The Codex Review Gate GitHub action automates a deterministic `codex/review-gate` status check that passes only when a complete and clean evidence snapshot is produced from the latest official trusted provider artifact. The action coordinates GitHub comments, reviews, reactions, and commit statuses to ensure repository maintainers can make Codex review a required branch-protection signal.

## What's Changed

# codex-review-gate-action v1.5.1

This compatibility release adds the centrally deployed reusable workflow while preserving the direct composite Action interface and the v1.4.0 decision semantics.

## Canonical GitHub.com caller after activation

```yaml
name: Codex Review Gate

on:
  pull_request_target:
    types: [opened, reopened, synchronize, ready_for_review]
  issue_comment:
    types: [created]
  pull_request_review:
    types: [submitted]
  pull_request_review_comment:
    types: [created]
  schedule:
    - cron: "0 */2 * * *"
  workflow_dispatch:
    inputs:
      pull_request:
        description: Optional pull request number to gate
        required: false
        type: string

permissions:
  contents: read
  issues: write
  pull-requests: write
  statuses: write

concurrency:
  group: codex-review-gate-${{ github.repository }}
  cancel-in-progress: false

jobs:
  codex-review-gate:
    name: codex/review-gate runner
    uses: JoeyTeng/codex-review-gate-action/.github/workflows/codex-review-gate.yml@v1
```

The floating `@v1` selector is the intentional centralised pre-execution trust boundary. Post-run admission does not trust that selector alone. It binds `W` across the exact-attempt `referenced_workflows[].sha`, receipt `producer.job.workflow_sha`, and receipt `producer.action.ref`. It binds `C` across the full-SHA-pinned checkout step's official `commit` output, receipt `producer.action.commit_sha`, provenance `action.commit_oid`, and `tags.v1.peeled_commit_oid`.

Exactly one closed resolution branch is admitted:

- current live shape: `W == T == tags.v1.tag_object_oid`, and signed annotated tag `T` peels directly to `C`;
- future exact-commit shape: `W == C == action.commit_oid`, while independently signed `T` still peels directly to `C`.

Other object types, nested tags, and zero or multiple candidate matches fail closed. Historical runs use the exact attempt's recorded `W`; consumers never substitute the current `v1` ref.

## Immutable identities

- Source release commit: `e9a4a79866518ba07e9b0bf9df68dffdb02bfeef`
- Action release commit: `59eeda2af2a7baab3f3f15a59fbbaee015fa6c01`
- Source `packages/action` tree and Action release root tree: `8d909dd441b28b6915c46f60e8a144e64fd5268b`
- Released-tree NUL-manifest SHA-256: `be4e780d1cf3b6874d246d2c4edd1451f7ca10442781dd99f8d37385d229dd46`
- Provenance asset SHA-256: `db00a0b88be3cbff8956e6082544c418d7878f6b2a6405a0773af4eea5004fc8`

Immutable reusable audit pin:

```yaml
jobs:
  codex-review-gate:
    uses: JoeyTeng/codex-review-gate-action/.github/workflows/codex-review-gate.yml@59eeda2af2a7baab3f3f15a59fbbaee015fa6c01
```

Direct composite and GitHub Enterprise Server compatibility pin:

```yaml
- uses: JoeyTeng/codex-review-gate-action@59eeda2af2a7baab3f3f15a59fbbaee015fa6c01
```

## Protocol compatibility and receipt boundary

- Producer protocol major: `1`
- Producer receipt schema: `urn:joeyteng:codex-review-gate:producer-receipt:1`, version `1`
- Decision policy major: `1`
- Decision policy version: `1.4.0`
- First admitted reusable release: `1.5.1`; the immutable v1.5.0 provenance contract is fail-closed and has no digest erratum.

Reusable and direct GitHub.com runs expose `producer-receipt-artifact-id`, `producer-receipt-artifact-url`, and `producer-receipt-artifact-digest`. These values and the receipt provide causal-consistency and integrity evidence under a trusted caller workflow/job graph and the fixed GitHub-hosted runner; they are not a job-scoped cryptographic execution attestation. The run-level `referenced_workflows` array does not bind an entry to a specific job, status, or artifact, and a malicious same-run sibling remains outside that attribution boundary.

The reusable workflow checks out only `job.workflow_repository` at `job.workflow_sha`, to a fixed private path, and then runs the local composite from that release tree. It never checks out or executes caller or pull-request code. All external Actions are full-SHA pinned.

Moving `v1` does not activate this caller in the canonical source repository or its template. Activation remains a separate post-release change, gated on immutable-release verification and a successful live reusable-workflow canary.

