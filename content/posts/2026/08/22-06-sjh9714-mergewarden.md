---
title: MergeWarden for AI PRs
date: 2026-08-22 06:10:12 +00:00
tags:
  - sjh9714
  - GitHub Actions
draft: false
repo: https://github.com/sjh9714/mergewarden
marketplace: https://github.com/marketplace/actions/mergewarden-for-ai-prs
version: v0.10.4
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  MergeWarden is a GitHub Action that helps maintainers quickly identify and address common issues in pull requests by checking missing issue links, thin descriptions, skipped templates, and oversized changes. It surfaces these problems before code review, ensuring pull requests are well-prepared for review. MergeWarden uses public metadata and the base branch pull request template to provide context without fetching or executing any code. The detailed PR risk scan checks security boundaries like workflow permissions, agent instructions, untrusted prompt inputs, and install scripts.
---


Version updated for **https://github.com/sjh9714/mergewarden** to version **v0.10.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergewarden-for-ai-prs) to find the latest changes.

## Action Summary

MergeWarden is a GitHub Action that helps maintainers quickly identify and address common issues in pull requests by checking missing issue links, thin descriptions, skipped templates, and oversized changes. It surfaces these problems before code review, ensuring pull requests are well-prepared for review. MergeWarden uses public metadata and the base branch pull request template to provide context without fetching or executing any code. The detailed PR risk scan checks security boundaries like workflow permissions, agent instructions, untrusted prompt inputs, and install scripts.

## What's Changed

`mergewarden demo` now starts with one quiet `CLAUDE.md` instruction change and one `agent-control-plane/drift` finding.

The previous demo packed workflow, dependency, contract, and triage findings into one first run. The GitHub and npm READMEs now put the focused local demo before installation and queue scanning.

```bash
npx --yes mergewarden@0.10.4 demo
```

The analysis needs no GitHub token or target repository and makes no GitHub API call.

