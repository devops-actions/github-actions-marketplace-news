---
title: Localize Pipeline
date: 2026-07-06 06:35:07 +00:00
tags:
  - bisq-network
  - GitHub Actions
draft: false
repo: https://github.com/bisq-network/localize-pipeline
marketplace: https://github.com/marketplace/actions/localize-pipeline
version: v0.1.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/bisq-network/localize-pipeline** to version **v0.1.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/localize-pipeline) to find the latest changes.

## What's Changed

Production release for the 2026-07-04 full-repo pre-merge review hardening.

Highlights:
- Docker runtime secrets replace build-layer SSH/GPG private key persistence.
- Core translation retry, ledger, validation, queue, and reporting paths are hardened.
- Quality gate, semantic review, remediation, placeholder, and validator checks are stricter.
- Config, CLI, provider, shell, Docker, and GitHub Action behavior is aligned for safer production runs.
- Parser, adapter, translation-memory, connector, bootstrap, layout, and docs edge cases are fixed.

Verification:
- venv/bin/pytest passed locally: 620 passed.
- PR checks passed for #112 through #119, including build-and-verify, CodeQL, and CodeRabbit status where available.

Human action required:
- Rotate the SSH deploy key and GPG bot key used by production deployments. The old keys were present in previously built image layers before the Phase 1 fix.
