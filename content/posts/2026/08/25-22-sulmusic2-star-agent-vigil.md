---
title: Agent Vigil
date: 2026-08-25 22:44:21 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.19.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **This GitHub Action automates the process of requiring evidence before merging changes to a repository, ensuring that only valid and signed code changes are allowed. It uses a lifecycle receipt system to verify pull requests without opening them or installing Actions, focusing on checking an exact code change against task, policy, tests, and tool actions behind it. The action supports various features such as public PR receipts, trusted base policies, semantic expansions and contractions, and proof-comment generation for deterministic pull-request comments.**
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

**This GitHub Action automates the process of requiring evidence before merging changes to a repository, ensuring that only valid and signed code changes are allowed. It uses a lifecycle receipt system to verify pull requests without opening them or installing Actions, focusing on checking an exact code change against task, policy, tests, and tool actions behind it. The action supports various features such as public PR receipts, trusted base policies, semantic expansions and contractions, and proof-comment generation for deterministic pull-request comments.**

## What's Changed

## No-workflow public PR receipts

Agent Vigil v0.19.0 adds a read-only receipt for one public GitHub pull request.

- Accepts only an uncredentialed public github.com pull-request URL.
- Pins the Agent Vigil verifier by a full immutable commit SHA.
- Optionally signs the normalized receipt with an operator-controlled Ed25519 key.
- Reports CURRENT, HOLD, EXPIRED, or REVOKED.
- Turns missing, failed, unknown, or incomplete review/check evidence into HOLD.
- Never authorizes deployment. Every receipt keeps allowsProtectedAction false.
- Retains no source, diff, prompts, transcripts, review prose, check logs, token, or GitHub response body.

The README and GitHub Pages site now expose a copyable self-serve command and a voluntary feedback form. This release does not prove outside installation, adoption, payment, or revenue.

## Verification

Download the attached tarball and checksum, verify SHA-256, then run:

    npm exec --yes --package=./sulmusic-agent-vigil-0.19.0.tgz -- vigil --version
    npm exec --yes --package=./sulmusic-agent-vigil-0.19.0.tgz -- vigil pr-receipt --help

The attached historical proof result is included as a separate release artifact. npm publication is verified independently and is not implied by this GitHub release.

