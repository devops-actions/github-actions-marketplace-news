---
title: Disensor Gate
date: 2026-08-21 06:45:09 +00:00
tags:
  - NicolasRocchia
  - GitHub Actions
draft: false
repo: https://github.com/NicolasRocchia/disensor
marketplace: https://github.com/marketplace/actions/disensor-gate
version: v0.6.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of generating and validating adversarial review reports with a residue declaration. It helps ensure that each adversarial review event ends in a terminal state and provides a record of what could not be closed on its own, facilitating human judgment. The action uses a JSON artifact to store this information, which is validated against a schema before being used for CI enforcement.
---


Version updated for **https://github.com/NicolasRocchia/disensor** to version **v0.6.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/disensor-gate) to find the latest changes.

## Action Summary

This GitHub Action automates the process of generating and validating adversarial review reports with a residue declaration. It helps ensure that each adversarial review event ends in a terminal state and provides a record of what could not be closed on its own, facilitating human judgment. The action uses a JSON artifact to store this information, which is validated against a schema before being used for CI enforcement.

## What's Changed

First release listed on the GitHub Marketplace.

disensor emits, validates and CI-enforces residue declarations: JSON artifacts that record how each adversarial review event ended (one model generates, a model from another family attacks, every finding reaches a terminal state) and, above all, what the cycle could not close on its own. This release runs on the residue/v0.3 schema.

Highlights up to v0.6.2: the adversarial prompt ships inside the package with a reproducible hash (disensor prompt), the gate derives the PR scope from git objects instead of the working tree, the v0.3 schema hardens evidence and minimized profile rules (issues #5, #7 and #8), and releases go to PyPI via Trusted Publishing. v0.6.2 also fixes the gate help text (nine checks, with the range flags documented) and the schema self-description.

Usage:

```yaml
- uses: NicolasRocchia/disensor@v0.6.2
```

Pin by SHA in production, as the deployment requirements in the README explain.

Docs and method: https://disensor.dev and DOI 10.5281/zenodo.21633495
