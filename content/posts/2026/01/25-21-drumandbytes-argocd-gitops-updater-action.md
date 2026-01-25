---
title: Container & Helm Version Updater
date: 2026-01-25 21:52:36 +00:00
tags:
  - drumandbytes
  - GitHub Actions
draft: false
repo: https://github.com/drumandbytes/argocd-gitops-updater-action
marketplace: https://github.com/marketplace/actions/container-helm-version-updater
version: v2.1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/drumandbytes/argocd-gitops-updater-action** to version **v2.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-helm-version-updater) to find the latest changes.

## Action Summary

The ArgoCD GitOps Updater Action automates the process of updating Helm chart and Docker image versions in GitOps repositories, ensuring they stay current. It supports auto-discovery, semantic versioning, and variant preservation while creating pull requests for updates and sending notifications via platforms like Slack or Discord. Designed for GitOps workflows, it integrates seamlessly with tools like ArgoCD and Kustomize, reducing manual effort and improving efficiency in managing dependencies.

## Release notes

## 🛡️ Security Improvements
* **Hardened against Code Injection:** Addressed multiple vulnerabilities flagged by CodeQL to sanitize inputs and secure execution paths (#12, #13, #14, #15).
* **Workflow Security:** Explicitly defined permissions for GitHub Action workflows to follow least-privilege principles (#11).

## 🧹 Maintenance
* Added `CODEOWNERS` file to clarify project governance and review processes (#9, #10).

**Full Changelog**: https://github.com/drumandbytes/argocd-gitops-updater-action/compare/v2.1.0...v2.1.1
