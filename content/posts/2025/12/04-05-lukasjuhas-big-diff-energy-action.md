---
title: Big Diff Energy
date: 2025-12-04 05:28:06 +00:00
tags:
  - lukasjuhas
  - GitHub Actions
draft: false
repo: https://github.com/lukasjuhas/big-diff-energy-action
marketplace: https://github.com/marketplace/actions/big-diff-energy
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/lukasjuhas/big-diff-energy-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/big-diff-energy) to find the latest changes.

## Release notes

### New Features

- **Custom Title**: Use the `title` input to customize the comment title
- **Custom Message**: Use the `message` input to customize the message shown below the stats
- **Custom Image**: Use the `image-url` input to use your own image

### Example

- uses: lukasjuhas/big-diff-energy-action@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    title: "⚠️ Large PR detected"
    message: "Please consider splitting this into smaller PRs."
    image-url: "https://example.com/your-image.png"All inputs are optional with sensible defaults for backward compatibility.
