---
title: Compile Minecraft Spigot (via BuildTools)
date: 2024-05-10 03:28:13 +00:00
tags:
  - SpraxDev
  - GitHub Actions
draft: false
repo: SpraxDev/Action-SpigotMC
marketplace: https://github.com/marketplace/actions/compile-minecraft-spigot-via-buildtools
version: v5.1.0
dependentsNumber: "98"
---


Version updated for **SpraxDev/Action-SpigotMC** to version **v5.1.0**.
- This action is used across all versions by **98** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compile-minecraft-spigot-via-buildtools) to find the latest changes.

## Release notes

## Added
* External SFTP-Cache for Spigot artifacts (check [README.md](https://github.com/SpraxDev/Action-SpigotMC#readme) for more details)
  * Essentially, you can now cache the Spigot artifacts on a dedicated SFTP-Server if desired in addition to GitHub's cache
  * This additional caching layer might be interesting for projects with a lot of spigot versions or maintainers with a lot of projects using this action (that might profit from a shared cache)
## Fixed
* Take remapped option into account when checking the local repo (#139)
  * When you already had the non-remapped artifacts for a given version, building it would be skipped even if remapped=true
## Removed
* Remove setting and restoring of the git name and email (72bc8f1)
  * > This is no longer required in the newer versions of Spigot's BuildTool as they
finally fixed the issue themselves and don't set those globally anymore
## Changed
* Renamed `master` branch into `main`
  * This *probably* doesn't affect you
  * The source code in `main` is not considered stable all of the time - When using this action, please pin it to a version (e.g. `v5`)


**Full Changelog**: https://github.com/SpraxDev/Action-SpigotMC/compare/v5.0.1...v5.1.0
