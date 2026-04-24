---
title: Fallow - Codebase Intelligence
date: 2026-04-24 05:57:16 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.48.0
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.48.0**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript that identifies unused code, duplication, complexity, and architecture issues, helping developers optimize and maintain their codebases. It automates tasks like detecting dead code, analyzing code health, and assessing duplication without requiring configuration or a Node.js runtime. Additionally, it offers optional runtime intelligence for understanding code execution in production, enabling faster reviews of AI-generated changes and improved code quality.

## What's Changed

The `fallow` agent skill now ships inside the npm package, so `npm install fallow` places the skill on disk next to the binary. Claude Code, Codex, and other agents that discover skills on disk pick it up without any extra configuration — no separate `fallow-skills` clone needed.

### Added

- **Agent skill bundled with the npm package.** The `skills/fallow/` content (SKILL.md plus the `cli-reference`, `gotchas`, and `patterns` references) is published alongside the CLI wrapper. This removes version drift between the installed binary and the skill an agent reads from a separately-cloned `fallow-skills` checkout, and it cuts the manual clone step from the onboarding path. The same content remains available from the `fallow-skills` repo for users who prefer plugin-style installs, and a CI lane verifies the bundled skill stays in sync with the source of truth on every PR. Closes [#173](https://github.com/fallow-rs/fallow/issues/173). Thanks [@OmerGronich](https://github.com/OmerGronich) for the proposal.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.47.1...v2.48.0

