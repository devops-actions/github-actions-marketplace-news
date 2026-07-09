---
title: OpenBSD Action
date: 2026-07-09 07:01:48 +00:00
tags:
  - ivoronin
  - GitHub Actions
draft: false
repo: https://github.com/ivoronin/openbsd-action
marketplace: https://github.com/marketplace/actions/openbsd-action
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ivoronin/openbsd-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openbsd-action) to find the latest changes.

## What's Changed

First marketplace release of `openbsd-action`.

This action runs one GitHub Actions command inside an OpenBSD VM. It downloads a pre-built OpenBSD image from `ivoronin/openbsd-cloudimg` releases, verifies its GitHub attestation, boots it with QEMU, syncs the workspace into `/home/openbsd/work`, runs your command, then syncs the workspace back even if the command exits non-zero.
