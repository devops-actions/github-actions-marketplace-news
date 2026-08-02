---
title: agents-doctor
date: 2026-08-02 21:18:57 +00:00
tags:
  - satoissei
  - GitHub Actions
draft: false
repo: https://github.com/satoissei/agents-doctor
marketplace: https://github.com/marketplace/actions/agents-doctor
version: v0.2.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks and analyzes `AGENTS.md` files in a repository to determine what gets loaded by agents. It helps identify structural problems with root-level instructions that might overshadow specific code-related instructions, especially in monorepos. The tool reports the exact load order, retained bytes, and instructions that never reach the agent, making it useful for maintenance and debugging purposes.
---


Version updated for **https://github.com/satoissei/agents-doctor** to version **v0.2.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-doctor) to find the latest changes.

## Action Summary

This GitHub Action checks and analyzes `AGENTS.md` files in a repository to determine what gets loaded by agents. It helps identify structural problems with root-level instructions that might overshadow specific code-related instructions, especially in monorepos. The tool reports the exact load order, retained bytes, and instructions that never reach the agent, making it useful for maintenance and debugging purposes.

## What's Changed

## What's Changed
* fix: harden public security boundaries by @satoissei in https://github.com/satoissei/agents-doctor/pull/6


**Full Changelog**: https://github.com/satoissei/agents-doctor/compare/v0.2.2...v0.2.3
