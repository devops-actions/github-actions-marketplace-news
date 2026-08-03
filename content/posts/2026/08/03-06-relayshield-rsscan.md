---
title: RelayShield Secret Scan
date: 2026-08-03 06:19:10 +00:00
tags:
  - relayshield
  - GitHub Actions
draft: false
repo: https://github.com/relayshield/rsscan
marketplace: https://github.com/marketplace/actions/relayshield-secret-scan
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The rsscan GitHub Action is a tool designed to scan for API keys, tokens, and other sensitive credentials in staged changes or commit ranges. It uses pre-commit hooks, GitHub Actions, GitLab CI/CD, CircleCI, Docker containers, and shell scripts to automate the process of detecting and flagging these credentials before they are committed to version control. The action is free and runs entirely on your machine without requiring an account or network calls, ensuring that sensitive information never leaves the host.
---


Version updated for **https://github.com/relayshield/rsscan** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/relayshield-secret-scan) to find the latest changes.

## Action Summary

The rsscan GitHub Action is a tool designed to scan for API keys, tokens, and other sensitive credentials in staged changes or commit ranges. It uses pre-commit hooks, GitHub Actions, GitLab CI/CD, CircleCI, Docker containers, and shell scripts to automate the process of detecting and flagging these credentials before they are committed to version control. The action is free and runs entirely on your machine without requiring an account or network calls, ensuring that sensitive information never leaves the host.

## What's Changed

Fixes a version-reporting bug.

0.1.1 shipped with a hardcoded `__version__ = "0.1.0"` while the package version was 0.1.1, so `rsscan --version` reported the wrong number and the optional `--org` adoption signal sent the wrong version.

`__version__` is now read from installed package metadata, making `pyproject.toml` the single source of truth. No change to scanning behaviour.
