---
title: Big Diff Energy
date: 2025-11-19 05:23:48 +00:00
tags:
  - lukasjuhas
  - GitHub Actions
draft: false
repo: https://github.com/lukasjuhas/big-diff-energy-action
marketplace: https://github.com/marketplace/actions/big-diff-energy
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/lukasjuhas/big-diff-energy-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/big-diff-energy) to find the latest changes.

## Release notes

## 🐛 Bug Fixes & Improvements

- ✅ Fixed image display by using GitHub raw URL instead of base64 encoding
- ✅ Added GitHub diff colors: green for additions, red for deletions
- ✅ Cleaner code with removed unused dependencies

### What Changed
- Image now loads properly in PR comments 🖼️
- Stats now match GitHub's native diff styling 🎨

### Usage
\`\`\`yaml
- uses: lukasjuhas/big-diff-energy-action@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
\`\`\`
