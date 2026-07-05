---
title: Doc Detective
date: 2026-07-05 06:32:12 +00:00
tags:
  - doc-detective
  - GitHub Actions
draft: false
repo: https://github.com/doc-detective/github-action
marketplace: https://github.com/marketplace/actions/doc-detective
version: v1.6.1
dependentsNumber: "9"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/doc-detective/github-action** to version **v1.6.1**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/doc-detective) to find the latest changes.

## What's Changed

## fix: reload udev rules before triggering when enabling KVM (#72)

Follow-up to v1.6.0. `enableLinuxKvm` now runs `udevadm control --reload-rules` before `udevadm trigger`, so the freshly-written kvm rule is actually loaded and /dev/kvm becomes accessible — without it the `android: auto` KVM setup was a no-op and Android contexts still SKIPped.
