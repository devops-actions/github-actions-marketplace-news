---
title: OSSystems Nix Actions
date: 2026-06-22 23:48:20 +00:00
tags:
  - OSSystems
  - GitHub Actions
draft: false
repo: https://github.com/OSSystems/nix-actions
marketplace: https://github.com/marketplace/actions/ossystems-nix-actions
version: v1.0.2
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/OSSystems/nix-actions** to version **v1.0.2**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossystems-nix-actions) to find the latest changes.

## What's Changed

fix: attribute update-flake PR commits to the bot (`github-actions[bot]`) instead of `github.actor`.

`peter-evans/create-pull-request` defaults the commit author to `github.actor`, which on scheduled/automated runs resolves to whoever set up the workflow. Set `committer`/`author` explicitly so update-flake PRs are attributed to the bot.
