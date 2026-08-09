---
title: Arcana CI Gate
date: 2026-08-09 05:51:33 +00:00
tags:
  - RewithSolo
  - GitHub Actions
draft: false
repo: https://github.com/RewithSolo/arcana-gate
marketplace: https://github.com/marketplace/actions/arcana-ci-gate
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Arcana Gate** is a deterministic quality gate CLI tool that uses Tarot Major Arcana to make release decisions. It automates the deployment process by checking for negative cards before proceeding, thereby ensuring the integrity and safety of software deployments in production. The action provides absolute determinism through SHA-256 hashing and ensures zero flaky outcomes, making it ideal for DevSecOps teams.
---


Version updated for **https://github.com/RewithSolo/arcana-gate** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/arcana-ci-gate) to find the latest changes.

## Action Summary

**Arcana Gate** is a deterministic quality gate CLI tool that uses Tarot Major Arcana to make release decisions. It automates the deployment process by checking for negative cards before proceeding, thereby ensuring the integrity and safety of software deployments in production. The action provides absolute determinism through SHA-256 hashing and ensures zero flaky outcomes, making it ideal for DevSecOps teams.

## What's Changed

# Arcana Gate v1.0.1 — New Release 🔮
Enable GitHub Summary Markdown report and update card render.
<p align="center">
  <img src="https://raw.githubusercontent.com/RewithSolo/arcana-gate/main/assets/demo.png" alt="Arcana Gate Preview Negative" width="48%"/>
  <img src="https://raw.githubusercontent.com/RewithSolo/arcana-gate/main/assets/demo_summary.png" alt="Arcana Gate Preview Positive" width="48%"/>
</p>

### 📦 Quick Start
#### Usage in GitHub Actions:
```yaml
- name: Run Arcana Gate Check
  uses: RewithSolo/arcana-gate@v1.0.1

```
#### Running CLI Manually:
Download the pre-built binary for your OS from the **Assets** section below, or build it from source:
```bash
go build -o arcana-gate ./cmd/arcana-gate
./arcana-gate

```
**Full Changelog**: https://github.com/RewithSolo/arcana-gate/commits/v1.0.1



## Changelog
* 3be5fc12d74362024e315f19ea1aa462d788f227 ci: add demo workflow for test arcana-gate
* 16c88373a008ea5b4e8b72364b7411937e64e752 fix: action.yaml
* d496fa3210c99ef4585654a6b1f54ad8b9edf0c4 fix: action.yaml
* b3a8979d183627917973a5bfc0be8a832e03ff89 fix: visual render and refactor action.yaml to composite


