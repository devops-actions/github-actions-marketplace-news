---
title: Supply Chain Guard
date: 2026-07-31 14:59:03 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.23.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is an open-source tool for scanning npm packages and other dependency lockfiles to detect malware campaigns, fake AI tool repos, account takeovers, and various security threats. It generates CycloneDX SBOMs with real dependency inventories and supports multiple ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.23.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

This GitHub Action is an open-source tool for scanning npm packages and other dependency lockfiles to detect malware campaigns, fake AI tool repos, account takeovers, and various security threats. It generates CycloneDX SBOMs with real dependency inventories and supports multiple ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories.

## What's Changed

## [5.23.4] - 2026-07-31

### Added

- **250 malicious package IOCs** imported from the GitHub Advisory Database
  (CWE-506) and corroborated against OSV.dev, covering npm and PyPI advisories
  published in the 14-day window to 2026-07-31. The batch is dominated by
  typosquats of `socket.io`, `passport` and `mongoose`, plus several
  machine-generated throwaway names.
- **SHA-256 of the malicious `jscrambler@8.20.0` manifest**
  (`bba32dd...f49f0`) added to the known-malware hash set and the bundled feed.
  The version pins already covered an install from npm; the hash catches a
  vendored or mirrored copy of that release where the version metadata is gone.
  Single-source (Socket), so it carries a reduced feed confidence of 0.85.

### Fixed

- **Trusted same-run GitHub Actions artifact handoffs no longer add a low-risk
  finding.** `GHA_ARTIFACT_DOWNLOAD` now uses workflow structure instead of a
  bare action-name match. Suppression requires a trusted trigger, a stable
  upload and download action reference, an exact or glob-compatible artifact
  selector, and a producer linked through the consumer job's complete
  `needs` graph. If multiple jobs can produce the selected artifact, every
  matching producer must be in that dependency closure. Scalar, flow-list and
  block-list `needs` forms plus `pattern`, `repository`, `run-id` and
  `github-token` inputs are parsed without adding a YAML dependency.
- **Artifact injection coverage remains fail-closed.** Explicit cross-run or
  cross-repository access, `workflow_run`, `pull_request_target`, mutable action
  refs, unlinked producers, unrelated artifact names and structurally unknown
  workflows still report `GHA_ARTIFACT_DOWNLOAD`; the existing cross-workflow
  graph continues to escalate untrusted producer-to-privileged-consumer chains
  to medium or critical. Regressions cover the repository's native multi-arch
  Docker digest handoff, transitive dependencies and malicious controls, and the
  build-backed self-scan now asserts this contextual false positive is absent.

