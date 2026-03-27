---
title: Totem Shield
date: 2026-03-27 13:57:00 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.5.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.5.8**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action and CLI tool that creates a persistent, model-agnostic memory layer for AI coding agents to enforce architectural rules and coding standards across projects. It automates the enforcement of these rules through deterministic CI guardrails, ensuring consistency in output regardless of the AI agent used, while operating without requiring live API or network access. Additionally, Totem enables shared knowledge across repositories, allowing teams to propagate architectural decisions and rules throughout their entire codebase ecosystem.

## Release notes

### Patch Changes

-   Shield hardening, rule unit testing, and bug bundle
    -   Rule unit testing: `**Example Hit:**`/`**Example Miss:**` in lesson markdown verified at compile time
    -   Shield context enrichment: full file content for small changed files reduces LLM false positives
    -   Shield `--override <reason>`: audited bypass for false positives, logged to trap ledger
    -   safeExec: forced pipe mode, type-safe return, removed unsafe `as string` cast
    -   gh-utils: error unwrapping matches safeExec error chain structure
    -   GH_PROMPT_DISABLED added to all direct gh invocations
    -   Hook paths resolved from git root, not cwd
    -   Hook regex tightened to match git subcommand only (not filenames)
    -   jq for JSON parsing in pre-push hook with grep/sed fallback
    -   Agent worktree scratchpads excluded from prettier
    -   Compile-after-extract ritual added to CLAUDE.md

-   Updated dependencies
    -   @mmnto/totem@1.5.8

