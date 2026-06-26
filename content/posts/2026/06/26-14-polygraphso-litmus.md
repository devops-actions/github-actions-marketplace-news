---
title: Polygraph MCP gate
date: 2026-06-26 14:51:29 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.19.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.19.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Patch for the C-02 transfer-qualifier false positive (#61), still litmus-v10. The qualifier slot in the 'transfers <object>' pattern now accepts only a number or token-standard id ('transfers 5 tokens', 'transfers ERC-20 tokens'), not an arbitrary word, so read-only docs like 'token transfers with token metadata' / 'transfers per token' are no longer false-flagged as permission-mislabel.
