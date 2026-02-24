---
title: Debian Multi-Architecture Package Builder
date: 2026-02-24 21:41:13 +00:00
tags:
  - ranjithrajv
  - GitHub Actions
draft: false
repo: https://github.com/ranjithrajv/debian-multiarch-builder
marketplace: https://github.com/marketplace/actions/debian-multi-architecture-package-builder
version: v.0.1a3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ranjithrajv/debian-multiarch-builder** to version **v.0.1a3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/debian-multi-architecture-package-builder) to find the latest changes.

## Action Summary

The "Debian Multi-Architecture Package Builder" GitHub Action automates the creation of Debian packages across multiple architectures from projects hosted on GitHub. It simplifies the process by offering features such as auto-discovery of release patterns, an interactive setup wizard, and pre-built templates for popular programming languages and frameworks. This action addresses the challenges of multi-architecture packaging by providing faster builds, secure checksum verification, and integrated quality assurance tools, making it ideal for developers distributing software as Debian packages.

## Release notes

## What's New in v0.1 Alpha 3

### Modular Architecture
- Refactored core scripts into focused, single-responsibility modules
- Slimmed down telemetry to a minimal essential implementation
- Removed legacy `utils.sh` in favour of dedicated helper libraries

### New Libraries
- **`logging.sh`** — Structured output and colour-coded log levels
- **`progress.sh`** — Real-time build progress visualisation with per-arch status
- **`dry-run.sh`** — 5-step config/version/asset validation without building
- **`zero-config.sh`** — Auto-discovery mode: build directly from a GitHub repo without a config file
- **`download-cache.sh`** — Download caching between builds
- **`resource-pool.sh`** — Resource-aware parallelism management
- **`architecture-tracking.sh`** — Per-architecture state tracking
- **`reporting.sh`** — Build summary and badge generation
- **`essential-utils.sh`**, **`file-utils.sh`**, **`package-utils.sh`** — Utility helpers extracted from monolithic scripts

### GitHub API Improvements
- Exponential backoff retry logic (up to 3 attempts)
- Rate-limit detection with automatic wait
- Shared API response cache at `/tmp/github_api_cache`

### Configuration Templates
- 12+ ready-to-use templates for Rust, Go, C/C++, Node.js, Python, and Ruby projects
- Template index and usage guide in `templates/README.md`

### CLI Improvements (`src/main.sh`)
- `--dry-run` flag for validation without building
- `--setup` flag for interactive config wizard
- `--auto-discovery` / `--ad` flag for zero-config builds

### CI Workflows
- `demo.yml` — Quick demo workflow
- `try-it.yml` — One-click try-it workflow
- `setup.yml` — Guided setup workflow

### Docs
- Expanded usage guide, auto-discovery docs, and best-practices guide
- New setup wizard documentation (`docs/setup-wizard.md`)
- Updated README and CONTRIBUTING guide

### Chores
- Improved `.gitignore` to cover backup files, telemetry data, build summaries, and logs
