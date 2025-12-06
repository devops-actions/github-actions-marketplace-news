---
title: unimport
date: 2025-08-01 16:58:45 +00:00
tags:
  - hakancelikdev
  - GitHub Actions
draft: false
repo: https://github.com/hakancelikdev/unimport
marketplace: https://github.com/marketplace/actions/unimport
version: 1.3.0
dependentsNumber: "124"
---


Version updated for **https://github.com/hakancelikdev/unimport** to version **1.3.0**.
- This action is used across all versions by **124** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unimport) to find the latest changes.

## Release notes

## [1.3.0] - 2025-08-01

### Added

- Python 3.13 support added

### Changed

- Python 3.8 support dropped
  - Updated minimum Python version requirement from 3.8+ to 3.9+
  - Removed Python 3.8 from CI/CD pipeline and testing environments
  - Updated all configuration files to reflect Python 3.9+ support
- Upgraded all package versions in use

### Fixed

- Replace deprecated lib2to3 imports with ast module in test cases
  - Fixed deprecation warning in Python 3.10+ compatibility
  - Updated test cases to use modern ast module instead of deprecated lib2to3 package
  - All tests now pass without deprecation warnings
