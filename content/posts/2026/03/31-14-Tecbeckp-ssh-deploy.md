---
title: Unique SSH Deployer
date: 2026-03-31 14:00:46 +00:00
tags:
  - Tecbeckp
  - GitHub Actions
draft: false
repo: https://github.com/Tecbeckp/ssh-deploy
marketplace: https://github.com/marketplace/actions/unique-ssh-deployer
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Tecbeckp/ssh-deploy** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unique-ssh-deployer) to find the latest changes.

## Action Summary

SSH Deploy is a GitHub Action designed to securely deploy files to a server via SSH/SFTP with a focus on efficiency and incremental updates. It automates the process by tracking the deployment state, transferring only changed files, and removing outdated ones, solving problems related to manual file syncing and ensuring secure and optimized deployments. Key capabilities include pre/post-deployment commands, rollback on failure, health checks, and notifications, making it suitable for streamlined and reliable deployment workflows.

## What's Changed

## What's New in v1.1.0

Pre-deploy commands - Run commands on the server BEFORE file sync. Useful for enabling maintenance mode, creating backups, stopping services, etc.
Rollback on failure - Automatically restore previous deployment state when health check fails. Saves a rollback point before deploying and reverts if something goes wrong.
Health check - Verify your deployment is working by hitting a URL after sync. Configurable expected status code, retry count, retry delay. Optionally fail the entire deployment if health check doesn't pass.
Slack notifications - Rich deployment notifications with file counts, bytes transferred, duration, commit hash, health check status, and a link to the workflow run.
Discord notifications - Beautiful embed notifications with the same deployment details.
Custom webhook notifications - Send a plain JSON payload to any URL for custom integrations.
Multi-environment support - Label deployments with environment names (e.g., production, staging). Shown in notifications and stored in sync state.
New action outputs - rolled-back, health-check-passed, notification-sent, environment.
