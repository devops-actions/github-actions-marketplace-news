---
title: compose-lint
date: 2026-08-18 13:23:51 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.19.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  compose-lint is a security-focused linter for Docker Compose files that detects and auto-fixes dangerous misconfigurations such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It provides a static analysis check for docker-compose.yml and compose.yaml files, with full rule documentation at tmatens.github.io/compose-lint. The tool catches these security issues in CI before they reach production.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.19.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

compose-lint is a security-focused linter for Docker Compose files that detects and auto-fixes dangerous misconfigurations such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It provides a static analysis check for docker-compose.yml and compose.yaml files, with full rule documentation at tmatens.github.io/compose-lint. The tool catches these security issues in CI before they reach production.

## What's Changed


### Added

- GitHub Action: `upload-sarif` input (default `"true"`). Set to `"false"` to
  write the file requested via `sarif-file` without uploading it to GitHub
  Code Scanning — for runners without Code Scanning (Forgejo) or jobs that
  lack the `security-events: write` permission the upload needs.
- GitHub Action: `sarif-written` output — `"true"` when the SARIF file was
  written and non-empty, empty otherwise.

### Fixed

- **Windows: every invocation crashed with `AttributeError: module 'os' has
  no attribute 'O_NONBLOCK'` in 0.18.0.** The bounded-read hardening opened
  files with the POSIX-only `O_NONBLOCK` flag (its FIFO-open-blocking rationale
  does not exist on Windows). File opens now apply `O_NONBLOCK` only where the
  platform has it, and add Windows' `O_BINARY` so CRT newline translation
  cannot corrupt reads that ask for the file's real bytes. Found by the new
  macOS/Windows CI smoke on its first run.
- **Windows: any run with findings crashed with `UnicodeEncodeError`.**
  Windows pipes and redirected files inherit the locale code page (usually
  cp1252), which cannot encode the report's ⚠/·/│ characters. The CLI now
  reconfigures stdout/stderr to UTF-8 when they aren't already — a no-op on
  every other platform and on interactive Windows consoles — so piped and
  redirected output is UTF-8 everywhere. Also found by the macOS/Windows
  smoke.

### Known limitations

- **On Windows hosts, bind-source path resolution uses the host's path
  semantics**, so the climb-to-root detections (CL-0001, CL-0025) can miss
  findings that the same file produces on Linux/macOS, and a bind source
  containing `${VAR:?err}` can surface an OS error. Tracked in
  [#588](https://github.com/tmatens/compose-lint/issues/588). Linting the
  same files on Linux CI is unaffected.


