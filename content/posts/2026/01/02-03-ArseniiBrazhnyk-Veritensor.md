---
title: Veritensor AI Model Security Scanner
date: 2026-01-02 03:17:33 +00:00
tags:
  - ArseniiBrazhnyk
  - GitHub Actions
draft: false
repo: https://github.com/ArseniiBrazhnyk/Veritensor
marketplace: https://github.com/marketplace/actions/veritensor-ai-model-security-scanner
version: v1.0.4
dependentsNumber: "?"
---


Version updated for **https://github.com/ArseniiBrazhnyk/Veritensor** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veritensor-ai-model-security-scanner) to find the latest changes.

## Action Summary

Veritensor is a Zero-Trust security platform designed to secure the AI supply chain by performing deep static analysis and cryptographic verification of AI models and containers. It detects malicious code, verifies model authenticity against trusted registries like Hugging Face, and ensures deployment of only trusted and signed models and containers. With integration into CI/CD pipelines and container signing tools like Sigstore Cosign, it automates malware detection, tampering prevention, and secure deployment workflows.

## Release notes

🚀Veritensor v1.0.3: Community Edition Launch

Veritensor (formerly Aegis) is the first Zero-Trust Security Scanner designed specifically for the AI Supply Chain. This release marks the official launch of the Community Edition, ready for production use in CI/CD pipelines.


✨Key Features

🛡️Deep Static Analysis


Unlike standard antiviruses, Veritensor understands AI model formats. It decompiles bytecode to detect obfuscated attacks:
 
- Pickle / PyTorch: Detects RCE (Remote Code Execution), STACK_GLOBAL exploits, and unsafe imports (os, subprocess, marshal).
- Keras: Detects malicious Lambda layers injection.
- GGUF / Safetensors: Validates metadata and headers structure.



🔐Identity Verification (Hash-to-API)

- Automatically verifies local model hashes against the official Hugging Face registry.
- Detects Man-in-the-Middle attacks and corrupted files.
- Supports Git LFS pointer resolution.

⛓️Supply Chain Security

- Sigstore Cosign Integration: Cryptographically signs Docker containers only if the model scan passes.
- Break-glass Mode: Allows forcing a deployment with --force (audit logs preserved).

🤖CI/CD Native

- GitHub Action: Now available in the GitHub Marketplace.
- Pre-commit Hook: Prevent committing malicious models with native pre-commit support.
- Docker Support: Official image arseniibrazhnyk/veritensor:latest.



**📦Installation & Usage**
**PyPI**
```

pip install veritensor
veritensor scan ./models/bert.pt
```
**GitHub Actions**
```
- uses: ArseniiBrazhnyk/Veritensor@v1.0.3
  with:
    path: './models'
    repo: 'meta-llama/Llama-2-7b'
```
**Pre-commit**
```
- repo: https://github.com/ArseniiBrazhnyk/Veritensor
  rev: v1.0.3
  hooks:
    - id: veritensor-scan

```
**Full Changelog:** [https://github.com/ArseniiBrazhnyk/Veritensor/commits/v1.0.3](https://github.com/ArseniiBrazhnyk/Veritensor/commits/v1.0.3)
