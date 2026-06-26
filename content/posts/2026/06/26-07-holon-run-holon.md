---
title: Holon Solve
date: 2026-06-26 07:23:05 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.22.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.22.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## What's Changed

## Runtime line

Holon v0.22.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release adds a workspace file browsing API for the Web GUI, supports extended thinking for Anthropic transport with thinking block audit visibility, improves Web GUI task list and overview panel, unifies CLI HTTP communication through LocalClient, and fixes skill catalog infinite loops and agent-scoped skill detail endpoints.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Changes

- Add workspace file browsing API for the Web GUI ([#2006](https://github.com/holon-run/holon/pull/2006)).
- Support extended thinking for Anthropic transport with thinking block audit visibility ([#2005](https://github.com/holon-run/holon/pull/2005)).
- Improve Web GUI task list and overview panel ([#2001](https://github.com/holon-run/holon/pull/2001)).
- Unify CLI HTTP communication through LocalClient ([#2010](https://github.com/holon-run/holon/pull/2010)).
- Fix skill catalog infinite loop on persistent fetch errors ([#2012](https://github.com/holon-run/holon/pull/2012)).
- Fix agent-scoped skill detail endpoint and remove legacy_id compat ([#2008](https://github.com/holon-run/holon/pull/2008)).
- Improve error message when workdir does not exist ([#2009](https://github.com/holon-run/holon/pull/2009)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.22.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

