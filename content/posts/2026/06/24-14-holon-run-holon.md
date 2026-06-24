---
title: Holon Solve
date: 2026-06-24 14:52:25 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.20.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.20.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release introduces web GUI skill management, a skill detail API, refreshed TUI skill commands, DashScope plan providers and new models, and a SkillsRegistry refresh mechanism, alongside fixes for skill lifecycle, provider parameter clamping, and runtime continuation edge cases.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Move Holon trigger orchestration into the GitHub Action so issue and PR automation can run with clearer event handling ([#1902](https://github.com/holon-run/holon/pull/1902)).
- Improve memory search excerpts and expandable source handling for clearer retrieval evidence ([#1907](https://github.com/holon-run/holon/pull/1907)).
- Index memory asynchronously and route rebuild/backfill work through the indexer for a more consistent memory maintenance path ([#1905](https://github.com/holon-run/holon/pull/1905), [#1915](https://github.com/holon-run/holon/pull/1915)).
- Refresh model discovery caches automatically and raise the unknown fallback prompt budget to reduce stale or undersized model-selection context ([#1909](https://github.com/holon-run/holon/pull/1909), [#1910](https://github.com/holon-run/holon/pull/1910)).
- Harden Holon Action behavior for cross-repo pull requests, active model reporting, and GitHub CLI installation ([#1918](https://github.com/holon-run/holon/pull/1918), [#1919](https://github.com/holon-run/holon/pull/1919), [#1920](https://github.com/holon-run/holon/pull/1920)).
- Fix runtime continuation and resume edge cases around stale work-item waits, legacy null message sequence values, conversation event sequence links, and completed `run_once` final status precedence ([#1898](https://github.com/holon-run/holon/pull/1898), [#1899](https://github.com/holon-run/holon/pull/1899), [#1921](https://github.com/holon-run/holon/pull/1921), [#1924](https://github.com/holon-run/holon/pull/1924)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.20.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

