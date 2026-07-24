---
title: trigger-tree docs discoverability gate
date: 2026-07-24 06:27:51 +00:00
tags:
  - Hedde
  - GitHub Actions
draft: false
repo: https://github.com/Hedde/trigger_tree
marketplace: https://github.com/marketplace/actions/trigger-tree-docs-discoverability-gate
version: v1.24.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  trigger-tree is a local tool that records discovery evidence to improve documentation quality by monitoring which AI coding assistants are accessing project documentation. It helps identify patterns, guardrails, and areas of improvement in the documentation process without relying on cloud analytics or model tokens. The action supports various platforms and provides insights into the health and effectiveness of documentation for teams.
---


Version updated for **https://github.com/Hedde/trigger_tree** to version **v1.24.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigger-tree-docs-discoverability-gate) to find the latest changes.

## Action Summary

trigger-tree is a local tool that records discovery evidence to improve documentation quality by monitoring which AI coding assistants are accessing project documentation. It helps identify patterns, guardrails, and areas of improvement in the documentation process without relying on cloud analytics or model tokens. The action supports various platforms and provides insights into the health and effectiveness of documentation for teams.

## What's Changed

Both findings below were reported by @BartWaardenburg — thank you.

- The structural inventory follows git's view of the repository (#16): a file
  excluded by `.gitignore` can no longer surface as a router member, orphan,
  or missing entry point in `tt-stats` or `tt gate`. The scope scanner and
  the structure inventory now share one git-visible source of truth; the
  filesystem walk remains the fallback outside git repositories.
- Watched surfaces behind a directory symlink are named instead of silently
  missing (#15): the stats payload gains `unfollowed_surfaces` (path, target,
  reason), the health grade states its scope explicitly (evaluable docs), a
  health driver counts unfollowed surfaces, and `tt doctor` warns with the
  paths. Symlinks are still never followed — bytes outside the repository
  stay out of the deterministic score by design; the boundary is documented
  in the heat-model guide.

---

**Install (Claude Code)**

```
/plugin marketplace add Hedde/trigger_tree
/plugin install trigger-tree@trigger-tree
```

**Install (Codex, pinned to this release)**

```
codex plugin marketplace add Hedde/trigger_tree --ref v1.24.0
codex plugin add trigger-tree@trigger-tree
```

[Website](https://hedde.github.io/trigger_tree/) · [Documentation](https://github.com/Hedde/trigger_tree/tree/main/docs) · [Changelog](https://github.com/Hedde/trigger_tree/blob/main/CHANGELOG.md) · [Privacy](https://github.com/Hedde/trigger_tree/blob/main/PRIVACY.md)

