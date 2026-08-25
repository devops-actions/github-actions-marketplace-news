---
title: SlopLock
date: 2026-08-25 22:41:12 +00:00
tags:
  - theinfosecguy
  - GitHub Actions
draft: false
repo: https://github.com/theinfosecguy/sloplock
marketplace: https://github.com/marketplace/actions/sloplock
version: v2.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  SlopLock is a GitHub Action that checks package names before they are installed or merged, ensuring the packages exist and are not too new. It identifies AI-hallucinated, nonexistent, and too-new dependencies by asking eight public registries if they exist and have sufficient history to trust them. The tool posts comments on pull requests with details about the findings and helps maintain a secure dependency ecosystem.
---


Version updated for **https://github.com/theinfosecguy/sloplock** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sloplock) to find the latest changes.

## Action Summary

SlopLock is a GitHub Action that checks package names before they are installed or merged, ensuring the packages exist and are not too new. It identifies AI-hallucinated, nonexistent, and too-new dependencies by asking eight public registries if they exist and have sufficient history to trust them. The tool posts comments on pull requests with details about the findings and helps maintain a secure dependency ecosystem.

## What's Changed

# SlopLock v2.0.0

This major release adds a direct package-checking library API, removes unused
public type surface, and improves dependency discovery and failure reporting
across the CLI and GitHub Action.

## Library API

- Adds `checkPackages()` for checking normalized package names without a
  repository checkout.
- Returns registry results, policy findings, warnings, and registry failures in
  deterministic input order.
- Exports the default registry client, package-name normalization helpers, and
  public error classes from the package entry point.
- Keeps source-free package checks separate from the source-backed `scan()`
  finding contract.

## Breaking Changes

- Removes the unused `ScanOptions.failClosed` library option. CLI and GitHub
  Action `--fail-closed` behavior is unchanged; library callers should inspect
  `registryFailures` in the returned result.
- Narrows `SourceKind` to the values produced by supported parsers:
  `manifest` and `lockfile`.
- Removes the unused `ScanMode` type.

## Scanner And CLI Reliability

- Skips common virtual environment, vendored dependency, and build-output
  directories during full and changed-only discovery.
- Resolves the remote default branch through `origin/HEAD` for changed-only
  scans, with `origin/main` as the fallback.
- Reports unreadable scan roots as usage errors and keeps JSON-mode failures as
  valid JSON.
- Handles partial cooldown configuration correctly and warns consistently about
  allow or ignore entries without expiry dates.
- Uses the shared runtime version constant for CLI version output and registry
  user agents.

## Action And Registry Hardening

- Introduces the `theinfosecguy/sloplock@v2` moving Action ref while leaving
  `v1` on the latest compatible 1.x release.
- Keeps registry timeouts, rate limits, server failures, and malformed responses
  distinct from package-not-found findings.
- Preserves concise Action annotations, summaries, and optional pull request
  comments while retaining read-only-permission support.
- Updates generated artifacts for the Node 24 bundled Action before release.

