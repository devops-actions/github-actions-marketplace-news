---
title: Sync Issues and PRs
date: 2026-03-09 13:35:01 +00:00
tags:
  - vig-os
  - GitHub Actions
draft: false
repo: https://github.com/vig-os/sync-issues-action
marketplace: https://github.com/marketplace/actions/sync-issues-and-prs
version: v0.2.2
dependentsNumber: "4"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vig-os/sync-issues-action** to version **v0.2.2**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sync-issues-and-prs) to find the latest changes.

## Action Summary

The **Sync Issues and PRs Action** is a GitHub Action that automates the process of exporting issues and pull requests from a repository into organized markdown files. It preserves all comments, metadata, and relationships, including PR review threads, providing a comprehensive offline record of repository activity. This action is particularly useful for archiving, documentation, or analytics purposes, simplifying access to structured repository data.

## Release notes

### Added

- Exported `shiftHeadersToMinLevel` utility function for independent unit testing
- **Sync sub-issue relationships into frontmatter** ([#8](https://github.com/vig-os/sync-issues-action/issues/8), [#15](https://github.com/vig-os/sync-issues-action/issues/15))
  - Fetch `parent` and `subIssues` via GraphQL batch query for all synced issues
  - New `sync-sub-issues` action input to control sub-issue syncing (default: `true`)
  - Replace hardcoded `relationship: none` with dynamic `parent` and `children` fields
  - Graceful degradation: emits info message and falls back to `none` if the sub-issues API is unavailable
- **CI/CD pipeline** ([#13](https://github.com/vig-os/sync-issues-action/issues/13))
  - CI workflow with lint, build-dist verification, and test jobs
  - Integration test suite as a reusable workflow with parallel jobs covering issues-only, PRs-only, force-update, include-closed, sub-issues, updated-since, state-file, and default-mode scenarios
  - Three-phase release pipeline: prepare-release (branch + draft PR), release (tag + GitHub Release with provenance attestation), and post-release (dev sync + CHANGELOG reset)
  - `setup-env` and `build-dist` composite actions for consistent environment setup
  - CHANGELOG management CLI (`prepare_changelog.py`) for automated release note preparation
  - Dependabot configuration for automated dependency updates
  - CODEOWNERS file for automated review assignment
  - CodeQL analysis workflow for automated security vulnerability scanning
  - Scorecard workflow for ongoing supply-chain security assessments
  - Security scan workflow for continuous security monitoring

### Changed

- **Sync-issues workflow uses local action checkout** ([#13](https://github.com/vig-os/sync-issues-action/issues/13))
  - Replaced pinned remote ref with `uses: ./` so the workflow always tests the current branch's code
- **Node.js version pinned via `.nvmrc`** ([#13](https://github.com/vig-os/sync-issues-action/issues/13))
  - `.nvmrc` is the single source of truth; `setup-env` and devcontainer read from it

### Fixed

- Corrected heading hierarchy in `formatPRAsMarkdown`: promoted the Comments section header from `##` to `#` and individual comment entry headers from `###` to `##`
- **Release workflow avoids immutable-release upload failures**
  - Generates `checksums-sha256.txt` before creating the GitHub release and attaches it during `gh release create` instead of uploading afterward
- **Release workflow: floating-tag updates and rollback** ([#38](https://github.com/vig-os/sync-issues-action/issues/38))
  - Floating-tag updates (vX, vX.Y) run in a separate job after the release job succeeds; main rollback no longer restores floating tags
  - Resolve floating tags via exact "Get a reference" API (`git/ref/tags/$TAG`) instead of `git/matching-refs` to avoid wrong-SHA from prefix matches
  - New job captures current SHAs, updates tags, and on failure restores from captured SHAs (self-contained)
- **`--force-update` does not re-sync issues (only PRs)** ([#10](https://github.com/vig-os/sync-issues-action/issues/10))
  - Added `force-update` action input that bypasses the `hasContentChanged` content-comparison gate
  - When active, all fetched items are re-written (with updated `synced:` frontmatter) even if body content is unchanged
  - Updated `sync-issues.yml` workflow to pass the `force-update` dispatch input to the action
- Added `shiftHeadersToMinLevel` helper to re-level headers inside comment bodies so the shallowest header maps to `###`, preventing collisions with outer document structure
- Fixed default `GITHUB_REPOSITORY` in `test-local.sh` from non-existent `vig-os/actions` to `vig-os/sync-issues-action`
- Removed broken fallback command in `test-local.sh` that passed a file path where a directory is required

### Security

- **CodeQL and OpenSSF Scorecard analysis workflows** ([#13](https://github.com/vig-os/sync-issues-action/issues/13))
  - CodeQL scans JavaScript/TypeScript on push and PR
  - Scorecard publishes results to the Security tab via SARIF

