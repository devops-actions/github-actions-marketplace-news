---
title: Lineage Baseline
date: 2025-12-11 13:33:41 +00:00
tags:
  - Lineage-org
  - GitHub Actions
draft: false
repo: https://github.com/Lineage-org/lineage-baseline
marketplace: https://github.com/marketplace/actions/lineage-baseline
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/Lineage-org/lineage-baseline** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lineage-baseline) to find the latest changes.

## Release notes

**First release of Lineage Baseline GitHub Action**

Lineage provides scalable policy governance and enforcement for organizations. It allows you to define security policies, coding standards and infrastructure rules in a central baseline and automatically propagate them to hundreds of consumer repositories without the maintenance burden.

### Key Features

*   **Automated Policy Sync:** Keep repositories up-to-date with organization standards automatically.
*   **Smart Merging:** Intelligent 3-way merge logic allows local customizations to coexist with upstream policy updates—no more blind overwrites.
*   **Configuration-Driven:** Customize policies per repository using a simple `.lineage.toml` file.
*   **Nix-Powered:** Uses the **Determinate Systems** Nix installer for reliable, reproducible and hermetic policy generation.
*   **Conflict Handling:** Gracefully handles merge conflicts by creating Pull Requests with clear conflict markers instead of failing pipelines.

### Usage

Add this action to your workflow to enforce policies:

```yaml
steps:
  - uses: actions/checkout@v5
  - uses: Lineage-org/lineage-baseline@stable
    with:
      command: check
      # Optional: select specific packs
      packs: editorconfig,license
```

### Documentation

*   [Architecture & Concepts](https://github.com/Lineage-org/lineage-baseline/blob/main/docs/architecture.md)
*   [Usage Guide](https://github.com/Lineage-org/lineage-baseline/blob/main/docs/usage.md)
*   [Security Policy](https://github.com/Lineage-org/lineage-baseline/blob/main/docs/security.md)

