---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-05 06:27:15 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.4.14
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v1.4.14**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is an orchestration tool that automates software development tasks by breaking down a high-level goal into smaller tasks, assigning them to AI coding agents working in parallel, verifying their outputs, and committing the results—all while maintaining a clean Git history. It eliminates the need for a specific framework or vendor lock-in by supporting interchangeable agents, models, and providers, and includes adapters for 18+ CLI tools. Bernstein streamlines engineering workflows by enabling continuous development with minimal manual intervention, akin to how Kubernetes manages containers for scalable deployment.

## What's Changed

Patch release. Changes since previous version:

ef8c5ff chore: auto-bump to v1.4.14
9a9f8e5 fix: update test_task_completion for task_lifecycle module move
dfe22d5 fix: SLO cap takes precedence over minimum agent floor
0d8cd03 fix: set _workdir in rebalancing test to prevent MagicMock path
5d7bf3e fix: add templates to CLI allowlist + reassign role validation in test
