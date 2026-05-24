---
title: Holon Runner
date: 2026-05-24 07:08:46 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.14.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.14.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a local-first runtime infrastructure designed to enable AI agents to maintain durable work sessions across client connections, terminal sessions, and external events. It automates tasks such as analyzing codebases, managing workflows, and executing commands while preserving workspace context, execution history, and task progress. Key capabilities include event-driven task continuation, isolated coding workspaces, and supervised delegation, making it ideal for long-running AI-driven projects that require persistence and local execution.

## What's Changed

## Highlights

Holon v0.14.1 is a patch release for long-lived agent scheduling.

- Fixed blocked WorkItem recheck wake-ups. When all runnable work is blocked until a `recheck_at` deadline, the runtime now wakes at the next durable deadline instead of sleeping indefinitely until external input.
- The projected idle sleep state now includes the next recheck deadline, so agent state reflects the concrete wake target.
- Added storage lookup and regression coverage for earliest unconsumed blocked WorkItem rechecks and runtime idle wake behavior.

This release includes PR #1375 and closes #1356.

## Runtime line

Holon v0.14.1 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This line is intentionally breaking relative to the old Go-line releases. If you need the old Go implementation, stay on `v0.12.0`.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64.

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.14.1/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

