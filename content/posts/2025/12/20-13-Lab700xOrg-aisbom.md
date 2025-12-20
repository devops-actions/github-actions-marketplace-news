---
title: AIsbom Security Scanner
date: 2025-12-20 13:04:26 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Release notes

## Remote Scanning (New!)
You can now scan models hosted on Hugging Face without downloading them.
```bash
aisbom scan hf://google-bert/bert-base-uncased
```

* Uses HTTP Range requests to stream only headers and metadata.
* Saves bandwidth and disk space.
