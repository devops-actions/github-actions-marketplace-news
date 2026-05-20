---
title: SSH Session
date: 2026-05-20 23:15:35 +00:00
tags:
  - lexbritvin
  - GitHub Actions
draft: false
repo: https://github.com/lexbritvin/ssh-session-action
marketplace: https://github.com/marketplace/actions/ssh-session
version: v2.0.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/lexbritvin/ssh-session-action** to version **v2.0.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssh-session) to find the latest changes.

## Action Summary

The **SSH Session Action** enables secure SSH access to GitHub-hosted runners across Windows, Linux, and macOS by installing and configuring an OpenSSH server. It simplifies debugging and CI/CD troubleshooting by providing flexible connectivity options, such as jump hosts, public tunneling services (e.g., serveo.net, pinggy.io), bore tunneling, or direct connections (e.g., Tailscale), along with support for port forwarding and remote development with VS Code. This action automates the setup of SSH sessions, offering developer-friendly features like background sessions, customizable timeouts, and authentication options.

## What's Changed

**Breaking:** internal action refs bumped to v2, which run on Node 24.

- lexbritvin/ssh-server-action @v1 → @v2
- lexbritvin/bore-action @v1 → @v2
- lexbritvin/ssh-action @v1 → @v2
- lexbritvin/wait-action @v1 → @v2

Required because GitHub Actions forces the Node 20 → 24 cutover on 2026-06-02. Self-hosted runners must have Node 24 available.

Consumers should update `uses: lexbritvin/ssh-session-action@v1` → `@v2`. `v1` (latest v1.1.0) is unchanged and still references the @v1 deps.
