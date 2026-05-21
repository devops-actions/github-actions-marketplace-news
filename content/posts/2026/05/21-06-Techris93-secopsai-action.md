---
title: SecOpsAI Supply-Chain Guard
date: 2026-05-21 06:41:52 +00:00
tags:
  - Techris93
  - GitHub Actions
draft: false
repo: https://github.com/Techris93/secopsai-action
marketplace: https://github.com/marketplace/actions/secopsai-supply-chain-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Techris93/secopsai-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secopsai-supply-chain-guard) to find the latest changes.

## Action Summary

The SecOpsAI Supply-Chain Guard GitHub Action automates security checks for software supply chains, package advisories, vulnerability campaigns, and triage summaries. It enables developers to detect critical issues in dependencies or ecosystems, ensuring secure and compliant workflows. The action provides deterministic output in JSON format for integration into CI/CD pipelines and artifact storage, helping teams streamline security assessments and mitigate risks efficiently.

## What's Changed

Initial SecOpsAI Supply-Chain Guard Marketplace Action.

Includes deterministic GitHub Actions wrapper for:
- supply-chain package scan
- advisory check
- campaign discovery
- triage summary

Safety notes:
- does not accept arbitrary shell commands
- does not execute package lifecycle scripts
- writes JSON output to the workflow workspace

