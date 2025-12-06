---
title: Zensical Action
date: 2025-12-05 05:20:29 +00:00
tags:
  - cssnr
  - GitHub Actions
draft: false
repo: https://github.com/cssnr/zensical-action
marketplace: https://github.com/marketplace/actions/zensical-action
version: v1.0.5
dependentsNumber: "4"
---


Version updated for **https://github.com/cssnr/zensical-action** to version **v1.0.5**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zensical-action) to find the latest changes.

## Release notes

- Fix Installing `zensical` when `project: false` and it is a project.

Now, this runs `source .venv/bin/activate` to run `zensical` vs `uv run zensical`.
Previously, running `uv run zensical` in a project, resolved project dependencies even if setup with `uv venv --no-project`.

## What's Changed
* Improvements for No Project by @smashedr in https://github.com/cssnr/zensical-action/pull/5


**Full Changelog**: https://github.com/cssnr/zensical-action/compare/v1.0.4...v1.0.5

🚀 Use this release with these tags:

```text
cssnr/zensical-action@latest
cssnr/zensical-action@v1
cssnr/zensical-action@v1.0
cssnr/zensical-action@v1.0.5
cssnr/zensical-action@91a316f695fd9b731da94b284db6866191c1a4df # v1.0.5
```

❤️ Please [report any issues](https://github.com/cssnr/zensical-action/issues) you find.
