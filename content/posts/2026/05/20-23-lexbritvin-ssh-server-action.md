---
title: Set up SSH Server
date: 2026-05-20 23:15:40 +00:00
tags:
  - lexbritvin
  - GitHub Actions
draft: false
repo: https://github.com/lexbritvin/ssh-server-action
marketplace: https://github.com/marketplace/actions/set-up-ssh-server
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lexbritvin/ssh-server-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-ssh-server) to find the latest changes.

## Action Summary

The **Set up SSH Server Action** enables users to configure an SSH server on GitHub Actions runners across Windows, macOS, and Linux platforms. It automates the setup of a secure, key-based SSH server for remote debugging and file access during workflows, with features like automatic key management, cross-platform support, and cleanup upon workflow completion. This action is ideal for facilitating secure and flexible remote connections to GitHub-hosted runners.

## What's Changed

**Breaking:** action runtime bumped from Node 20 to Node 24.

Required because GitHub Actions forces the cutover on 2026-06-02 and removes Node 20 from runners on 2026-09-16. Self-hosted runners must have Node 24 available.

Also includes the previously-unreleased `30f45f3` test-workflow tweaks.

Consumers should update `uses: lexbritvin/ssh-server-action@v1` → `@v2`. The `v1` floating tag has been reset back to the pre-Node24 commit so existing pins keep their original behavior.
