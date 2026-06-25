---
title: Holon Solve
date: 2026-06-25 22:30:40 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.21.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.21.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.21.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release adds the latest Volcengine models, implements real skills update compatible with npx skills v3 lock, makes skills CLI refresh and catalog refresh APIs explicit, and raises the default max_turns from 12 to 35, alongside fixes for orphaned wait conditions and operator_input recheck recovery, internal refactors to split storage and runtime_db into module trees, and web GUI skill panel and agent sidebar fixes.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Add latest Volcengine models including Seed 2.0, DeepSeek V4, GLM-5.2, and Kimi K2.6/K2.7 ([#1995](https://github.com/holon-run/holon/pull/1995)).
- Implement real skills update compatible with npx skills v3 lock and add a generic job API for skill installs ([#1987](https://github.com/holon-run/holon/pull/1987), [#1978](https://github.com/holon-run/holon/pull/1978)).
- Make skills CLI refresh and catalog refresh API explicit and improve TUI skill command feedback ([#1990](https://github.com/holon-run/holon/pull/1990), [#1977](https://github.com/holon-run/holon/pull/1977)).
- Raise default max_turns from 12 to 35 and audit provider response identifiers ([3913a92](https://github.com/holon-run/holon/commit/3913a92f), [#1975](https://github.com/holon-run/holon/pull/1975)).
- Fix orphaned wait conditions where cancel fails when the work item is already Completed ([#1991](https://github.com/holon-run/holon/pull/1991)).
- Fix operator_input wait with expired recheck that never recovers because the scheduler ignores the recheck deadline ([#1992](https://github.com/holon-run/holon/pull/1992)).
- Fix web GUI skill panel, agent sidebar, and agent template rendering ([#1999](https://github.com/holon-run/holon/pull/1999)).
- Refactor storage.rs, runtime_db.rs, and tool name constants into module trees for clearer storage responsibility boundaries ([#1996](https://github.com/holon-run/holon/pull/1996), [#1997](https://github.com/holon-run/holon/pull/1997), [#1998](https://github.com/holon-run/holon/pull/1998)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.21.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

