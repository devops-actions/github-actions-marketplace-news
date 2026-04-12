---
title: compose-lint
date: 2026-04-12 21:59:43 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.3.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.3.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

This GitHub Action, **compose-lint**, is a security-focused linter for Docker Compose files that identifies and flags potentially dangerous misconfigurations, helping ensure secure deployments. It automates the detection of issues such as exposed Docker sockets, overly permissive port bindings, and privilege escalation risks, adhering to OWASP and CIS security standards. Designed to be fast, opinionated, and easy to use, it provides actionable feedback to mitigate vulnerabilities before production.

## What's Changed

## [0.3.3] - 2026-04-12

### Added

- Docker Hub image (`composelint/compose-lint`) — multi-stage build on `python:3.13-alpine`, multi-arch (`linux/amd64`, `linux/arm64`), runs as non-root, signed with cosign (Sigstore keyless).
- Docker usage section in README.
- README rules table now lists all 19 rules (CL-0011–CL-0019 were missing).
- Automated TestPyPI smoke test in publish workflow — installs from TestPyPI, verifies `--version`, runs fixture tests. Real PyPI publish is gated on it.
- Automated post-push verification in Docker publish workflow — pulls by digest, verifies cosign signature, checks version output.
