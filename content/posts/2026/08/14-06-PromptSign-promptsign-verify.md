---
title: PromptSign Verify
date: 2026-08-14 06:10:53 +00:00
tags:
  - PromptSign
  - GitHub Actions
draft: false
repo: https://github.com/PromptSign/promptsign-verify
marketplace: https://github.com/marketplace/actions/promptsign-verify
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks that AI instruction files in a repository, including skills and agent definitions, still have valid signatures from an expected publisher. It automates the verification process to prevent changes from introducing unsigned or invalid signatures into pull requests.
---


Version updated for **https://github.com/PromptSign/promptsign-verify** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptsign-verify) to find the latest changes.

## Action Summary

This GitHub Action checks that AI instruction files in a repository, including skills and agent definitions, still have valid signatures from an expected publisher. It automates the verification process to prevent changes from introducing unsigned or invalid signatures into pull requests.

## What's Changed

Adds a `badge` input that writes a README badge SVG rendered from the run's own verification, naming
the identity it established. The file is committed in your repository. Nothing is hosted by PromptSign.

A failing run now reports "verification failed" rather than "signature invalid", since a failure can equally mean
a policy rejection or a changed pin.
