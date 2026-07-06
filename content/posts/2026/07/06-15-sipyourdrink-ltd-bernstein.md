---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-06 15:23:32 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.16.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.16.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## What's Changed

# v2.16.1

Released 2026-07-06.

## Fixes

- Windows: adapter binaries installed as `.cmd`/`.bat` shims (for example Codex via nvm-windows) now spawn correctly. The worker resolves the adapter binary to its absolute path before spawning and routes resolved shims through the command interpreter on Windows, and `PATHEXT` is passed through the worker environment. Real executables and all POSIX spawns are unchanged. (#2287, #2290; thanks @ViteaVlaikov for the report and diagnostics)

