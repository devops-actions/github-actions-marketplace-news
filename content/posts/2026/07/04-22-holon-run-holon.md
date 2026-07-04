---
title: Holon Solve
date: 2026-07-04 22:00:07 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.26.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.26.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.26.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release introduces the Agent Template package and registry line: local and remote template sources, GitHub repository discovery, daemon sync and diagnostics APIs, web GUI template browsing, and template skill preinstallation. It also adds GitHub Actions-style skill `uses` shorthand, improves the web GUI skills/file experience, and fixes template/skill install edge cases plus several runtime and provider issues.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Implement the AgentTemplate package format, catalog/detail model, provenance events, GitHub repository discovery, and lifecycle daemon APIs ([#1981](https://github.com/holon-run/holon/pull/1981), [#1982](https://github.com/holon-run/holon/pull/1982), [#1983](https://github.com/holon-run/holon/pull/1983), [#1984](https://github.com/holon-run/holon/pull/1984), [#1985](https://github.com/holon-run/holon/pull/1985), [#2086](https://github.com/holon-run/holon/pull/2086), [#2102](https://github.com/holon-run/holon/pull/2102)).
- Add Agent Templates Web UI pages, Create Agent entry points, remote-source cache handling, and related navigation/file-viewer improvements ([#2094](https://github.com/holon-run/holon/pull/2094), [#2105](https://github.com/holon-run/holon/pull/2105), [#2082](https://github.com/holon-run/holon/pull/2082), [#2090](https://github.com/holon-run/holon/pull/2090), [#2092](https://github.com/holon-run/holon/pull/2092)).
- Preinstall skills for agent templates, split official templates from builtin fallback, remove user-facing builtin skills, resolve omitted template skill refs via HEAD, add skill `uses` shorthand, and make global skill install idempotent ([#2100](https://github.com/holon-run/holon/pull/2100), [#2106](https://github.com/holon-run/holon/pull/2106), [#2107](https://github.com/holon-run/holon/pull/2107), [#2108](https://github.com/holon-run/holon/pull/2108), [#2109](https://github.com/holon-run/holon/pull/2109), [#2110](https://github.com/holon-run/holon/pull/2110)).
- Derive template remote source IDs, fix template install/home-dir handling, authenticate GitHub template API requests, and use the source solve template in action builds ([#2098](https://github.com/holon-run/holon/pull/2098), [#2101](https://github.com/holon-run/holon/pull/2101), [#2104](https://github.com/holon-run/holon/pull/2104)).
- Retry transient OpenAI streaming server errors, make first-run intro runtime-owned, remove legacy message fallback, remove baseline_unfit turn-projection early exit, and correct Volcengine GLM catalog limits ([#2093](https://github.com/holon-run/holon/pull/2093), [#2097](https://github.com/holon-run/holon/pull/2097), [#2091](https://github.com/holon-run/holon/pull/2091), [#2088](https://github.com/holon-run/holon/pull/2088), [#2096](https://github.com/holon-run/holon/pull/2096)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.26.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.


