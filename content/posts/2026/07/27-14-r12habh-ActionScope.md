---
title: ActionScope
date: 2026-07-27 14:56:43 +00:00
tags:
  - r12habh
  - GitHub Actions
draft: false
repo: https://github.com/r12habh/ActionScope
marketplace: https://github.com/marketplace/actions/actionscope
version: v0.4.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **ActionScope** is an open-source tool that analyzes GitHub Actions workflows to identify potential risks associated with AWS credentials and permissions. It helps developers understand the actions being executed by their CI/CD pipelines in AWS without requiring direct access to AWS resources or API keys. By examining a repository's workflow files, Terraform configurations, and IAM policies, ActionScope provides clear, plain-English reports on what AWS services can be accessed if the workflows are compromised. It detects known-compromised actions, OIDC trust policy issues, script injection vulnerabilities, artifact poisoning threats, AI agent prompt injection surfaces, unpinned actions with SHA resolution, and more. The tool helps organizations identify and mitigate potential security risks in their CI/CD pipelines before they can be exploited in an attack scenario.
---


Version updated for **https://github.com/r12habh/ActionScope** to version **v0.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actionscope) to find the latest changes.

## Action Summary

**ActionScope** is an open-source tool that analyzes GitHub Actions workflows to identify potential risks associated with AWS credentials and permissions. It helps developers understand the actions being executed by their CI/CD pipelines in AWS without requiring direct access to AWS resources or API keys. By examining a repository's workflow files, Terraform configurations, and IAM policies, ActionScope provides clear, plain-English reports on what AWS services can be accessed if the workflows are compromised. It detects known-compromised actions, OIDC trust policy issues, script injection vulnerabilities, artifact poisoning threats, AI agent prompt injection surfaces, unpinned actions with SHA resolution, and more. The tool helps organizations identify and mitigate potential security risks in their CI/CD pipelines before they can be exploited in an attack scenario.

## What's Changed

## ActionScope v0.4.1

### Install
```bash
pip install actionscope==0.4.1
```

### What's New
See [CHANGELOG.md](CHANGELOG.md) for details.

