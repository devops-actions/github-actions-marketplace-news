---
title: AIGate Git Workflow Guard
date: 2026-07-07 15:26:40 +00:00
tags:
  - LeeHueeng
  - GitHub Actions
draft: false
repo: https://github.com/LeeHueeng/aigate-ai-git-workflow-guard-cli
marketplace: https://github.com/marketplace/actions/aigate-git-workflow-guard
version: v0.1.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/LeeHueeng/aigate-ai-git-workflow-guard-cli** to version **v0.1.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aigate-git-workflow-guard) to find the latest changes.

## What's Changed

## Highlights

- Added `aigate verify-enforcement` for live GitHub/GitLab server-side enforcement verification.
- Updated doctor and project scoring to distinguish advisory, partial, and verified server-enforced AIGate gates.
- Published npm package `aigate-cli@0.1.7` with provenance through GitHub Actions.
- Published GHCR Docker image `ghcr.io/leehueeng/aigate-cli:0.1.7` and refreshed the GitHub Action display name.

## Validation

- `npm run ci`
- Release workflow dry run
- Release workflow publish
- Docker workflow publish
- `npm view aigate-cli version` -> `0.1.7`
