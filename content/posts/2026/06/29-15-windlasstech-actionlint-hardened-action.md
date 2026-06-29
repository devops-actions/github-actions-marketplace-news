---
title: actionlint-hardened
date: 2026-06-29 15:08:08 +00:00
tags:
  - windlasstech
  - GitHub Actions
draft: false
repo: https://github.com/windlasstech/actionlint-hardened-action
marketplace: https://github.com/marketplace/actions/actionlint-hardened
version: v1.0.0
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/windlasstech/actionlint-hardened-action** to version **v1.0.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actionlint-hardened) to find the latest changes.

## What's Changed

## [1.0.0] - 12026-06-27

### Added

- Docker-based reusable GitHub Action wrapping `rhysd/actionlint` with explicit inputs (`paths`, `config-file`, `ignore`, `shellcheck`, `pyflakes`, `format`, `no-color`, `oneline`), including newline-separated shell-like glob handling that skips unmatched glob patterns, keeps `*`, `?`, and bracket expressions within a single path segment, and requires explicit leading-dot patterns for leading-dot names.
- SHA-pinned upstream image in `Dockerfile`: `rhysd/actionlint:1.7.12@sha256:b1934ee5f1c509618f2508e6eb47ee0d3520686341fec936f3b79331f9315667`.
- Dependabot configuration for Docker base image and GitHub Actions updates.
- Windlass security reusable workflows: Dependency Review, OSV Scanner (PR and full), and OpenSSF Scorecard.
- Self-test workflow exercising valid, invalid, unmatched glob, config-file, ignore, tool-disable, and formatting inputs.
- Test fixtures and bilingual documentation (`README.md` and `README.ko.md`).
- Initial project files: `LICENSE` and `README.md`.
- Repository conventions for agent-assisted development (`AGENTS.md`).
- Standard OS-specific `.gitignore` rules.
- Korean README translation (`README.ko.md`).

[1.0.0]: https://github.com/windlasstech/actionlint-hardened-action/releases/tag/v1.0.0
