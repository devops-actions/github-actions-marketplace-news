---
title: Unique SSH Deployer
date: 2026-03-30 22:19:00 +00:00
tags:
  - Tecbeckp
  - GitHub Actions
draft: false
repo: https://github.com/Tecbeckp/ssh-deploy
marketplace: https://github.com/marketplace/actions/unique-ssh-deployer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Tecbeckp/ssh-deploy** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unique-ssh-deployer) to find the latest changes.

## Action Summary

The **SSH Deploy GitHub Action** automates the process of securely deploying files to a remote server using SSH/SFTP, offering smart incremental synchronization that transfers only new or modified files while removing deleted ones. It solves the problem of inefficient and insecure file transfers by leveraging hashing to track deployment state and ensures faster, more reliable updates. Additionally, the action supports post-deployment commands, exclusions, and logging, making it ideal for streamlined and repeatable deployment workflows.

## What's Changed

## SSH Deploy - Smart Sync via SSH/SFTP

Deploy files to any server over SSH. Only changed files are transferred.

### Features
- **Smart sync** — MD5-based change detection, only uploads new/modified files
- **Post-deploy commands** — Run commands on server after sync (e.g., `composer install`, `pm2 restart`)
- **Exclude patterns** — Glob-based file exclusion
- **Dry-run mode** — Preview changes without touching the server
- **Action outputs** — `files-uploaded`, `files-replaced`, `files-deleted`, `total-changes`, `duration-ms`
- **Encrypted key support** — Passphrase-protected SSH keys supported

### Quick Start
```yml
- uses: Tecbeckp/ssh-deploy@v1
  with:
    host: ${{ secrets.SSH_HOST }}
    username: ${{ secrets.SSH_USERNAME }}
    private-key: ${{ secrets.SSH_PRIVATE_KEY }}
    server-dir: /var/www/html/
    commands: |
      composer install --no-dev
      php artisan migrate --force

