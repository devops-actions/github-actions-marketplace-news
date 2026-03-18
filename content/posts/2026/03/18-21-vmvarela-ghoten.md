---
title: Ghoten Action
date: 2026-03-18 21:37:45 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/ghoten
marketplace: https://github.com/marketplace/actions/ghoten-action
version: v1.12.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vmvarela/ghoten** to version **v1.12.5**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghoten-action) to find the latest changes.

## Action Summary

Ghoten is a GitHub Action and OpenTofu fork that integrates a native `oras` backend for storing Terraform/OpenTofu state directly in OCI registries (e.g., GitHub Container Registry), eliminating the need for separate backend services. It simplifies state management by leveraging existing registry authentication, permissions, and auditing, making it operationally efficient and secure by default. Key capabilities include state storage as OCI artifacts, built-in locking and retries, and seamless integration with GitHub Actions for automated workflows.

## Release notes

## What's Changed

## 🚀 Features

- fix(action): auto-create workspace via 'workspace select -or-create' (#96) @vmvarela
- fix(action): strip 'Refreshing state...' lines from PR comment and summary output (#95) @vmvarela

## 🐛 Bug Fixes

- fix(test): synchronize testHangServer handler goroutines to prevent race (#105) @vmvarela
- fix(ghoten): propagate context in state transforms and provider calls (#104) @vmvarela
- fix(console): add -lock and -lock-timeout flags (#98) @vmvarela
- fix(oras): add 30s timeout to credential helper invocations (#100) @vmvarela

## ⚡ Performance

- perf(oras): pool gzip writers, readers, and buffers via sync.Pool (#101) @vmvarela

## ♻️ Refactoring

- refactor: propagate stopCtx in local backend state persistence (#92) @vmvarela

## 🧰 Maintenance

- chore: remove GODEBUG winsymlink=0 from go.mod (#102) @vmvarela
- chore(docker): run as non-root user and add OCI labels (#103) @vmvarela
- ci: add test gate to release workflow (#99) @vmvarela
- ci: verify go generate freshness in CI (#97) @vmvarela

**Full Changelog**: https://github.com/vmvarela/ghoten/compare/v1.12.4...v1.12.5
