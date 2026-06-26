---
title: RsMetaCheck
date: 2026-06-26 22:27:10 +00:00
tags:
  - SoftwareUnderstanding
  - GitHub Actions
draft: false
repo: https://github.com/SoftwareUnderstanding/rs-metacheck-action
marketplace: https://github.com/marketplace/actions/rsmetacheck
version: 0.3.2
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/SoftwareUnderstanding/rs-metacheck-action** to version **0.3.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsmetacheck) to find the latest changes.

## What's Changed

This release bumps the underlying RSMetaCheck tool to **v0.3.3** (previously unpinned/latest).
 >
 > **RsMetaCheck v0.3.3 changelog:**
 > - Added support for repository-level config files and profile-driven execution (e.g., dev vs. prerelease)
 > - Improved SoMEF failure handling with early abort and clear errors
 > - Expanded pytest suite for new configuration pathways
 > - Patches to pitfall/warning detection logic and ground truth dataset
 >
 > **Action changes:**
 > - Pinned `rsmetacheck==0.3.3` in the Dockerfile
 >
See: https://github.com/SoftwareUnderstanding/RsMetaCheck/releases/tag/0.3.3
