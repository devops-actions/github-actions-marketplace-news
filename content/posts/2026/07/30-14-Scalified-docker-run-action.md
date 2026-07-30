---
title: scalified/docker-run-action
date: 2026-07-30 14:41:48 +00:00
tags:
  - Scalified
  - GitHub Actions
draft: false
repo: https://github.com/Scalified/docker-run-action
marketplace: https://github.com/marketplace/actions/scalified-docker-run-action
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the execution of Docker run commands with customizable inputs. It solves the problem of running containers in a CI/CD pipeline by providing flexible configuration options for environment variables, health checks, and container settings. The action supports various properties such as `args`, `command`, `detach`, `entrypoint`, `env`, `health-cmd`, and more, allowing users to tailor their container runs according to their needs.
---


Version updated for **https://github.com/Scalified/docker-run-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scalified-docker-run-action) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of Docker run commands with customizable inputs. It solves the problem of running containers in a CI/CD pipeline by providing flexible configuration options for environment variables, health checks, and container settings. The action supports various properties such as `args`, `command`, `detach`, `entrypoint`, `env`, `health-cmd`, and more, allowing users to tailor their container runs according to their needs.

## What's Changed

- feat: #1 retry docker run command (bc35ef2)
- feat: networks (5776dd4)
- Extend container health check wait time (3c2b4c1)
- feat: 1.0.0 (05b343a)
- Initial commit (871c53a)
