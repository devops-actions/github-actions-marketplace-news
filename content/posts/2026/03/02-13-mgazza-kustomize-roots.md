---
title: kustomize-roots
date: 2026-03-02 13:19:02 +00:00
tags:
  - mgazza
  - GitHub Actions
draft: false
repo: https://github.com/mgazza/kustomize-roots
marketplace: https://github.com/marketplace/actions/kustomize-roots
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mgazza/kustomize-roots** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kustomize-roots) to find the latest changes.

## Action Summary

The **`kustomize-roots` GitHub Action** identifies root `kustomization.yaml` files within a directory tree — those not referenced by any other kustomization. It automates the discovery and validation process in CI workflows, allowing you to focus only on building root configurations, which reduces redundancy and ensures efficient validation. Key capabilities include finding root kustomizations, outputting results in multiple formats, and optionally building them to validate their correctness.

## Release notes

## kustomize-roots v1.0.0

Find and optionally build root kustomization files in a directory tree — the ones that nothing else references.

### Features

- **Discover** root kustomization files by building a reference graph from `resources`, `components`, and `bases` fields
- - **Build** all roots via `kustomize build` (with `kubectl kustomize` fallback)
- - **Output** results as plain text or JSON array
- - **Exclude** directories using glob patterns
- - Supports `kustomization.yaml`, `kustomization.yml`, and `Kustomization` filename variants
- - Skips remote references (GitHub/GitLab shorthand, HTTP URLs, `?ref=`/`?version=` params)
### GitHub Action Usage

```yaml
- uses: mgazza/kustomize-roots@v1
-   id: roots
-   with:
-     directory: .
-     exclude: ".git vendor"
- run: echo "${{ steps.roots.outputs.roots }}"
- ```
### CLI Usage

```bash
go install github.com/mgazza/kustomize-roots@latest
kustomize-roots -json /path/to/repo
```
