---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-02 06:33:07 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.6.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action that automates the creation of secure CI/CD pipelines for DevSecOps workflows. It detects your project's stack, generates tailored workflows (including CI, linting, testing, and security scanning), and opens a pull request with the configured pipeline files. This action simplifies the process of setting up robust and compliant CI/CD pipelines while integrating tools for vulnerability scanning, static analysis, and secret detection.

## What's Changed

## Bug fix

Adding `concurrency` blocks to `workflow_call` child workflows caused a deadlock: when called by the parent orchestrator, `github.workflow` resolves to the **caller's** name, making all children share the same concurrency group as the parent. GitHub Actions detects this as a deadlock and cancels all runs.

**Fix:** removed the `concurrency` block from all `workflow_call` templates. Only the orchestrator (`ci.yml`) retains it — when the parent is cancelled, all child workflows are cancelled automatically.

