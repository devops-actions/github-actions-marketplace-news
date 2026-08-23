---
title: Agent Vigil
date: 2026-08-23 05:48:31 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.12.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil is a tool that automates code change verification by checking an exact code change against task, policy, tests, and recorded tool actions behind it. It returns PASS, FAIL, or INCONCLUSIVE based on the presence of evidence before merging. The verifier runs locally or in GitHub runners without using another model to judge work.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil is a tool that automates code change verification by checking an exact code change against task, policy, tests, and recorded tool actions behind it. It returns PASS, FAIL, or INCONCLUSIVE based on the presence of evidence before merging. The verifier runs locally or in GitHub runners without using another model to judge work.

## What's Changed

Agent Vigil v0.12.0 removes the ceremonial human-review checkbox from the default maintainer gate and replaces it with repeatable evidence.

### Automated review

- `reviewMode: "automated"` runs commands selected by policy from the pull request base commit.
- Commands run in a detached checkout of the exact candidate SHA.
- A nonzero exit, timeout, `HEAD` movement, or tracked-file mutation blocks approval.
- New maintainer installations no longer ask anyone to claim they reviewed or understand every line.
- `reviewMode: "human"` remains available for organizations whose own governance requires named declarations.

### Signed receipts

- Optional GitHub/Sigstore attestations bind the receipt file, PASS/FAIL/INCONCLUSIVE decision, base and head commits, Git tree, policy digest, verifier version, and evidence counts.
- `vigil verify-attestation` verifies the GitHub signature and the signed receipt fields.
- `vigil notary` prepares a fail-closed check result for a future GitHub App.

### Public release gate

- `npm run review:public` now checks first-screen clarity, action labels, public count consistency, links, accessibility labels, reading measure, and recurring template defaults.
- Agent Vigil itself passed the new automated review with 7/7 isolated commands and no human-attestation rules in PR #33.

See `RELEASE-EVIDENCE.txt` and `SHA256SUMS` for the exact commit and executed proof. Automated evidence is not a claim of human understanding, external adoption, customers, or revenue.

