---
title: go-skeptic
date: 2026-04-14 22:19:57 +00:00
tags:
  - TGPSKI
  - GitHub Actions
draft: false
repo: https://github.com/TGPSKI/skeptic
marketplace: https://github.com/marketplace/actions/go-skeptic
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/TGPSKI/skeptic** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-skeptic) to find the latest changes.

## Action Summary

The `skeptic` GitHub Action is a local repository trust auditing tool designed to detect structural vulnerabilities and trust boundary violations that can lead to supply chain compromises. It addresses gaps overlooked by traditional security tools such as CVE scanners, SAST tools, and secret scanners by identifying attack-enabling conditions like unsafe CI/CD practices, ecosystem poisoning, and low-review attack surfaces. Key capabilities include behavior chain analysis, identity graph traversal, payload decoding, cross-finding correlation, and entropy-based anomaly detection, all provided as a standalone, deterministic, and secure Go binary.

## What's Changed

## License

- Relicense from Apache 2.0 to GNU General Public License v3.0

## CI/CD

- Fix auto-label/CI race condition: remove `opened` from CI pull_request triggers
- Fix test-action required check for path-filtered PRs: add `changes` gate job and `test-action-result` rollup job
- Update `main-ci-and-integrity` ruleset to require `test-action-result`

## Agent Skills

- Add `go-release` skill for managing the Go module release lifecycle

---

Full changelog: [CHANGELOG.md](https://github.com/TGPSKI/skeptic/blob/v0.2.0/CHANGELOG.md)
