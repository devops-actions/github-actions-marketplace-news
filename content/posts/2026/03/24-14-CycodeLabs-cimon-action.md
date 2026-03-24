---
title: Cimon by Cycode
date: 2026-03-24 14:03:25 +00:00
tags:
  - CycodeLabs
  - GitHub Actions
draft: false
repo: https://github.com/CycodeLabs/cimon-action
marketplace: https://github.com/marketplace/actions/cimon-by-cycode
version: v0.10.0
dependentsNumber: "46"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/CycodeLabs/cimon-action** to version **v0.10.0**.
- This action is used across all versions by **46** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cimon-by-cycode) to find the latest changes.

## Action Summary

Cimon GitHub Action is a runtime security solution that safeguards CI/CD pipelines by detecting and preventing software supply-chain attacks, such as those targeting SolarWinds and CodeCov. Powered by eBPF technology, it monitors kernel-level activity to identify and mitigate threats in real time, ensuring secure pipeline execution. This action automates the deployment of the Cimon agent into GitHub Actions workflows, simplifying setup and enabling proactive security within development environments.

## Release notes

## What's New

- **Auto-upload SBOM artifacts** from post step — no need for separate upload-artifact step
- **SBOM summary in job report** with component/relationship counts per build
- **Memory protection** support
- **File integrity** support
- **PR comment summary** support
- **ESM compatibility fix** for Node.js 20+

## Bug Fixes

- Fix SBOM artifact ZIP paths when using `CIMON_SBOM_OUTPUT_DIRECTORY`
- Backward compatibility with older cimon versions without stats fields
- Filter noise from SBOM summary (TryCompile, empty subbuilds)
- Use same binary for stop as start to prevent timeout mismatches
