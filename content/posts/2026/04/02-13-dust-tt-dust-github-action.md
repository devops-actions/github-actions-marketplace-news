---
title: Dust GitHub Action
date: 2026-04-02 13:59:23 +00:00
tags:
  - dust-tt
  - GitHub Actions
draft: false
repo: https://github.com/dust-tt/dust-github-action
marketplace: https://github.com/marketplace/actions/dust-github-action
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/dust-tt/dust-github-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dust-github-action) to find the latest changes.

## Action Summary

The Dust GitHub Action automates the synchronization of Agent Skills (`SKILL.md` files) from a GitHub repository to a Dust workspace. It packages skill directories into a ZIP file and uploads them, ensuring your Dust workspace is always in sync with the latest skill definitions. This action streamlines the management of Agent Skills by automating updates and providing outputs like imported and updated skill counts for better tracking.

## What's Changed

## 🎉 Initial Release: `dust-github-action` v0.1.0

The first release of the **Dust GitHub Action** - a GitHub Action to sync content from your repository to your [Dust](https://dust.tt/) workspace.

### `upsert-skills`

Automatically sync Agent Skills from your repo to Dust. On every push, the action discovers `SKILL.md` files, packages them, and upserts them to your workspace.

````yaml
- uses: dust-tt/dust-github-action@v0.1.0
  with:
    method: upsert-skills
    workspace-id: ${{ vars.DUST_WORKSPACE_ID }}
    api-key: ${{ secrets.DUST_API_KEY }}
    region: EU
````

Each skill is a directory with a `SKILL.md` file following the [Agent Skills specification](https://agentskills.io/specification). The action outputs the number of skills `imported` and `updated`.
