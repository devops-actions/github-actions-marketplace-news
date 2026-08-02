---
title: Arcana CI Gate
date: 2026-08-02 06:17:29 +00:00
tags:
  - RewithSolo
  - GitHub Actions
draft: false
repo: https://github.com/RewithSolo/arcana-gate
marketplace: https://github.com/marketplace/actions/arcana-ci-gate
version: v1.0.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  **Arcana Gate** is a deterministic quality gate CLI tool and GitHub Action that uses Tarot Major Arcana to delegate deployment decisions. It ensures that only high-quality code passes through the pipeline, reducing risks associated with unpredictable deployments. The action provides strict cryptographic engineering, ensuring reproducibility across different runners and executions.
---


Version updated for **https://github.com/RewithSolo/arcana-gate** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/arcana-ci-gate) to find the latest changes.

## Action Summary

**Arcana Gate** is a deterministic quality gate CLI tool and GitHub Action that uses Tarot Major Arcana to delegate deployment decisions. It ensures that only high-quality code passes through the pipeline, reducing risks associated with unpredictable deployments. The action provides strict cryptographic engineering, ensuring reproducibility across different runners and executions.

## What's Changed

# Arcana Gate v1.0.0 — Initial Release 🔮
First stable release of **Arcana Gate** — a Go-based CLI tool and GitHub Action for automated deployment gating driven by Major Arcana Tarot cards.
<p align="center">
  <img src="https://raw.githubusercontent.com/RewithSolo/arcana-gate/main/assets/demo.png" alt="Arcana Gate Preview Negative" width="48%"/>
  <img src="https://raw.githubusercontent.com/RewithSolo/arcana-gate/main/assets/demo_positive.png" alt="Arcana Gate Preview Positive" width="48%"/>
</p>

### 🚀 Key Features
 * **Deterministic Gate Engine:** Card selection and orientation (upright / reversed) are calculated deterministically based on the GITHUB_SHA (commit hash).
 * **Tarot Domain Logic:** Clean and isolated business logic for deployment risk assessment powered by the Major Arcana deck.
 * **GitHub Actions Native:** Built-in support for rendering execution results directly into GitHub Step Summary.
### 🛡️ Security & Quality (DevSecOps)
 * **0 Known CVEs:** Executables and container builds passed security scans via govulncheck and Trivy (built with Go 1.26 stdlib).
 * **High Test Coverage:** Unit test coverage for core domain logic with race detector (-race) enabled.
 * **Automated Release Pipeline:** Automated multi-platform binary compilation and packaging via GoReleaser v2.
### 📦 Quick Start
#### Usage in GitHub Actions:
```yaml
- name: Run Arcana Gate Check
  uses: RewithSolo/arcana-gate@v1.0.0

```
#### Running CLI Manually:
Download the pre-built binary for your OS from the **Assets** section below, or build it from source:
```bash
go build -o arcana-gate ./cmd/arcana-gate
./arcana-gate

```
**Full Changelog**: https://github.com/RewithSolo/arcana-gate/commits/v1.0.0


