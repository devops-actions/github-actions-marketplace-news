---
title: Agent CLI Upgrade Canary
date: 2026-08-18 13:19:17 +00:00
tags:
  - yanjinzheng2005-gif
  - GitHub Actions
draft: false
repo: https://github.com/yanjinzheng2005-gif/agent-cli-upgrade-canary
marketplace: https://github.com/marketplace/actions/agent-cli-upgrade-canary
version: v0.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Agent CLI Upgrade Canary action tests an Agent CLI upgrade in isolation by installing baseline and candidate versions separately, using different prefixes and configurations. It verifies if the upgraded version preserves startup, config, hooks, and MCP contracts against a set of predefined static contracts. The action is designed to help identify issues before they affect the actual user installation.
---


Version updated for **https://github.com/yanjinzheng2005-gif/agent-cli-upgrade-canary** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-cli-upgrade-canary) to find the latest changes.

## Action Summary

The Agent CLI Upgrade Canary action tests an Agent CLI upgrade in isolation by installing baseline and candidate versions separately, using different prefixes and configurations. It verifies if the upgraded version preserves startup, config, hooks, and MCP contracts against a set of predefined static contracts. The action is designed to help identify issues before they affect the actual user installation.

## What's Changed

Evidence-hardening release based on three independent reviews. Adds platform/architecture metadata, canonical macOS path redaction, explicit hook/MCP collection parsing, active parent-credential inheritance failure fixtures, self-asserting good/bad receipts, stricter version matching, corrected validation timestamps and CI lineage, and fixture-specific CI artifact names.

The OpenClaw #21488 version pair was tested without expanding scope: its reported Gateway/WebSocket runtime failure remains outside the declared static contract boundary. No Gateway, model, live hook event, or MCP connection was added.

Verification:
- Final main CI: https://github.com/yanjinzheng2005-gif/agent-cli-upgrade-canary/actions/runs/32019912558
- v0.1.1 tag CI: https://github.com/yanjinzheng2005-gif/agent-cli-upgrade-canary/actions/runs/32020468809
- Validation record: https://github.com/yanjinzheng2005-gif/agent-cli-upgrade-canary/blob/v0.1.1/VALIDATION.md

Both CI runs completed Ubuntu Node 20/22/24, macOS Node 24, and Windows Node 24 successfully.
