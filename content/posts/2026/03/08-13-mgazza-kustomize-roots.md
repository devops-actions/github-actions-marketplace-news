---
title: kustomize-roots
date: 2026-03-08 13:33:05 +00:00
tags:
  - mgazza
  - GitHub Actions
draft: false
repo: https://github.com/mgazza/kustomize-roots
marketplace: https://github.com/marketplace/actions/kustomize-roots
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mgazza/kustomize-roots** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kustomize-roots) to find the latest changes.

## Action Summary

The `kustomize-roots` GitHub Action identifies root `kustomization.yaml` files in a directory tree—those not referenced by other kustomizations—and optionally builds or validates them. It automates tasks like determining root kustomizations, rendering their outputs, and generating diffs of manifests for CI/CD workflows. Key capabilities include JSON output for root paths, building and exporting rendered manifests, generating interactive HTML diffs, and maintaining synchronized branches with rendered outputs for pull request reviews.

## Release notes

## What's New

### CLI diff subcommand
Compare two directories of rendered kustomize manifests:
```bash
kustomize-roots diff /tmp/base/ /tmp/head/
kustomize-roots diff -format html /tmp/base/ /tmp/head/ > diff.html
```

### GitHub Action: artifact mode
Renders manifests from both branches, generates an interactive HTML diff, uploads as an artifact, and posts a summary comment on the PR.

### GitHub Action: pr-branch mode
Maintains an orphan `rendered` branch with rendered manifests tracking main. Creates shadow PRs so reviewers see rendered diffs in GitHub's native Files Changed tab. Shadow PRs are auto-merged/closed when the source PR is merged/closed.

### New action inputs
- `mode` — `build` (default), `artifact`, or `pr-branch`
- `base-ref` — base git ref for diff modes
- `rendered-branch` — orphan branch name for pr-branch mode

### New action outputs
- `diff` — unified diff text
- `has-changes` — whether rendered manifests changed
- `shadow-pr` — shadow PR number (pr-branch mode)
