---
title: GKE Allow Runner Action
date: 2025-10-31 16:59:45 +00:00
tags:
  - 1xor3us
  - GitHub Actions
draft: false
repo: https://github.com/1xor3us/gke-allow-runner-action
marketplace: https://github.com/marketplace/actions/gke-allow-runner-action
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/1xor3us/gke-allow-runner-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gke-allow-runner-action) to find the latest changes.

## Release notes

🔐 Release v1.1.0 — Secure Provenance with SLSA v1

This release introduces **SLSA v1 provenance attestation** and enhanced supply chain integrity via **Sigstore keyless signing**.
The action itself is functionally identical to previous versions (v1.0.x), but the build and verification chain are now fully compliant with SLSA Level 3+ provenance.

🧩 What’s new
- ✅ **SLSA Provenance v1 support** — replaces legacy `v0.2` predicate with the official `v1` format.
- ✅ **Keyless signing via GitHub OIDC** (no private key needed).
- ✅ **Full in-toto / DSSE attestation** published to GHCR (.att files).
- ✅ **Cosign verification compatibility** with the latest cosign verify-attestation.
- ✅ **Updated README** — includes reproducible build verification & provenance validation steps.

No change to:
- Inputs, outputs, or behavior of the Action
- Binary code or runtime logic
- Security permissions or required scopes

🧠 Why this matters
This upgrade brings **transparent, verifiable builds**:
anyone can confirm that the container image you use was built directly from this repository’s source code — with a full cryptographic audit trail.

This means:
No human signing key
No opaque CI pipeline
Complete traceability from source → build → container

Built using the [SLSA GitHub Generator](https://github.com/slsa-framework/slsa-github-generator?utm_source=chatgpt.com)
 with provenance signed via **Sigstore Fulcio + Rekor transparency logs**.
