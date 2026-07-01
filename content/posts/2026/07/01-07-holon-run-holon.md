---
title: Holon Solve
date: 2026-07-01 07:02:15 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.25.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.25.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.25.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release adds a Bing Web Search provider with managed WebSearch tool kept alongside native search, an external trigger token-only storage model with reset-callback API, and trigger revocation on agent stop. It also fixes max_turns counting, coerce_string JSON-string parsing for tool arguments, callback_base_url/advertise_url decoupling, and skill install for non-flat catalog layouts. The memory indexer is redesigned as a single daemon with outbox cleanup, and SQLite connection init gains PRAGMA tuning for better performance.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Add Bing Web Search provider and keep managed WebSearch alongside native search ([#2075](https://github.com/holon-run/holon/pull/2075)).
- Store external trigger token only, add reset-callback API ([#2072](https://github.com/holon-run/holon/pull/2072)).
- Revoke external triggers when agent is stopped ([#2074](https://github.com/holon-run/holon/pull/2074)).
- Parse JSON-string arrays/objects in coerce_string for tool arguments ([#2073](https://github.com/holon-run/holon/pull/2073)).
- Fix max_turns counter to use turn_index instead of total_model_rounds ([#2070](https://github.com/holon-run/holon/pull/2070)).
- Emit first-run intro when provider is configured ([#2069](https://github.com/holon-run/holon/pull/2069)).
- Decouple callback_base_url from advertise_url ([#2068](https://github.com/holon-run/holon/pull/2068)).
- Support non-flat catalog layouts and non-main default branches in skill install ([#2067](https://github.com/holon-run/holon/pull/2067)).
- Redesign memory indexer to single daemon with outbox cleanup ([#2061](https://github.com/holon-run/holon/pull/2061)).
- Add SQLite PRAGMA tuning to connection init for performance ([#2063](https://github.com/holon-run/holon/pull/2063)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.25.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

