---
title: create-agent-room Validate
date: 2026-07-30 14:38:01 +00:00
tags:
  - sipandey
  - GitHub Actions
draft: false
repo: https://github.com/sipandey/create-agent-room
marketplace: https://github.com/marketplace/actions/create-agent-room-validate
version: v2.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the enforcement of agent governance rules across multiple layers including while the agent is working with shared code and cursor stop hooks, during commits using a pre-commit hook, in CI builds through validation and lint sessions, and after upgrades via compliance evaluations. It uses evidence-lite checks for decision logging or waivers in turn logs to prevent failures and provides detailed documentation on its enforcement model.
---


Version updated for **https://github.com/sipandey/create-agent-room** to version **v2.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-agent-room-validate) to find the latest changes.

## Action Summary

This GitHub Action automates the enforcement of agent governance rules across multiple layers including while the agent is working with shared code and cursor stop hooks, during commits using a pre-commit hook, in CI builds through validation and lint sessions, and after upgrades via compliance evaluations. It uses evidence-lite checks for decision logging or waivers in turn logs to prevent failures and provides detailed documentation on its enforcement model.

## What's Changed

## Added
- `eval` command — packaged compliance regression scenarios (close-the-loop, lint-sessions, validate) with `--format text|json|csv` export

## Changed
- README and init messaging recommend `npm install -g` over `npx`
- `docs/enforcement-model.md` — enforcement timeline for adopters; README mermaid diagram
- ROADMAP explicitly rejects golden-task / behavioral agent evals

Full changelog: https://github.com/sipandey/create-agent-room/blob/v2.3.0/CHANGELOG.md
