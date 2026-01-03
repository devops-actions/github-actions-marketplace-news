---
title: Veritensor AI Model Security Scanner
date: 2026-01-03 05:36:20 +00:00
tags:
  - ArseniiBrazhnyk
  - GitHub Actions
draft: false
repo: https://github.com/ArseniiBrazhnyk/Veritensor
marketplace: https://github.com/marketplace/actions/veritensor-ai-model-security-scanner
version: v1.1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/ArseniiBrazhnyk/Veritensor** to version **v1.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veritensor-ai-model-security-scanner) to find the latest changes.

## Action Summary

Veritensor is a security platform designed to ensure the safety, authenticity, compliance, and trustworthiness of AI models within the supply chain. It automates deep static analysis, cryptographic verification, and license compliance checks for AI frameworks such as PyTorch, Keras, and GGUF, detecting threats and tampering while blocking non-compliant models. Additionally, it integrates with CI/CD pipelines and tools like Sigstore Cosign to secure and sign AI models and Docker containers before deployment.

## Release notes

🚀 **Major Update: Production Ready!**

We are excited to announce the release of **Veritensor v1.1.1**. This version brings enterprise-grade features to the open-source community.

**🔥 New Features:**
*   **License Firewall:** Automatically detects and blocks models with restrictive licenses (e.g., `CC-BY-NC`, `AGPL`). Don't let non-commercial models leak into your product!
*   **Optimized Dependencies:** We removed heavy ML libraries from the core package. Installation is now lightning fast (~50x smaller).
*   **Improved Identity Check:** Smarter verification against Hugging Face Registry with helpful suggestions if files are missing.
*   **Robust Docker Support:** New entrypoint script handles complex arguments and spaces in filenames correctly.

**📦 Installation:**
```bash
pip install veritensor==1.1.1
```

**🛡️ GitHub Action:**
```yaml
uses: ArseniiBrazhnyk/Veritensor@v1.1.1
```

Upgrade now to secure your AI Supply Chain!

