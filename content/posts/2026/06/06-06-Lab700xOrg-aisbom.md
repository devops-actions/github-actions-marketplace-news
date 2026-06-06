---
title: AIsbom Security Scanner
date: 2026-06-06 06:37:55 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## What's Changed

### What's new
Private & gated Hugging Face model scanning — authenticate with an environment token.

* **Token auth**: set `HF_TOKEN` (or `HUGGING_FACE_HUB_TOKEN`) and AIsbom can scan private and gated `hf://` models. The token is sent only to `huggingface.co`, is dropped on the redirect to the LFS CDN, and is never written to logs or telemetry.
* **Clearer fetch errors**: auth, network, and not-found failures now print a concise, status-aware message (no traceback) and exit non-zero, instead of silently reporting zero artifacts.
* **CI guidance**: README now shows the `secrets.HF_TOKEN` usage pattern and the egress requirement (HTTPS to `huggingface.co` and its LFS CDN).

### What's not changing
Scanner behavior, exit codes, and output formats (CycloneDX / SPDX / Markdown) are identical to v1.0.7. Public-model scans still work with no token. Telemetry remains opt-out via `AISBOM_NO_TELEMETRY=1`; the only token-related field collected is a `token_present` boolean — never the value.

