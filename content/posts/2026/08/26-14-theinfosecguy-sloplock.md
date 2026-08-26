---
title: SlopLock
date: 2026-08-26 14:56:30 +00:00
tags:
  - theinfosecguy
  - GitHub Actions
draft: false
repo: https://github.com/theinfosecguy/sloplock
marketplace: https://github.com/marketplace/actions/sloplock
version: v2.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  SlopLock is an automated security tool that helps prevent the installation of AI-generated or malicious dependencies by checking their existence, age, and trustworthiness across multiple public registries. It solves the problem of identifying and blocking new, potentially harmful packages before they can be installed on developer machines or merged into pull requests. The action checks each dependency name for existence and age, providing a summary report with annotations and job summaries for easy tracking and management.
---


Version updated for **https://github.com/theinfosecguy/sloplock** to version **v2.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sloplock) to find the latest changes.

## Action Summary

SlopLock is an automated security tool that helps prevent the installation of AI-generated or malicious dependencies by checking their existence, age, and trustworthiness across multiple public registries. It solves the problem of identifying and blocking new, potentially harmful packages before they can be installed on developer machines or merged into pull requests. The action checks each dependency name for existence and age, providing a summary report with annotations and job summaries for easy tracking and management.

## What's Changed

# SlopLock v2.2.0

This minor release adds direct public-registry package checks and an installable
agent skill for checking dependency names before they are added to a project.

## Direct Package Checks

- Adds `sloplock check <ecosystem> <name...>` for checking package names without
  a repository checkout.
- Supports npm, PyPI, crates.io, Go modules, RubyGems.org, Packagist,
  NuGet.org, and Maven Central.
- Accepts text or JSON output, the existing cooldown and suppression config,
  configurable failure thresholds, and fail-closed registry handling.
- Ignores common trailing version specifiers while preserving normalized package
  names, including scoped npm packages and Maven coordinates.
- Uses the existing scan exit-code contract so the command works in scripts and
  automated dependency-installation loops.

## Agent Skill

- Adds `skills/sloplock/SKILL.md` for installation with
  `npx skills add theinfosecguy/sloplock`.
- Explains when dependency names should be checked and how to handle missing,
  too-new, private, or temporarily unavailable packages.
- Recommends a checkout scan after manifest edits so direct checks do not replace
  repository-wide dependency review.

## CLI And Packaging

- Adds dedicated help for the `check` and `hook` subcommands.
- Adds deterministic text and JSON reporting for direct checks.
- Extends the packed-package smoke test to verify the new command and its exit
  status from a clean installation.

Existing Action installations can continue using `theinfosecguy/sloplock@v2`.
The moving `v2` tag will be updated to this release.

