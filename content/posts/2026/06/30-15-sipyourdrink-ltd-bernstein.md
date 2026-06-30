---
title: Bernstein — Multi-Agent Orchestration
date: 2026-06-30 15:04:32 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.9.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.9.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## What's Changed

# v2.9.0

Released 2026-06-30.

## Features
- The GitHub Copilot CLI adapter now runs in non-interactive print mode (`copilot -p ... -s --allow-all-tools --no-ask-user`) so a scheduled run never blocks on a permission or clarifying prompt, and it maps Claude cascade tier names that reach the adapter to Copilot's `auto` router instead of passing a model id Copilot rejects. Includes adapter contract coverage and tests. (#2128)

## Security
- Bumped js-yaml in the VS Code extension lockfile to a patched release (3.15.0) to clear the merge-key quadratic-complexity DoS advisory (Dependabot #74).

## Quality
- Resolved the open refurb FURB173 finding in the worktrees unlock command (dict union operator). (#2140)

