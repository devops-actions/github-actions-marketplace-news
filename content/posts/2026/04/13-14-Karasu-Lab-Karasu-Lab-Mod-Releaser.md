---
title: KarasuLab Mod Releaser
date: 2026-04-13 14:20:09 +00:00
tags:
  - Karasu-Lab
  - GitHub Actions
draft: false
repo: https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser
marketplace: https://github.com/marketplace/actions/karasulab-mod-releaser
version: v5.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser** to version **v5.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/karasulab-mod-releaser) to find the latest changes.

## Action Summary

The KarasuLab Mod Releaser is a GitHub Action designed to automate the release process for Minecraft mods. It streamlines tasks such as semantic versioning, changelog creation, building, and publishing mods to platforms like GitHub Releases, Modrinth, and CurseForge. By dynamically configuring dependencies and project settings, it eliminates manual effort in managing mod versions and multi-platform distribution.

## What's Changed

## [5.0.0](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/compare/v4.0.0...v5.0.0) (2026-04-13)


### ⚠ BREAKING CHANGES

* migrated to nodejs based action

### Features

* add skip_checkout input to prevent workspace cleaning ([f6eb3a4](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/f6eb3a49d0488a85bd5fc590f2c2c78677279a42))
* added extra_dependencies ([3f08ee3](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/3f08ee3c368b0864f3488d2753ec62fe6862ede1))
* added release channel property ([80701ce](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/80701ce654987f051a3591851b7a007f1cfc7873))
* added release title and jar file format ([4c64010](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/4c640104427dac021cf7ecbc54445b4a1aaefee0))
* added scripts ([0e05afd](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/0e05afdd347826aa0a936cd2f550fa023093bbb8))
* handle multi-module JAR paths with jar_path_format ([c9ef2a9](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/c9ef2a90c39d7fe0d4384c02a9b37e2eb3b99540))
* Initialize commit ([a108bc6](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/a108bc608d81ee431e54369b759a95a6f9d37a4e))
* migrated to nodejs based action ([c1f7e2a](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/c1f7e2a6190465397ea877a919ef011f791ae229))
* multi-platform support and skip-release-please ([0774bb5](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/0774bb5746d439512f396a833a17080e1061efd7))
* recursive dependency scan and environment metadata config (v2.2.5) ([bb6009d](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/bb6009dc9f52e7f2038dab5d073aabbe89f9cedb))


### Bug Fixes

* fixed action version logic ([5b39407](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/5b3940719348a2b84160af19ff97e2c5bd1ca823))
* fixed build command ([ea451b9](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/ea451b985d8bb610f5069211923a76dfe43acacd))
* fixed build script ([4aa2b59](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/4aa2b5922229aa0d76ab928cfb8441106d0fdbee))
* fixed build script ([177b737](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/177b7372bc0e742e92bf20012759efce35df175e))
* fixed changelog is not included ([8005ad0](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/8005ad00d7c2fbda46c738e9a7618f8d81113953))
* fixed crash when space in package ([6c85aa2](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/6c85aa2eb0fa9e9337839f1108ba71a9be94ae96))
* fixed dist file is not exists ([f0e5133](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/f0e5133e34a04cb2702311e4a140d923cfb212ad))
* fixed for submodule project ([0d3e444](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/0d3e444945f32a01a3d342caeb9897bb143fe8cd))
* fixed major version up logics ([9eab751](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/9eab751acd1b42f0826e4e8e048f628a4b13f268))
* fixed upload error ([ce6c352](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/ce6c352c3f008967bcc333532f9c083ca0d24344))
* jq error for missing extra_dependencies ([415b8ae](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/415b8ae36e876894acd550c651df5c56480e50cc))
* regex for archives_name and support for RELEASE_VERSION ([e444c21](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/e444c2136b13d8ce190304cfc5a96cbf9b028cf4))
* resolve-dependencies.sh syntax error (v2.2.6) ([37b55c1](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/37b55c133a9e236168ac7dd2809edf95c30f3037))
* robust path construction to prevent duplication ([7568474](https://github.com/Karasu-Lab/Karasu-Lab-Mod-Releaser/commit/75684742e9ce3e03c0c88eb04c2eb6da4198c5f3))
