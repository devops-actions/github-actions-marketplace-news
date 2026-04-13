---
title: Korext Enforce
date: 2026-04-13 22:10:38 +00:00
tags:
  - Korext
  - GitHub Actions
draft: false
repo: https://github.com/Korext/enforce-action
marketplace: https://github.com/marketplace/actions/korext-enforce
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Korext/enforce-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/korext-enforce) to find the latest changes.

## Action Summary

The **Korext Enforce Action** automates the enforcement of security, compliance, and quality standards on AI-generated code within GitHub workflows. It scans the codebase using predefined policy packs, identifies violations, and generates GitHub Code Scanning annotations directly on pull request diffs. This action helps streamline code quality assurance, provides actionable insights, and ensures that critical or high-severity issues are flagged and can halt workflows if necessary.

## What's Changed

## What's New in v2.0.0

**Proof bundles.** Every scan now generates cryptographically signed compliance proof. Bundle IDs available in action outputs.

**Multi-pack enforcement.** Scan against multiple compliance frameworks in a single run.

**Signed bundles.** New sign-bundles input for HMAC signed proof artifacts.

**Data sovereignty.** New region input for regional data processing.

**71 policy packs. 532 detection rules.** Three governance layers: regulatory, CWE, MITRE ATT&CK.

## Migration from v1

Replace `uses: korext/enforce-action@v1` with `uses: korext/enforce-action@v2`

New outputs: bundle-ids, bundles-signed, bundle-count.

## Full Changelog

See README.md for complete documentation.
