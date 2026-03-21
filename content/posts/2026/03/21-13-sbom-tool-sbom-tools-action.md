---
title: sbom-tools-action
date: 2026-03-21 13:30:09 +00:00
tags:
  - sbom-tool
  - GitHub Actions
draft: false
repo: https://github.com/sbom-tool/sbom-tools-action
marketplace: https://github.com/marketplace/actions/sbom-tools-action
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sbom-tool/sbom-tools-action** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-tools-action) to find the latest changes.

## Action Summary

The `sbom-tools` GitHub Action integrates the `sbom-tools` utility into GitHub workflows to automate Software Bill of Materials (SBOM) management tasks, such as semantic diffing, validation, quality scoring, enrichment, vulnerability analysis, and license compliance checks. It simplifies SBOM handling by providing pre-built, verified binaries and supports advanced features like provenance verification via Sigstore/SLSA. This action enhances supply chain security and ensures compliance with industry standards by automating complex SBOM-related operations.

## Release notes

## Strict provenance by default

In response to the [ongoing GitHub Actions tag-poisoning campaign](https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise), this release changes defaults to block compromised binary releases.

### Breaking change
- **`verify-provenance` now defaults to `require`** — the action will hard-fail if Sigstore/SLSA provenance cannot be verified. Set `verify-provenance: warn` to restore the previous soft-fail behavior for older releases without provenance.

### Repository hardening
- **Tag rulesets enabled** — force-push and deletion of tags is now blocked on both `sbom-tools-action` and `sbom-tools` repos. Zero bypass actors.
- **Branch protection enabled** — `main` branch requires PR + approval + last-push approval.

### SHA pinning
All README examples now use commit SHA pinning as the recommended pattern:
```yaml
- uses: sbom-tool/sbom-tools-action@3f297788f2356079ef088d5c357d48d626b59e91 # v1.3.0
```
Tags are mutable pointers. SHAs are proof.
