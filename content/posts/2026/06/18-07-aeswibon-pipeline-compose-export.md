---
title: Pipeline Compose Export
date: 2026-06-18 07:02:48 +00:00
tags:
  - aeswibon
  - GitHub Actions
draft: false
repo: https://github.com/aeswibon/pipeline-compose-export
marketplace: https://github.com/marketplace/actions/pipeline-compose-export
version: v1.17.1
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/aeswibon/pipeline-compose-export** to version **v1.17.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-compose-export) to find the latest changes.

## What's Changed

### Fixed

- **pipeline validate —strict** — add `.github/workflows/visualize.yml` to `companion_workflows` so CI passes with the visualizer workflow present. (It's a standalone workflow, not a pipeline stage.)

### Changed

- **CI actions** — bump `actions/github-script@v7` → `@v9`, `actions/upload-artifact@v4` → `@v7` to avoid Node 20 deprecation warnings.

---

Published from [aeswibon/pipeline-compose](https://github.com/aeswibon/pipeline-compose) monorepo tag [`v1.17.1`](https://github.com/aeswibon/pipeline-compose/releases/tag/v1.17.1).

