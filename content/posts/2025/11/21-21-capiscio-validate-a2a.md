---
title: Validate A2A Agent Card
date: 2025-11-21 21:17:52 +00:00
tags:
  - capiscio
  - GitHub Actions
draft: false
repo: https://github.com/capiscio/validate-a2a
marketplace: https://github.com/marketplace/actions/validate-a2a-agent-card
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/capiscio/validate-a2a** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-a2a-agent-card) to find the latest changes.

## Release notes

### Changed
- **Core Migration**: Migrated from legacy Node.js CLI (`capiscio-cli`) to high-performance Go binary (`capiscio-core` v1.0.2).
- **Performance**: Removed `npm install -g` step, significantly reducing action startup time.
- **Platform Support**: Added native support for Linux, macOS, and Windows runners (AMD64/ARM64).
- **License**: Changed license from MIT to Apache-2.0 to align with the CapiscIO ecosystem.

### Fixed
- Improved error handling during binary download and execution.
