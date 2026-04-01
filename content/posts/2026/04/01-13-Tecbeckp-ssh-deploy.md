---
title: Unique SSH Deployer
date: 2026-04-01 13:57:22 +00:00
tags:
  - Tecbeckp
  - GitHub Actions
draft: false
repo: https://github.com/Tecbeckp/ssh-deploy
marketplace: https://github.com/marketplace/actions/unique-ssh-deployer
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Tecbeckp/ssh-deploy** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unique-ssh-deployer) to find the latest changes.

## Action Summary

This GitHub Action, **SSH Deploy**, securely deploys files to a remote server via SSH/SFTP while performing incremental synchronization. It automates file transfers by hashing local files, comparing them to the server state, and only uploading new or modified files, while removing deleted ones. Key capabilities include smart syncing, rollback support, health checks, and customizable pre/post-deployment commands for streamlined and efficient server updates.

## What's Changed

## v1.1.1 - Performance Optimizations

### ⚡ Major: Parallel File Uploads
- **5x-10x faster** file transfers with concurrent uploads (default: 5 parallel)
- Configurable upload concurrency via `upload-concurrency` input
- Intelligent batching to prevent server overload
- Perfect for large deployments (100+ files)

**Impact:**
- 100 files: ~30s → ~6s ⚡
- 1000 files: ~5min → ~1min ⚡

### 🗜️ New: SSH Compression
- Optional data compression for slower/expensive networks
- Reduces bandwidth by 30-50%
- Transparent - files remain in original format on server
- Enable via `compression: true` input

### 📝 New Inputs

| Input | Default | Description |
|---|---|---|
| `upload-concurrency` | `5` | Number of files to upload in parallel |
| `compression` | `false` | Enable SSH protocol compression |

### 🔧 Technical Improvements

- Parallel upload batching with error handling
- SSH algorithm optimization for compression
- Reduced sequential bottlenecks in sync stage
- Larger SFTP buffer sizes for faster transfers
- Proper error propagation in concurrent uploads

### 💡 Usage Examples

**Default (good for most):**
```yml
- uses: Tecbeckp/ssh-deploy@v1
  with:
    host: ${{ secrets.SSH_HOST }}
    username: ${{ secrets.SSH_USERNAME }}
    private-key: ${{ secrets.SSH_PRIVATE_KEY }}
    server-dir: /var/www/html/

**Full Changelog**: https://github.com/Tecbeckp/ssh-deploy/compare/v1...v1.1.1
