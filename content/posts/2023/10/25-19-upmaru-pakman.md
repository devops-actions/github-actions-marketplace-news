---
title: Opsmaru Pakman
date: 2023-10-25 19:11:54 +00:00
tags:
  - upmaru
  - GitHub Actions
draft: false
repo: upmaru/pakman
marketplace: https://github.com/marketplace/actions/opsmaru-pakman
version: v8.1.2
dependentsNumber: "12"
---


Version updated for **upmaru/pakman** to version **v8.1.2**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opsmaru-pakman) to find the latest changes.

## Release notes

- Switch to using chroot instead of docker.
- Implement s6-log for proper log rotation.
- Update action to composite type.
- Update pakman to support new alpine chroot build environment.
- Add ability to specify path for commands in instellar.yml.
- Improved error handling on create deployment.
- Can now configure which version of alpine to target.
- Use Pakman from hex.
- Add caching for Pakman hex so it doesn't re-build on every run
- Push direct to S3 without sending packages.zip to Opsmaru
- Add test for Pakman.PushTest
- Keep dependencies lean
