---
title: MaintainerOps AI
date: 2026-07-05 06:20:44 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.13
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.13**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

## Summary

- Adds `maintainerops demo`, a no-key/no-token/no-fixture CLI path that prints a real offline review packet.
- Demo mode is forced offline and rejects live GitHub/model options.
- Updates README, Marketplace notes, and external feedback docs so testers can try a packet with one npm command.
- Records an API-free security diff review for the demo path.

## Verification

- `node dist/cli.js demo --format markdown`
- `node dist/cli.js demo --format json`
- `node dist/cli.js demo --model gpt-4o-mini` fails closed
- `node dist/cli.js demo --repo owner/repo` fails closed
- `npm run format:check`
- `git diff --check`
- `npm run verify`
- PR #79 checks passed
- post-merge CodeQL passed

## Safety

The demo command does not require `OPENAI_API_KEY`, `GITHUB_TOKEN`, repository access, or local fixture files. It does not modify GitHub state.
