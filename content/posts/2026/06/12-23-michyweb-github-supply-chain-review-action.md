---
title: Supply Chain Review
date: 2026-06-12 23:00:31 +00:00
tags:
  - michyweb
  - GitHub Actions
draft: false
repo: https://github.com/michyweb/github-supply-chain-review-action
marketplace: https://github.com/marketplace/actions/supply-chain-review
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/michyweb/github-supply-chain-review-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-review) to find the latest changes.

## What's Changed

# v1.0.0

Initial public release of **Supply Chain Review**.

Supply Chain Review is a GitHub Action designed to help detect risky repository changes associated with emerging **Human-in-the-Loop Supply Chain Attacks**, where attackers abuse trust relationships and automated tools rather than exploiting traditional software vulnerabilities.

## Features

* Built-in rules for common supply chain attack surfaces.
* Support for repository-specific custom rules.
* Rule merging and full rule replacement modes.
* Support for disabling built-in rules.
* Detection of suspicious changes in:

  * GitHub workflows
  * npm lifecycle scripts
  * `binding.gyp`
  * Dev Containers
  * VS Code workspace configuration
  * AI agent instruction files
  * MCP configurations

## Why this Action exists

Recent campaigns such as **Miasma** have demonstrated that the attack surface extends beyond source code and includes any file capable of influencing developers or automated tools.

This Action helps teams identify modifications to those sensitive areas and enforce manual review when necessary.

## Recommended hardening

To further protect the protection mechanisms themselves, it is recommended to:

* enable branch protection;
* require reviews from CODEOWNERS;
* protect workflow files and rule definitions;
* use immutable releases and required status checks.

## Status

This is the first stable Marketplace release.

Feedback, ideas and additional rules are welcome.

