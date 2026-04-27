---
title: StartOS SDK
date: 2026-04-27 22:01:48 +00:00
tags:
  - Start9Labs
  - GitHub Actions
draft: false
repo: https://github.com/Start9Labs/sdk
marketplace: https://github.com/marketplace/actions/startos-sdk
version: v2.1
dependentsNumber: "116"
actionType: Composite
---


Version updated for **https://github.com/Start9Labs/sdk** to version **v2.1**.

- This action is used across all versions by **116** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/startos-sdk) to find the latest changes.

## Action Summary

The **StartOS SDK GitHub Action** facilitates the automated setup of a build environment for developing and releasing services for StartOS. It provides tools like `start-sdk`, `start-cli`, `yq`, and `deno`, while handling dependency installation, repository checkout, and environment configuration. Additionally, it includes drop-in workflows for standardized build and release processes, automating tasks such as Continuous Integration (CI), package creation, and registry publishing to streamline and enhance development efficiency.

## What's Changed

- readd env dependencies (f8d2211)
- Fix typo in chmod command in action.yaml (525cb24)
- make start-cli executable (d03f321)
- Change latest release URL fetching method (7650a86)
- Update release asset URL for start-os (2bf5d04)
- use official startos release tags (eb1b2a3)
- remove setup-docker-action, update example build/release yml files (#2) (10174bd)
- try disabling containerd-snapshotter (ffc2da0)
- try no defaults (ad8f270)
- switch driver for docker-container (2b897d7)
