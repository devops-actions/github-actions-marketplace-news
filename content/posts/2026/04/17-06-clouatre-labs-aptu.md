---
title: Aptu Triage
date: 2026-04-17 06:33:46 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered command-line tool designed to automate and enhance open-source software issue triage and pull request analysis. It leverages compact, efficient AI prompts to provide features such as issue summarization, label suggestions, contributor guidance, and PR review with actionable feedback. By automating these tasks, Aptu reduces costs, increases efficiency, and provides precise, customizable outputs across multiple formats, making it a valuable utility for streamlining open-source project workflows.

## What's Changed

## What's Changed

### Features
- **PR:** Add `--diff` flag for patch-based branch-and-PR workflow (#1130)
- **Action:** Add `deep`/`since` inputs, schedule triage, remove release step (#1136)

### Removed
- **Core:** Remove `release` subcommand and release notes feature (#1129)

### Refactor
- **Patch:** Remove unused `dry_run` param from `apply_patch_and_push` (#1135)

### Chores
- Standardise SPDX copyright to Aptu Contributors (#1133)
- Update `code-analyze-core` to 0.5.0, lock file maintenance (#1137)

### Docs
- Remove `allow(missing_docs)`, add integration tests, update docs (#1132)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.3.2...v0.4.0
