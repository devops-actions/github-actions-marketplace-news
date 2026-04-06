---
title: Zalor Agent Test
date: 2026-04-06 21:41:50 +00:00
tags:
  - ZalorAI
  - GitHub Actions
draft: false
repo: https://github.com/ZalorAI/zalor-agent-test
marketplace: https://github.com/marketplace/actions/zalor-agent-test
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ZalorAI/zalor-agent-test** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zalor-agent-test) to find the latest changes.

## Action Summary

This GitHub Action automatically tests AI agents against a dataset during pull requests to ensure reliability and performance before deployment. It evaluates the agent's results against a baseline (from the last merged run), provides a score delta as feedback via PR comments, and updates the baseline upon PR merges. By using GitHub OIDC for authentication, it eliminates the need for storing secrets and streamlines the testing and quality assurance process for AI agents.

## What's Changed

 Release notes:
  ## Zalor Agent Test v1.0.0

Zalor Agent Test GitHub Action.

  ### Features
  - Run your AI agent against Zalor datasets on every pull request
  - Zero secrets required - uses GitHub OIDC for authentication
  - Automatic PR comments with pass rate and baseline comparison
  - Baseline promotion on merge to main
