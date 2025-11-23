---
title: Git Security Scanner
date: 2025-11-23 05:25:35 +00:00
tags:
  - cloudon-one
  - GitHub Actions
draft: false
repo: https://github.com/cloudon-one/git-security-scanner-public
marketplace: https://github.com/marketplace/actions/git-security-scanner
version: v2
dependentsNumber: "?"
---


Version updated for **https://github.com/cloudon-one/git-security-scanner-public** to version **v2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-security-scanner) to find the latest changes.

## Release notes

###  Security Improvements

- **Supply Chain Security**: Added SHA256 checksum verification for all downloaded security tools (Gitleaks, Trivy, OSV-Scanner, Helm) in the Dockerfile. This ensures that the binaries are authentic and have not been tampered with.
- **Bug Fixes**: Fixed Docker build errors by adding correct multi-arch checksums for all security tools.

###  Maintenance & Code Quality

- **Unit Tests**: Added a comprehensive unit test suite for `git-audit-script.py` to ensure reliability and prevent regressions.
- **Development Tools**: Added a `Makefile` to streamline building, testing, and running the scanner locally.
- **Code Quality**: Refactored `git-audit-script.py` to improve readability, added type hints, and fixed all linting errors (Ruff).
- **Documentation**: Updated README and documentation for v2.0.0.
