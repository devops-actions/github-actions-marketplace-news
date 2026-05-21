---
title: SSH Command & Port Forwarding
date: 2026-05-21 06:43:12 +00:00
tags:
  - lexbritvin
  - GitHub Actions
draft: false
repo: https://github.com/lexbritvin/ssh-action
marketplace: https://github.com/marketplace/actions/ssh-command-port-forwarding
version: v2.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lexbritvin/ssh-action** to version **v2.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssh-command-port-forwarding) to find the latest changes.

## Action Summary

This GitHub Action enables secure remote command execution and port forwarding over SSH, streamlining tasks like deploying applications, managing infrastructure, and creating secure tunnels for services. It supports advanced features such as multi-hop connections through jump hosts, dynamic port allocation, and various authentication methods, making it versatile for complex networking and automation scenarios. Designed with security and cross-platform compatibility in mind, it simplifies SSH-related workflows in CI/CD pipelines while offering robust logging and debugging capabilities.

## What's Changed

**Breaking:** the cleanup handler now runs on Node 24 via srz-zumix/post-run-action@v3 (was @v2 on Node 20).

Required because GitHub Actions forces the cutover on 2026-06-02 and removes Node 20 from runners on 2026-09-16. Self-hosted runners must have Node 24 available.

Consumers should update `uses: lexbritvin/ssh-action@v1` → `@v2`. The `v1` floating tag has been reset back to the pre-Node24 commit so existing pins keep their original behavior.
