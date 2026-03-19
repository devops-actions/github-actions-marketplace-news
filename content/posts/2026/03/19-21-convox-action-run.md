---
title: Convox Run
date: 2026-03-19 21:49:19 +00:00
tags:
  - convox
  - GitHub Actions
draft: false
repo: https://github.com/convox/action-run
marketplace: https://github.com/marketplace/actions/convox-run
version: v1.2.0
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/convox/action-run** to version **v1.2.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/convox-run) to find the latest changes.

## Action Summary

The **Convox Run Action** automates the execution of one-off commands, such as database migrations, against specific releases of applications on the Convox platform. It streamlines pre-deployment or post-deployment tasks by enabling users to run these commands directly within a GitHub Actions workflow. This action ensures proper output streaming with pseudo-TTY allocation and supports targeting specific app services and releases for precise control.

## Release notes

TTY fix, exit code propagation, and hang fix. Key changes:
- Pseudo-TTY allocation for proper colored output
- Exit codes now propagate correctly (0, 1, custom codes)
- Fixes long-output hang bug where sustained output would cause the action to hang indefinitely
- Input validation for required fields (app, service, command)
- Release flag support
