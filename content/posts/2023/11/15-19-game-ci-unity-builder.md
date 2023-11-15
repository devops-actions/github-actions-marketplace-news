---
title: Unity - Builder
date: 2023-11-15 19:05:35 +00:00
tags:
  - game-ci
  - GitHub Actions
draft: false
repo: game-ci/unity-builder
marketplace: https://github.com/marketplace/actions/unity-builder
version: v4.0.0
dependentsNumber: "4,279"
---


Version updated for **game-ci/unity-builder** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,279** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unity-builder) to find the latest changes.

## Release notes

This release bumps docker images for Windows to Server 2022 in anticipation of Server 2019 EOL. It is highly recommended for users to upgrade to this version as it contains a security fix for personal license serial masking as well as major stability and QOL fixes and improvements.

## What's Changed
* **[Breaking]** Windows images upgraded to Server 2022. This means you must update your workflows to use `windows-2022` or ensure self-hosted runners are running Windows Server 2022 or Windows 11 or the images will fail to start
* **[Breaking]** Updated license activation method to fix increased license activation failures. Personal license activation on Linux now requires `UNITY_EMAIL` and `UNITY_PASSWORD` to be passed in addition to `UNITY_LICENSE`. Look at our [License Activation Docs](https://game.ci/docs/github/activation) for more guidance.
* Fix serial number leak for personal license activation. This only affects users who only provide a license file for personal activation. Professional serials are not affected. Furthermore, serial numbers require username and password to activate so the risk of malicious use is low. Regardless it is highly recommended to update to v4 to ensure proper masking and for extra security, delete any unexpired build logs.
* Windows now properly uses exit codes for determining build failures. This should bring it in line with Ubuntu behavior and fix several issues introduced by v3. Parsing for error count is now disabled
* Fixes for Windows builds hanging on exit
* Add annotations to default build script so Unity warnings and errors become github annotations to make debugging builds easier. For custom build methods, you can add this [CompileListener](https://github.com/game-ci/unity-builder/blob/main/dist/default-build-script/Assets/Editor/UnityBuilderAction/Reporting/CompileListener.cs) script to your editor folder to gain the same functionality
* Add `containerRegistryRepository` and `containerRegistryImageVersion` fields to allow easier use of custom images and the ability to roll back image versions
* Add `dockerCpuLimit`, `dockerMemoryLimit`, and `dockerIsolationMode` for improved container performance control. Windows containers will by default now use more available system resources to improve build performance. Previously they were stuck at 1 cpu and 1GB memory due to a docker bug
* Building on MacOS no longer requires sudo as long as the license activation path `/Library/Application Support/Unity` exists
* MacOS setup now installs the correct architecture of Unity to account for Apple Silicon runners by @dcvz in https://github.com/game-ci/unity-builder/pull/591
* `manualExit` suppresses `-quit`, useful for buildMethods with async calls by @tobyspark in https://github.com/game-ci/unity-builder/pull/574
* fix android sdkmanager invocation by @eronnen in https://github.com/game-ci/unity-builder/pull/582

## New Contributors
* @tobyspark made their first contribution in https://github.com/game-ci/unity-builder/pull/574
* @dcvz made their first contribution in https://github.com/game-ci/unity-builder/pull/591

**Full Changelog**: https://github.com/game-ci/unity-builder/compare/v3...v4.0.0
