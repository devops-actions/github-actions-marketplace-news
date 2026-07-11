---
title: Harnessie Verify
date: 2026-07-11 22:19:35 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/harnessie-verify-action
marketplace: https://github.com/marketplace/actions/harnessie-verify
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/snapsynapse/harnessie-verify-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harnessie-verify) to find the latest changes.

## What's Changed

First release. Adopted via a recorded, human-arbitrated decision: [AIDR-0007](https://github.com/snapsynapse/harnessie/blob/main/decisions/AIDR-0007-ship-harnessie-verify-as-a-github-action.md).

Treat a pull request's description as claims, not evidence. This action runs your deterministic checks sandboxed (exit codes only), then a fresh-context verifier model that never sees the author's narrative tests each remaining claim against the actual artifacts, and the job's exit code gates the merge.

## What ships in 0.1.0

- Fail-closed exit contract: 0 verified, 1 failed, 2 cannot-verify, and cannot-verify fails the job by default because unverified is not passed (relaxable to advisory with `fail-on-cannot-verify: false`)
- `criteria: auto` derives claims verbatim from the PR body, provenance-stamped, with deliberately no extraction intelligence: an action that authors the claims it grades is self-dealing
- PR diff staged into the workspace so change-surface claims ("docs-only", "additive") are checkable
- Bring your own verifier model: any OpenAI-compatible endpoint, including one on your own infrastructure, so untrusted diffs never leave machines you control
- `pull_request_target` refused at runtime; the README documents the safe trigger pattern
- OS sandbox inherited from the harness (bubblewrap, firejail, or docker on Linux runners; fail-closed when none is admitted)
- Structured claim table to the job summary; model prose confined to the uploaded report artifact
- Offline CI matrix proving the exit-code mapping with a mock provider

## Provenance

The tool behind this action refuted a claim in its own author's PR on its first real run; the description was corrected and only then did it verify. Pinned to harnessie 0.7.1 ([PyPI](https://pypi.org/project/harnessie/)). Docs: https://harnessie.com/

A VERIFIED run requires your live verifier endpoint; see the README quickstart (one workflow file, under five minutes).
