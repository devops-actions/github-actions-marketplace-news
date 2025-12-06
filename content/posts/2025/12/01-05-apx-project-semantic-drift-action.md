---
title: APX Semantic Drift
date: 2025-12-01 05:33:48 +00:00
tags:
  - apx-project
  - GitHub Actions
draft: false
repo: https://github.com/apx-project/semantic-drift-action
marketplace: https://github.com/marketplace/actions/apx-semantic-drift
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/apx-project/semantic-drift-action** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apx-semantic-drift) to find the latest changes.

## Release notes

## 🚀 APX Semantic Drift Action v0.1.0

**Implements Law #1 of Evolvable Software:** _"All systems drift unless governed."_

### Features
- 🏷️ Adds semantic labels to PRs (`apx:pack=`, `apx:impact=`, `apx:trait=`)
- 💬 Posts drift summary comments for reviewers
- 🔒 Optional security gate — fail on high/critical drift

### Usage
```yaml
- uses: apx-project/semantic-drift-action@v0.1.0
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

### What's Next
This is Law #1 of 7. The full APX platform covers constraints, lineage, evolution, fitness, replay, and mathematical safety.

📖 [Full documentation](https://github.com/apx-project/semantic-drift-action#readme)
