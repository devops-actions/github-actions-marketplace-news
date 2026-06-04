---
title: FreeCAD Gallery Builder
date: 2026-06-04 22:45:37 +00:00
tags:
  - schmiddim
  - GitHub Actions
draft: false
repo: https://github.com/schmiddim/freecad-action
marketplace: https://github.com/marketplace/actions/freecad-gallery-builder
version: v3.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/schmiddim/freecad-action** to version **v3.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/freecad-gallery-builder) to find the latest changes.

## What's Changed

Self-hosted 3D model gallery powered by FreeCAD, Three.js and GitHub Pages.

**[Live Demo](https://schmiddim.github.io/freecad/)** | **[Quick Start](https://github.com/schmiddim/freecad-action#quick-start)**

## What is this?

A GitHub Action that turns FreeCAD `.FCStd` files into an interactive 3D gallery on GitHub Pages. Push your CAD files, get a website -- no server needed.

```yaml
- uses: schmiddim/freecad-action@v3
What's new in v3
- MIT LICENSE added (was missing)
- README rewritten from scratch: badges, "Why?" section, quickstart-first structure, troubleshooting guide
- CONTRIBUTING.md and CHANGELOG.md added
- Aggregator docs improved -- opt-in to list your gallery on the FreeCAD Aggregator (https://freecad-aggregator.fly.dev/)
- All schema URLs updated to v3.0.0
- Project hygiene: dev docs moved to .github/, example files cleaned up
- First GitHub Marketplace release
Features
- Automatic STL export from FreeCAD files via Docker
- Interactive 3D viewer with Three.js
- Metadata, tags, images, license info per model
- Dark/light mode
- Maker profile with About page
- RSS and Atom feeds
- Machine-readable discovery document
- Optional aggregator ping for cross-gallery discoverability
- Fully buildable and testable locally via Makefile + Docker
Upgrading from v2
Update your workflow:
-- uses: schmiddim/freecad-action@v2
+- uses: schmiddim/freecad-action@v3
No breaking changes. All v2 configurations continue to work.

## What's Changed
* fix: bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/schmiddim/freecad-action/pull/7


**Full Changelog**: https://github.com/schmiddim/freecad-action/compare/v3.0.0...v3.0.1
