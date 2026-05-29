---
title: Holon Runner
date: 2026-05-29 22:48:18 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.15.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.15.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a local-first AI runtime that enables durable agent sessions for tasks requiring continuity across client disconnects, terminal sessions, and external events. It automates complex workflows by maintaining workspace context, task progress, execution history, and event-driven continuation, ensuring work persists beyond transient interactions. Key capabilities include local workspace execution, worktree-isolated coding, and supervised delegation of tasks, making it ideal for managing long-running or iterative AI-driven processes.

## What's Changed

## Runtime line

Holon v0.15.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.15.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

