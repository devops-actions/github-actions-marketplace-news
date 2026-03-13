---
title: Sentinel AI Compliance Scan
date: 2026-03-13 21:36:32 +00:00
tags:
  - MOXO08
  - GitHub Actions
draft: false
repo: https://github.com/MOXO08/sentinel-scan-action
marketplace: https://github.com/marketplace/actions/sentinel-ai-compliance-scan
version: v1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/MOXO08/sentinel-scan-action** to version **v1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-ai-compliance-scan) to find the latest changes.

## Action Summary

The Sentinel AI Compliance Scan GitHub Action performs automated audits to verify compliance with the EU AI Act directly within CI/CD pipelines. It uses a high-performance WebAssembly engine to deliver deterministic, privacy-preserving scans without data leaving the runner. By mapping technical assets against key EU AI Act requirements and blocking non-compliant deployments, it ensures regulatory alignment and prevents violations in production environments.

## Release notes

### 🚀 Sentinel v1.1 - The "Shift-Left" Update

This release optimizes Sentinel for enterprise-grade deployments on the GitHub Marketplace. We've focused on minimizing friction and maximizing audit integrity for EU AI Act compliance.

#### ✨ Key Improvements:
- **Hardened Metadata:** Visual branding optimized with industrial-grade icons and UI markers for Marketplace visibility.
- **Improved DX:** Streamlined README documentation for one-click integration in existing CI/CD pipelines.
- **WASM Core Stability:** Fine-tuned the deterministic engine for consistent 0.21ms latency across diverse GitHub runner environments.

#### 🛠 Integration:
Add this to your `.github/workflows/main.yml`:
```yaml
- name: Sentinel AI Scan
  uses: MOXO08/sentinel-scan-action@v1.1
  with:
    manifest: './your-ai-manifest.json'
