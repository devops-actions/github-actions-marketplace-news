---
title: PRML Verify
date: 2026-05-31 22:15:29 +00:00
tags:
  - studio-11-co
  - GitHub Actions
draft: false
repo: https://github.com/studio-11-co/prml-verify-action
marketplace: https://github.com/marketplace/actions/prml-verify
version: v2.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/studio-11-co/prml-verify-action** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prml-verify) to find the latest changes.

## Action Summary

The **PRML Verify GitHub Action** automates the verification of Pre-Registered Machine Learning (PRML) manifests in CI workflows to ensure the integrity and reproducibility of ML evaluation claims. It detects tampering, regression of evaluation metrics below predefined thresholds, and missing locked manifests, preventing merges in such cases. This action enhances transparency and accountability in ML workflows by providing tamper-evident hash receipts for evaluation claims and optional public registry anchoring.

## What's Changed

Default `falsify-version` bumped 0.3.0 -> 0.3.1, so `@v2` installs the PRML CLI with the integer-threshold canonicalization fix by default. README version/vector-count refresh. No input/output changes.
