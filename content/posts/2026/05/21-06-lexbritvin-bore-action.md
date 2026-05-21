---
title: Bore Tunnel
date: 2026-05-21 06:43:17 +00:00
tags:
  - lexbritvin
  - GitHub Actions
draft: false
repo: https://github.com/lexbritvin/bore-action
marketplace: https://github.com/marketplace/actions/bore-tunnel
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lexbritvin/bore-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bore-tunnel) to find the latest changes.

## Action Summary

The Bore Tunnel GitHub Action enables users to expose local services or ports to the internet by creating secure tunnels using Bore. It automates tasks like public accessibility for testing, demos, or sharing local work, while providing features such as cross-platform support, secure authentication, automatic cleanup, and detailed logging. This action simplifies the process of making local services accessible remotely, reducing configuration overhead and enhancing workflow efficiency.

## What's Changed

**Breaking:** action runtime bumped from Node 20 to Node 24.

Required because GitHub Actions forces the cutover on 2026-06-02 and removes Node 20 from runners on 2026-09-16. Self-hosted runners must have Node 24 available.

Consumers should update `uses: lexbritvin/bore-action@v1` → `@v2`. The `v1` floating tag has been reset back to the pre-Node24 commit so existing pins keep their original behavior.
