---
title: gh-prompt-scan
date: 2026-06-13 22:13:13 +00:00
tags:
  - panther-0707
  - GitHub Actions
draft: false
repo: https://github.com/panther-0707/gh-prompt-scan-action
marketplace: https://github.com/marketplace/actions/gh-prompt-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/panther-0707/gh-prompt-scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gh-prompt-scan) to find the latest changes.

## What's Changed

Initial release of gh-prompt-scan Action.

Detects prompt injection vulnerabilities (TV4, TV5, TV6, TV7) in 
AI-integrated GitHub Actions workflows based on the Heimdallr 
research paper (arXiv:2605.05969).

TV4 - Attacker data directly in shell commands
TV5 - Attacker data through AI into shell commands
TV6 - Attacker-controlled workspace fed to AI
TV7 - AI steps triggerable by anyone
