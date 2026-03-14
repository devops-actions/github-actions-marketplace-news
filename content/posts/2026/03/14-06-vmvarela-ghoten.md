---
title: Ghoten Action
date: 2026-03-14 06:04:32 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/ghoten
marketplace: https://github.com/marketplace/actions/ghoten-action
version: v1.12.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vmvarela/ghoten** to version **v1.12.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghoten-action) to find the latest changes.

## Action Summary

Ghoten is a GitHub Action and OpenTofu fork that introduces a native `oras` backend for storing Terraform/OpenTofu state in OCI-compatible registries (e.g., GitHub Container Registry), eliminating the need for custom HTTP backends. It simplifies state management by leveraging existing container registries for authentication, permissions, and auditing, reducing operational complexity and enabling seamless integration within GitHub Actions. Key features include built-in state locking, retries, and compatibility with OCI artifact storage systems.

## Release notes

## What's Changed

## 🐛 Bug Fixes

- fix: limit state read size with io.LimitReader to prevent OOM (#70) @vmvarela
- fix: track ORAS retention goroutines with sync.WaitGroup (#58) (#66) @vmvarela

## 🧰 Maintenance

- build(deps): update all dependencies from open Dependabot PRs (#67) @vmvarela
- ci: add cosign keyless signing and SLSA provenance to release workflow (#72) @vmvarela
- ci: add Zot integration test job to CI (#71) @vmvarela
- ci: add -race -count=1 -timeout flags to all test targets (#69) @vmvarela

## 📝 Documentation

- chore: fix issue template labels to match Scrum label system (#68) @vmvarela

**Full Changelog**: https://github.com/vmvarela/ghoten/compare/v1.12.3...v1.12.4

