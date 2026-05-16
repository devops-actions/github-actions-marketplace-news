---
title: AIsbom Security Scanner
date: 2026-05-16 21:27:18 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.0.2
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanner designed to analyze machine learning artifacts, such as model files and dependencies, for potential risks. It performs deep binary introspection to detect malware, security vulnerabilities, and legal license violations hidden within serialized model weights, going beyond standard SBOM tools that only analyze dependency files. Its key capabilities include generating CycloneDX-compliant Software Bill of Materials (SBOMs), supporting air-gapped environments, and providing detailed security and legal risk assessments for AI models.

## What's Changed

Patch release. Two e2e-discovered bugs in v1.0.1 fixed: inputs are now passed positionally so we don't depend on POSIX-illegal env var names with hyphens, and the entrypoint uses bash so PIPESTATUS captures the scan's exit code (not tee's). The fail-on-risk gate works correctly now.
