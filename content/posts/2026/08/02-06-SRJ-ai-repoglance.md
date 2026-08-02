---
title: Repoglance Repo Insight
date: 2026-08-02 06:11:46 +00:00
tags:
  - SRJ-ai
  - GitHub Actions
draft: false
repo: https://github.com/SRJ-ai/repoglance
marketplace: https://github.com/marketplace/actions/repoglance-repo-insight
version: v0.2.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `repoglance` GitHub Action provides a fast, visual way to analyze code repositories by providing insights into various aspects such as language breakdown, complexity hotspots, TODO tracker, and git activity. It automates the process of gathering and displaying technical information about a repository in a user-friendly format without requiring any configuration or API keys.
---


Version updated for **https://github.com/SRJ-ai/repoglance** to version **v0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoglance-repo-insight) to find the latest changes.

## Action Summary

The `repoglance` GitHub Action provides a fast, visual way to analyze code repositories by providing insights into various aspects such as language breakdown, complexity hotspots, TODO tracker, and git activity. It automates the process of gathering and displaying technical information about a repository in a user-friendly format without requiring any configuration or API keys.

## What's Changed

Quality release.

- **Respects `.gitignore`** (via `git ls-files`) — parity with tokei/scc
- **Single file read** per file: complexity computed inline during the scan (~half the I/O on large repos)
- **Block-comment counting** for C-family languages
- GitHub repository renamed to `SRJ-ai/repoglance`; all URLs/badges updated
- Added `CHANGELOG.md`; test suite expanded to 29

```bash
pip install repoglance
```

