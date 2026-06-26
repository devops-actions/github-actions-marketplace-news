---
title: Polygraph MCP gate
date: 2026-06-26 07:19:12 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.19.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

C-02 probe 2.1: narrowed permission-mislabel signals (litmus-v10). The 'transfers' description pattern now requires a value object (allowing one qualifier word, so 'transfers ERC-20 tokens' still trips while 'token transfers' / 'transfer history' do not), and a bare destination address (`toAddress`) is no longer treated as value movement. Honestly read-only explorer / quote / data tools are no longer false-flagged; a genuine read-only liar (destructive name verb, strong param, or 'transfers funds' description) still fails. Ships #58.
