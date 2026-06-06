---
title: KafkaCode Privacy Scan
date: 2026-06-06 06:33:25 +00:00
tags:
  - nikhil-kapu
  - GitHub Actions
draft: false
repo: https://github.com/nikhil-kapu/kafkacode
marketplace: https://github.com/marketplace/actions/kafkacode-privacy-scan
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/nikhil-kapu/kafkacode** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kafkacode-privacy-scan) to find the latest changes.

## What's Changed

Machine-readable output for automation and the GitHub Security tab.

### Added
- 📦 `--format json` — structured report (summary, grade, findings) for scripts and dashboards
- 🛡️ `--format sarif` — SARIF 2.1.0 for **GitHub code scanning** (Security tab + inline PR annotations)
- `--output <file>` — write results to a file
- `--no-fail` — exit `0` even when issues are found (handy when uploading SARIF)

### Upload SARIF in CI
```yaml
- run: npx kafkacode scan ./src --format sarif --output kafkacode.sarif --no-fail
- uses: github/codeql-action/upload-sarif@v3
  with:
    sarif_file: kafkacode.sarif
```
