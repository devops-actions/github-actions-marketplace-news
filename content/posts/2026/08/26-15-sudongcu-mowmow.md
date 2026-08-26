---
title: mowmow lawn
date: 2026-08-26 15:01:07 +00:00
tags:
  - sudongcu
  - GitHub Actions
draft: false
repo: https://github.com/sudongcu/mowmow
marketplace: https://github.com/marketplace/actions/mowmow-lawn
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The mowmow action automates the creation of a visual representation of GitHub contributions in the form of an animated SVG. It generates a lawn-like graphic that reflects the developer's contribution history, with each commit representing a tuft of grass that grows over time. The action is set to run daily and can be easily integrated into any public repository by adding a workflow configuration file to the `.github/workflows` directory.
---


Version updated for **https://github.com/sudongcu/mowmow** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mowmow-lawn) to find the latest changes.

## Action Summary

The mowmow action automates the creation of a visual representation of GitHub contributions in the form of an animated SVG. It generates a lawn-like graphic that reflects the developer's contribution history, with each commit representing a tuft of grass that grows over time. The action is set to run daily and can be easily integrated into any public repository by adding a workflow configuration file to the `.github/workflows` directory.

## What's Changed

- longer `cycle`s no longer leave the mower parked off-screen for ages: the pause after the last pass is a fixed ~6.7s now, however long the loop. at cycle=90 that used to be ~13s of finished lawn — long enough to look broken
- 28s is still the floor; below it timings get clamped with a warning, same as before
- playground: dropped the PAT suggestion from the "mostly dirt?" note — a PAT can't surface private contributions, the profile toggle is the only fix
- ci runs on every push, and pushing a version tag now moves `v1` and cuts the release automatically

