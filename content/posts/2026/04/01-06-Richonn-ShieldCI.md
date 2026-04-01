---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-01 06:15:43 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.3.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automatically generate secure CI/CD pipelines tailored to a project's stack and open a pull request with the generated workflows. It simplifies the creation of DevSecOps workflows by detecting the project's language, Docker, and Kubernetes usage, and incorporating security tools such as Gitleaks, Trivy, and static analysis tools (CodeQL or Semgrep). This action eliminates manual pipeline setup, ensuring consistent, security-focused automation for software projects.

## What's Changed

## What's new

### SBOM generation
ShieldCI now generates Software Bill of Materials workflows via [Syft](https://github.com/anchore/syft):

- **`sbom.yml`** — always generated, analyses the repository source and dependencies
- **`sbom-docker.yml`** — generated when a `Dockerfile` is detected, builds the image and generates a SBOM from it

SBOM files are uploaded as artifacts and available from the Actions run summary.

