---
title: skill-publish
date: 2026-02-27 05:53:14 +00:00
tags:
  - hashgraph-online
  - GitHub Actions
draft: false
repo: https://github.com/hashgraph-online/skill-publish
marketplace: https://github.com/marketplace/actions/skill-publish
version: v1.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/hashgraph-online/skill-publish** to version **v1.2**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-publish) to find the latest changes.

## Action Summary

The `skill-publish` GitHub Action automates the process of publishing immutable, on-chain skill releases to Hedera's Consensus Service (HCS). It ensures trustless and reproducible distribution of skill packages by validating, quoting, publishing, and emitting canonical references (`hcs://...`) that are tamper-evident and audit-friendly. This action solves problems related to version pinning, reproducible retrieval, and traceable audit trails for skill releases, making the publish process deterministic and CI-integrated.

## Release notes

Marketplace-focused release with stronger positioning and better workflow ergonomics.

Highlights:
- Rewrote README for Marketplace conversion: quick start first, value proposition, inputs/outputs tables, security/perms, troubleshooting.
- Added new action outputs: published, skip-reason, credits, estimated-cost-hbar.
- Updated action metadata description for clearer Marketplace indexing.

This release keeps the publish path idempotent and improves downstream workflow control.
