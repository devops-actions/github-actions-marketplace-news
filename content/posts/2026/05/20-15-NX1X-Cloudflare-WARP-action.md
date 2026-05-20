---
title: Cloudflare WARP Setup
date: 2026-05-20 15:09:14 +00:00
tags:
  - NX1X
  - GitHub Actions
draft: false
repo: https://github.com/NX1X/Cloudflare-WARP-action
marketplace: https://github.com/marketplace/actions/cloudflare-warp-setup
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/NX1X/Cloudflare-WARP-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloudflare-warp-setup) to find the latest changes.

## Action Summary

The **cloudflare-warp-action** GitHub Action installs the Cloudflare WARP client on a GitHub Actions runner and enrolls it into a Cloudflare Zero Trust organization. This enables the runner to gain secure, network-level access to internal corporate resources, allowing tools like `ssh`, `curl`, and `kubectl` to interact with internal IPs and hostnames as if they were on the same network. The action simplifies access to multiple internal services, offering a full-tunnel VPN solution for seamless integration and automation in CI/CD workflows.

## What's Changed

First public release. Status: **Beta** - the full pipeline is exercised by an extensive mocked `warp-cli` test suite but has not yet been validated end-to-end against a real Cloudflare Zero Trust organization. Pin to `@v1.0.0` (not the floating `@v1`) until a stable release is cut.

Part of the NXTools Collection by NX1X (https://nx1xlab.dev/nxtools).

### Features
- **Headless enrollment** - install the Cloudflare WARP client and enroll the GitHub Actions runner into your Zero Trust organization via a service token, with no browser or interactive prompt.
- **Connection modes** - `warp` (full tunnel), `proxy` (local SOCKS5/HTTP), `doh` (DNS-only), `warp+doh`.
- **Split tunneling** - route specific CIDRs through WARP (`include-routes`) or exclude specific CIDRs from it (`exclude-routes`). Mutually exclusive.
- **Connection verification** - retryable status checks plus an optional end-to-end ping against an internal `test-host` before the workflow continues.
- **Outputs** - `warp-version`, `connection-status` (`connected` / `failed` / `skipped`), `warp-ip`.
- **Cleanup sub-action** - disconnects WARP, deletes the device registration, removes the MDM file. Optional `remove-warp: 'true'` uninstalls the package as well.
- **Runner support** - Ubuntu/Debian runners (`ubuntu-latest`, `ubuntu-24.04`, `ubuntu-22.04`, `ubuntu-20.04`).

### Security
- Service-token credentials live only in the MDM file at `/var/lib/cloudflare-warp/mdm.xml` (`chmod 600`, `root:root`) - never on a command line, process arg list, or in any state file.
- All sensitive values flow through `env:` blocks. Inline `${{ inputs.* }}` references in shell are rejected by CI.
- Registration metadata (Device ID, Account ID, Public Key, Token) is redacted from logs.
- Cleanup removes the credential-bearing MDM file even on job failure (`if: always()`).
- Explicit least-privilege `permissions:` blocks on every workflow.
- Third-party actions pinned by commit SHA.
- CodeQL Advanced security analysis on push, PR, and weekly schedule.
- Private vulnerability reporting per `SECURITY.md`.

### Tooling
- CI lint pipeline: `actionlint`, `shellcheck`, plus structural validation.
- Unit-test suite driven by a configurable mock `warp-cli` covering validators, MDM generation + redaction, daemon-readiness, registration, split-tunnel (modern + legacy syntax), connection verify, IP capture, cleanup, install pipeline, strict-mode flags, and missing-env behaviour.
- Renovate for daily dependency updates with cooldown and OSV vulnerability alerts.
- Manual integration-test workflow against a real Zero Trust organization (`workflow_dispatch`).
- Manual release workflow with semver validation, duplicate-tag check, CHANGELOG-extracted notes, and a floating major-version tag.

### Documentation
- [`README.md`](README.md) - quick start, inputs/outputs, common patterns.
- [`GUIDE.md`](GUIDE.md) - Cloudflare org setup, service-token creation, GitHub secrets, real-world workflow examples.
- [`docs/HOW-IT-WORKS.md`](docs/HOW-IT-WORKS.md) - step-by-step internal walkthrough with pointers to the script implementing each step.
- [`docs/ROADMAP.md`](docs/ROADMAP.md) - planned features.
- [`SECURITY.md`](SECURITY.md) - vulnerability reporting and threat model.
- [`CONTRIBUTING.md`](CONTRIBUTING.md) - contribution workflow.

