---
title: Plimsoll agent release review
date: 2026-06-09 06:58:50 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/plimsoll-action
marketplace: https://github.com/marketplace/actions/plimsoll-agent-release-review
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Rul1an/plimsoll-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plimsoll-agent-release-review) to find the latest changes.

## What's Changed

SARIF now emits the coverage result for `inconclusive_observation_gap` (matching the gate, so the Security tab and the PR gate agree). `plimsoll capture` reports `network_protocol_coverage: connect_only` when it observed connect events, so its own surfaces are not read as an unobserved network layer. The `v1` ref points here.
