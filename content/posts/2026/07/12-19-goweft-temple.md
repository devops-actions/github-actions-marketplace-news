---
title: Temple Scope Guard
date: 2026-07-12 19:19:54 +00:00
tags:
  - goweft
  - GitHub Actions
draft: false
repo: https://github.com/goweft/temple
marketplace: https://github.com/marketplace/actions/temple-scope-guard
version: v0.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/goweft/temple** to version **v0.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/temple-scope-guard) to find the latest changes.

## What's Changed

## What's new

- **The dependency check now understands Go.** Previous versions only recognized
  `pyproject.toml` and `requirements.txt`, so on this repo — and any other Go
  repo — `max_deps` silently went unenforced. `temple check` now reads `go.mod`
  (direct requires only; `// indirect` doesn't count).
- **A declared `max_deps` with no parseable manifest is now a failure, not a
  silent pass.** A check that couldn't run is not a check that passed.
- **The GitHub Action verifies checksums before running anything.** It
  previously downloaded and executed a release tarball with no integrity
  check. It now verifies against that release's `checksums.txt` and fails if
  the asset is missing or doesn't match.
- **The action installs to a scratch directory**, not your checkout, and
  defaults to pinning the exact release version instead of a floating `latest`.
- The action's display name is now "Temple Scope Guard" (Marketplace listing
  requirement — a bare `temple` collided with an existing GitHub user).
  Usage is unchanged: `uses: goweft/temple@v0.3.1`.

## Upgrading

No breaking changes to the contract format. If your `temple.toml` declares
`max_deps` and your repo is Go, this release may surface a finding that was
previously silent — that's the fix working as intended.

Full diff: https://github.com/goweft/temple/compare/v0.3.0...v0.3.1
