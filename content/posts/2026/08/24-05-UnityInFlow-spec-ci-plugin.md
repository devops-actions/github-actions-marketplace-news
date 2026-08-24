---
title: UnityInFlow Spec Compliance
date: 2026-08-24 05:55:27 +00:00
tags:
  - UnityInFlow
  - GitHub Actions
draft: false
repo: https://github.com/UnityInFlow/spec-ci-plugin
marketplace: https://github.com/marketplace/actions/unityinflow-spec-compliance
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The GitHub Action `spec-ci-plugin` automates spec compliance checks on pull requests by enforcing specs using various tools like spec-linter, injection-scanner, scope checker, and criteria checker. It posts a structured report as a PR comment detailing the validation of the spec file, security scan results, scope compliance, and acceptance criteria coverage.
---


Version updated for **https://github.com/UnityInFlow/spec-ci-plugin** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unityinflow-spec-compliance) to find the latest changes.

## Action Summary

The GitHub Action `spec-ci-plugin` automates spec compliance checks on pull requests by enforcing specs using various tools like spec-linter, injection-scanner, scope checker, and criteria checker. It posts a structured report as a PR comment detailing the validation of the spec file, security scan results, scope compliance, and acceptance criteria coverage.

## What's Changed

**Security release.** `@v1` had been serving `v1.0.0` since July, four months of fixes behind — including both fixes to the scanner download path. Publishing this release moves `v1` forward automatically; consumers pinned to `@v1` pick it up with no change on their side.

## Fixed — scanner download path (#43, #56)

The runtime download of the `injection-scanner` binary had three holes, all reachable on a persistent runner:

- **No checksum verification.** The downloaded binary was `chmod +x`'d and executed with nothing checked against `SHA256SUMS`.
- **Fixed unversioned cache path.** `/tmp/injection-scanner` was returned by `existsSync` without re-verification, so anything able to write that path got executed on the next run. The cache is now keyed by version.
- **Suppressed findings not surfaced.** A file that disarmed the scanner with an inline directive reported as clean. The action now reads the scanner's `suppressed` record and reports it.

## Fixed — the moving `v1` tag

`v1` stopped moving after being set by hand at `v1.0.0`. Two independent causes, either one fatal:

1. The tag-mover ran `runs-on: [arc-runner-unityinflow]` on a **public** repo, and the org runner group enforces `allows_public_repositories: false` — no self-hosted job can be scheduled here at all, whatever the trigger.
2. That label matches zero registered runners.

Neither failed loudly; `v1` simply froze. The job now runs GitHub-hosted (no org secrets, only the built-in `GITHUB_TOKEN`, and `release: published` cannot be fired by a fork), and a `workflow_dispatch` entry point closes the gap between a fix landing on `main` and the next release being cut.

Also fixed: `git tag -fa "$MAJOR"` tagged `HEAD` rather than the release commit, which would have pointed `v1` at whatever was on `main` at dispatch time.

## Changed

- `injection-scanner-version` default → `v0.0.3`
- README pins updated from `@v0.0.1` to `@v1`, with a test that keeps the documented pin and the package major in sync

## Usage

```yaml
- uses: UnityInFlow/spec-ci-plugin@v1
```

**Full changelog:** https://github.com/UnityInFlow/spec-ci-plugin/compare/v1.0.0...v1.1.0
