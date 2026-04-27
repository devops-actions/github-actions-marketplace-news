---
title: ai-admissibility-action
date: 2026-04-27 06:36:33 +00:00
tags:
  - pinfloyd
  - GitHub Actions
draft: false
repo: https://github.com/pinfloyd/ai-admissibility-action
marketplace: https://github.com/marketplace/actions/ai-admissibility-action
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pinfloyd/ai-admissibility-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-admissibility-action) to find the latest changes.

## Action Summary

The `ai-admissibility-action` GitHub Action serves as an external admission gate for workflows, verifying key authorization inputs such as `authority-url`, `authority-pubkey`, `policy-id`, and `trust-verdict`. It automates the process of preflight validations and ensures that workflows fail securely (fail-closed) if trust criteria are not met, providing a synthetic evaluation path for testing purposes without requiring production access. This action is designed for users to test AI admissibility workflows via a pilot Proof Access mechanism before integrating with full runtime authority.

## What's Changed

# AI Admissibility Action v0.1.1
Initial Marketplace release of AI Admissibility Action.

AI Admissibility Action is a fail-closed GitHub Action for AI and automation workflows. It validates authority context, blocks placeholder setup, supports a Proof Access pilot, and keeps execution stopped unless the required admission path is valid.

## What it does

- Validates required authority inputs.
- Rejects placeholder configuration.
- Provides a Proof Access pilot workflow.
- Demonstrates fail-closed behavior when authority integration is not wired.
- Links the action, technical brief, and verified pilot PASS run into one public proof path.

## Public proof

- Technical brief: https://ai-admissibility.com/technical-brief/
- Proof Access: https://ai-admissibility.com/#get-proof-access
- Verified pilot PASS run: https://github.com/pinfloyd/ai-admissibility-action/actions/runs/24959798826

## Non-claims

The current public pilot is synthetic evaluation only. It is not production access, not paid tier access, not private deployment, and not a customer no-bypass guarantee.
