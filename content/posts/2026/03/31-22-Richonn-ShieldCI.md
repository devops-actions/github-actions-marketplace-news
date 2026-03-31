---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-03-31 22:12:18 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.2.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the creation of hardened CI/CD pipelines for DevSecOps workflows, tailored to the detected tech stack of a repository. It generates workflows for tasks like static code analysis (SAST), secret detection, vulnerability scanning, and Kubernetes/Docker deployments, and opens a pull request with the newly generated configurations. This action simplifies setting up secure and robust pipelines while reducing manual effort in configuring workflows.

## What's Changed

## What's new

### Semgrep custom rules support
ShieldCI now detects whether a `.semgrep/` directory exists in the target repo:

- If absent, ShieldCI generates a `.semgrep/rules/example.yml` file with a commented starter rule to bootstrap your custom ruleset
- If present, the generated workflow uses `--config=.semgrep/` to run your existing rules instead of the default community ruleset (`--config=auto`)

### Semgrep image updated
The Semgrep Docker image in generated workflows has been updated from the deprecated `returntocorp/semgrep` to `semgrep/semgrep`.

