---
title: zotio bibliography health for Zotero
date: 2026-07-07 15:22:46 +00:00
tags:
  - OrgMentem
  - GitHub Actions
draft: false
repo: https://github.com/OrgMentem/zotio-action
marketplace: https://github.com/marketplace/actions/zotio-bibliography-health-for-zotero
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/OrgMentem/zotio-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zotio-bibliography-health-for-zotero) to find the latest changes.

## What's Changed

**New:** every run writes a verdict table to the job step summary, and the action now exposes `exit-code`, `message`, and `color` outputs for downstream steps (PR comments, badge publishing).

**README:** now leads with what you get — the deterministic exit-code gate, retraction checking (with demo GIF), the badge-that-never-lies, and the key operational insight: your Zotero library drifts outside git, so run the gate on a `schedule`, not just on push.
