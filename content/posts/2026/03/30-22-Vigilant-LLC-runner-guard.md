---
title: Runner Guard
date: 2026-03-30 22:18:38 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.5.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.5.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a security-focused GitHub Action that performs static taint analysis on CI/CD pipeline workflows to detect source-to-sink vulnerabilities, such as injection attacks and supply chain steganography. It helps identify critical misconfigurations, attacker-controlled inputs, invisible Unicode payloads, and other malicious patterns in workflows and associated files, mitigating risks like credential theft, repository compromise, and automated AI-driven exploits. This tool automates the detection of vulnerabilities that are often invisible to standard code reviews, enhancing pipeline security for GitHub Actions users.

## What's Changed

### What's new

- **Heredoc quoting fix**: The engine no longer wraps env var references in quotes when they are part of a compound value (e.g. `${VAR}/path`). Previously this created invalid YAML in heredoc contexts like docker-compose files.
