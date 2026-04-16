---
title: agent-hooks
date: 2026-04-16 22:12:34 +00:00
tags:
  - pm990320
  - GitHub Actions
draft: false
repo: https://github.com/pm990320/agent-hooks
marketplace: https://github.com/marketplace/actions/agent-hooks
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pm990320/agent-hooks** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-hooks) to find the latest changes.

## Action Summary

The `agent-hooks` GitHub Action simplifies and automates development workflows by providing a unified command (`agent-hooks ci`) for running CI pipelines, pre-commit hooks, and agent feedback loops across different environments, including GitHub Actions, local machines, and coding agents. It eliminates the need for multiple tools and configurations, offers instant feedback on code edits, and manages its own lightweight git hook installation. This action is designed to save time, improve consistency, and streamline development processes through a single, standalone binary with extensive stack detection and configuration capabilities.

## What's Changed

## 0.1.0 (2026-04-15)


### Features

* add CLAUDE.md / AGENTS.md marker-block integration ([d179d58](https://github.com/pm990320/agent-hooks/commit/d179d586ee1bb2390833d918b6f89e1d3c21cf14))
* initial release of agent-hooks ([c24cb31](https://github.com/pm990320/agent-hooks/commit/c24cb31cd24f2176248e704445de4f99b2676a02))
* marketplace branding, rolling major tag, release process doc ([b1d8315](https://github.com/pm990320/agent-hooks/commit/b1d83152530c43e8d1d93129f6c0579d2b208904))
* release pipeline rework, commitlint, license audit, smarter install.sh ([c74f06a](https://github.com/pm990320/agent-hooks/commit/c74f06a07ba47f46a8df3ed0db34d09c66fa86c9))


### Bug Fixes

* drop stream-drain deadlock when a buffered step hits timeout-ms ([93088f3](https://github.com/pm990320/agent-hooks/commit/93088f3657cf8ed09817ca74f1ad5c69ec46680d))
* fold preview build into release-please workflow ([b79d4c5](https://github.com/pm990320/agent-hooks/commit/b79d4c5b2a846a1edcb945f9656292a8d0520e5a))
* reset process registry before each test, not just after ([f8f4244](https://github.com/pm990320/agent-hooks/commit/f8f4244a7fcf4fff090c986a4694ee506d843a11))
* stabilize integration runCli cwd + pin first release to 0.1.0 ([378effd](https://github.com/pm990320/agent-hooks/commit/378effdd8615db8155559366b0d807c26df6b75f))
