---
title: Aptu Triage
date: 2026-03-30 06:16:14 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.20
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.20**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to automate issue management and code review tasks for open-source projects. It leverages task-specific AI models to provide precise pull request analysis, issue triage with labels and comments, release note generation, and security scanning, thereby improving efficiency and accuracy in software development workflows. With support for multiple AI providers and output formats, Aptu integrates seamlessly into GitHub Actions and local workflows.

## What's Changed

## What's Changed

### Features

- **Triage:** Add automatic complexity assessment to every triage (#993)
- **CLI:** Add `pr create` command and `agent run` skeleton (#994)
- **Review:** Best-in-class GitHub PR review comments with inline posting (#996)
- **CLI:** Print inline comments in dry-run + verbose mode (#999)
- **Models:** v0.3 CLI polish - filter, formatting, registry, docs, and action fix (#1004)
- **Core:** Enrich model registry with capabilities and pricing (#1006)

### Bug Fixes

- **Action:** Guard against null issue labels on PR events (#1005)
- **Action:** Expose `fallback-provider` and `fallback-model` as action inputs (#1008)
- **Action:** Make fallback config provider-agnostic and idempotent (#1009)
- **CI:** Always run CI on `pull_request` to unblock docs-only PRs (#1003)

### Refactoring

- Rust workspace hygiene sweep (#1000)

### CI & Infrastructure

- Simplify and accelerate GitHub Actions workflows (#995)
- Add in-repo `AGENTS.md` for AI coding agent context (#1001)
- Rename `repo-standards.md` to `REPO-STANDARDS.md` (#1002)

### Docs

- Add governance, roadmap, and assurance docs for OpenSSF silver badge (#1007)

### Chores

- Refresh stale model IDs to current versions (#1011)

**Full changelog:** https://github.com/clouatre-labs/aptu/compare/v0.2.19...v0.2.20
