---
title: Holon Solve
date: 2026-07-08 15:04:34 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.28.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.28.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release adds image generation support, Volcengine Seedream image provider integration, standardized web search results with additional China-friendly providers, and improved media/attachment handling across the runtime and Web GUI. It also fixes fallback image generation, default callback trigger updates, generic operator prompt attachments, control prompt body limits, and several Web GUI file/link rendering paths.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Add image generation support and runtime configuration, then wire it through fallback provider selection and the Volcengine Seedream OpenAI-compatible image provider ([#2127](https://github.com/holon-run/holon/pull/2127), [#2130](https://github.com/holon-run/holon/pull/2130), [#2131](https://github.com/holon-run/holon/pull/2131)).
- Standardize web search result handling and add China-friendly native search providers ([#2129](https://github.com/holon-run/holon/pull/2129)).
- Improve media and attachment flows, including agent media path markdown, workspace image rendering, file-browser integration, drag-and-drop attachments, and generic operator prompt attachments ([#2120](https://github.com/holon-run/holon/pull/2120), [#2126](https://github.com/holon-run/holon/pull/2126), [#2128](https://github.com/holon-run/holon/pull/2128)).
- Improve Web GUI responsiveness and settings/file-link polish with virtualized agent messages, native search provider settings, bare workspace URL autolinking, generic drop hints, and file-browser link opening ([#2124](https://github.com/holon-run/holon/pull/2124)).
- Fix control prompt request body limits and make default callback trigger creation/reset updates atomic ([#2122](https://github.com/holon-run/holon/pull/2122), [#2132](https://github.com/holon-run/holon/pull/2132)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.28.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

