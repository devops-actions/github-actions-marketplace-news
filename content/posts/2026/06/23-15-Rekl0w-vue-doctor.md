---
title: Rekl0w Vue Doctor
date: 2026-06-23 15:01:46 +00:00
tags:
  - Rekl0w
  - GitHub Actions
draft: false
repo: https://github.com/Rekl0w/vue-doctor
marketplace: https://github.com/marketplace/actions/rekl0w-vue-doctor
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Rekl0w/vue-doctor** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekl0w-vue-doctor) to find the latest changes.

## What's Changed

## v0.6.0

Vue Doctor now includes the React Doctor-inspired project-health expansion for Vue projects.

### Added
- Added Socket.dev supply-chain scoring for direct dependencies with `low-supply-chain-score`.
- Added `--supply-chain`, `--no-supply-chain`, and real `--offline` behavior.
- Added configurable `supplyChain` options for min score, severity, devDependency coverage, cache, and timeouts.
- Added Vue/Vite/Nuxt-aware dead-code analysis for unused files, unused exports, unused dependencies, and circular imports.
- Added timeout-bounded dead-code worker execution so stalled analysis fails open instead of blocking scans.
- Added Vue performance checks for async computed getters, sync-flush watchers, and inline object/function template props.
- Added accessibility checks for unlabeled form controls and click-only non-interactive elements.
- Added public client env secret detection and package health checks for mixed lockfiles, package-manager mismatch, and risky install scripts.
- Added publishable `oxlint-plugin-vue-doctor` with script-level Vue Doctor rules.

### Changed
- Full-project scans now include package metadata, dead-code, and supply-chain checks.
- Config schema now supports `warnings`, object-style `deadCode`, and `supplyChain`.
- Root build/typecheck now also verifies the oxlint plugin workspace.
