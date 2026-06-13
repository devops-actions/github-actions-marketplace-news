---
title: cicd-sensor
date: 2026-06-13 06:53:22 +00:00
tags:
  - cicd-sensor
  - GitHub Actions
draft: false
repo: https://github.com/cicd-sensor/cicd-sensor-action
marketplace: https://github.com/marketplace/actions/cicd-sensor
version: v0.0.33
dependentsNumber: "12"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/cicd-sensor/cicd-sensor-action** to version **v0.0.33**.

- This action is used across all versions by **12** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cicd-sensor) to find the latest changes.

## What's Changed

Released by @rung via [workflow run](https://github.com/cicd-sensor/cicd-sensor-action/actions/runs/27455486523).

## Highlights

**Blacksmith CI runners now work.** The agent previously failed to start on Blacksmith runners (kernel 6.5.13) because `security_socket_connect` is not fentry-attachable there. AF_UNIX connect observation now uses `unix_stream_connect` / `unix_dgram_connect` instead, verified on Blacksmith 2vcpu / 4vcpu Ubuntu 24.04 runners. Rules and the `unix_socket_connect` event are unchanged.

Special thanks to @iwata for the detailed report and the load-stage diagnosis that shaped this fix. 🙏

## What's Changed
* chore(deps): update dependency cicd-sensor/cicd-sensor to v0.0.38 by @renovate[bot] in https://github.com/cicd-sensor/cicd-sensor-action/pull/24


**Full Changelog**: https://github.com/cicd-sensor/cicd-sensor-action/compare/v0.0.32...v0.0.33
