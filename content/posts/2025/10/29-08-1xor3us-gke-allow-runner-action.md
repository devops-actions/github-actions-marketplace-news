---
title: GKE Allow Runner Action
date: 2025-10-29 08:59:31 +00:00
tags:
  - 1xor3us
  - GitHub Actions
draft: false
repo: https://github.com/1xor3us/gke-allow-runner-action
marketplace: https://github.com/marketplace/actions/gke-allow-runner-action
version: 1.0.2
dependentsNumber: "?"
---


Version updated for **https://github.com/1xor3us/gke-allow-runner-action** to version **1.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gke-allow-runner-action) to find the latest changes.

## Release notes

🚀 GKE Allow Runner Action — v1.0.2
✨ New Features & Improvements

🔏 Automatic Image Signing (OIDC + Sigstore)
- Docker images published to GHCR are now automatically signed using GitHub OIDC with Sigstore Cosign.
- No private key management required — the signature is linked to your verified GitHub workflow.

Fully verifiable via:
- 🔗 search.sigstore.dev

🧪 Reproducible Build Verification
- Added a detailed “Reproducible Build Verification” section in the README.
- Lets anyone verify that the binary inside the GHCR image is bit-for-bit identical to what can be built locally from this repository.
- Ensures full supply-chain transparency and verifiable integrity.

🐳 Automatic README & Action.yml Updates
Automatically updates:
- All version tags (v1.0.x)
- The image digest (SHA-256)
- Commits and pushes those updates to the main branch.
- Guarantees that all documentation always matches the latest published image.

⚙️ Internal Enhancements
- Updated to Cosign v4.0.0 (modern keyless signing support).
- Improved Dockerfile for fully reproducible builds.
- Added Windows / Linux / macOS instructions for local binary verification.
- Cleaner and more maintainable release pipeline.
