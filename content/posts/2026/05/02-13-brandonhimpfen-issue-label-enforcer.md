---
title: Issue Label Enforcer
date: 2026-05-02 13:40:51 +00:00
tags:
  - brandonhimpfen
  - GitHub Actions
draft: false
repo: https://github.com/brandonhimpfen/issue-label-enforcer
marketplace: https://github.com/marketplace/actions/issue-label-enforcer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/brandonhimpfen/issue-label-enforcer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/issue-label-enforcer) to find the latest changes.

## Action Summary

The **Issue Label Enforcer** GitHub Action ensures that newly opened or edited issues have a minimum number of labels before proceeding, helping maintain consistent issue triage processes. It automates the validation of issue labeling, failing workflows if the label requirement is not met and optionally displaying a custom failure message. Key capabilities include setting a minimum label threshold, ignoring pull requests, and enforcing labeling during various issue events.

## What's Changed

Initial release of Issue Label Enforcer.

This GitHub Action ensures that all newly created or updated issues include at least one label. If no labels are present, the action fails, helping teams enforce consistent issue categorization and workflow standards.

Features:
- Validates that issues contain at least one label
- Fails workflows when label requirements are not met
- Lightweight and dependency-free (precompiled dist included)
- Works on issue creation and updates

Use cases:
- Enforce triage standards
- Maintain organized issue tracking
- Support automated workflows and reporting

This is the first stable release (v1.0.0).
