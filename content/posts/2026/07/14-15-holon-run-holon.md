---
title: Holon Solve
date: 2026-07-14 15:19:48 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.29.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Holon is a local workbench that provides agents with a continuous working context, organizing tasks and waits explicitly as "Work," preserving state and context. It supports event-driven wait and wake mechanisms and allows clear separation of operator input, external events, tool results, and execution traces. Holon runs in the real working environment for local repositories, shell, worktrees, and development toolchains.
---


Version updated for **https://github.com/holon-run/holon** to version **v0.29.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## Action Summary

Holon is a local workbench that provides agents with a continuous working context, organizing tasks and waits explicitly as "Work," preserving state and context. It supports event-driven wait and wake mechanisms and allows clear separation of operator input, external events, tool results, and execution traces. Holon runs in the real working environment for local repositories, shell, worktrees, and development toolchains.

## What's Changed

## Runtime line

Holon v0.29.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release introduces a model route resolution system that resolves model capabilities through provider endpoints, calibrates catalogs across 30+ providers, adds an isolated xAI XSearch tool with OAuth device login, distinguishes Volcengine provider tiers, and improves Web GUI event timeline rendering, settings UI, and skill management. It also fixes Codex credential profile prioritization, prompt budget for continuations, workspace file download authentication, provider continuation lineage, and checkpoint operator delivery gaps.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Introduce model route resolution and route-aware model catalog capabilities through provider endpoints, then canonicalize catalog routes across all built-in providers ([#2133](https://github.com/holon-run/holon/pull/2133), [#2134](https://github.com/holon-run/holon/pull/2134), [#2135](https://github.com/holon-run/holon/pull/2135), [#2196](https://github.com/holon-run/holon/pull/2196), [#2198](https://github.com/holon-run/holon/pull/2198), [#2233](https://github.com/holon-run/holon/pull/2233)).
- Calibrate and unify model catalogs across 30+ providers including OpenAI, Codex, Anthropic, xAI, Gemini, DeepSeek, MiniMax, Moonshot, Mistral, DashScope, Volcengine, Tencent TokenHub, Venice, Hugging Face, and more ([#2199](https://github.com/holon-run/holon/pull/2199)–[#2228](https://github.com/holon-run/holon/pull/2228)).
- Add an isolated xAI XSearch tool with OAuth device login and credential handling ([#2183](https://github.com/holon-run/holon/pull/2183), [#2154](https://github.com/holon-run/holon/pull/2154), [#2155](https://github.com/holon-run/holon/pull/2155), [#2185](https://github.com/holon-run/holon/pull/2185), [#2186](https://github.com/holon-run/holon/pull/2186)).
- Distinguish Volcengine provider tiers (standard, agent-plan, coding-plan) and switch the plan tier to OpenAI Responses transport ([#2136](https://github.com/holon-run/holon/pull/2136), [#2137](https://github.com/holon-run/holon/pull/2137), [#2138](https://github.com/holon-run/holon/pull/2138)).
- Improve Web GUI event timeline rendering, tool execution details, workspace detail renderers, settings UI, OAuth auth mode, fallback model chip, and image generation settings ([#2144](https://github.com/holon-run/holon/pull/2144), [#2147](https://github.com/holon-run/holon/pull/2147), [#2148](https://github.com/holon-run/holon/pull/2148), [#2160](https://github.com/holon-run/holon/pull/2160), [#2161](https://github.com/holon-run/holon/pull/2161), [#2164](https://github.com/holon-run/holon/pull/2164), [#2156](https://github.com/holon-run/holon/pull/2156), [#2169](https://github.com/holon-run/holon/pull/2169), [#2170](https://github.com/holon-run/holon/pull/2170)).
- Run skill catalog updates as jobs with hardened feedback and Web GUI skill management UI ([#2181](https://github.com/holon-run/holon/pull/2181), [#2182](https://github.com/holon-run/holon/pull/2182)).
- Fix Codex credential profile prioritization, use full prompt budget for continuations, authenticate workspace file downloads, and preserve provider continuation lineage ([#2236](https://github.com/holon-run/holon/pull/2236), [#2235](https://github.com/holon-run/holon/pull/2235), [#2231](https://github.com/holon-run/holon/pull/2231), [#2168](https://github.com/holon-run/holon/pull/2168)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.29.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

