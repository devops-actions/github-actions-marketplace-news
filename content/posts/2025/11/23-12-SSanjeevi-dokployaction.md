---
title: Dokploy Deployment Suite
date: 2025-11-23 12:59:06 +00:00
tags:
  - SSanjeevi
  - GitHub Actions
draft: false
repo: https://github.com/SSanjeevi/dokployaction
marketplace: https://github.com/marketplace/actions/dokploy-deployment-suite
version: v1.2.6
dependentsNumber: "?"
---


Version updated for **https://github.com/SSanjeevi/dokployaction** to version **v1.2.6**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dokploy-deployment-suite) to find the latest changes.

## Release notes

## 🚀 Dokploy GitHub Actions - v1.2.6

[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-Dokploy%20Deployment%20Suite-blue.svg?colorA=24292e&colorB=0366d6&style=flat&longCache=true&logo=github)](https://github.com/marketplace/actions/dokploy-deployment-suite)

This action is now available on **GitHub Marketplace**! 🎉

### 📦 Available Actions

- **Main Action**: `SSanjeevi/dokployaction@v1.2.6`
- **Deploy**: `SSanjeevi/dokployaction/actions/deploy@v1.2.6`
- **Health Check**: `SSanjeevi/dokployaction/actions/health-check@v1.2.6`
- **Cleanup Containers**: `SSanjeevi/dokployaction/actions/cleanup-containers@v1.2.6`
- **Rollback**: `SSanjeevi/dokployaction/actions/rollback@v1.2.6`
- **Setup SSL**: `SSanjeevi/dokployaction/actions/setup-ssl@v1.2.6`
- **Configure Domain**: `SSanjeevi/dokployaction/actions/configure-domain@v1.2.6`

### 📚 Documentation

- [Quick Start Guide](https://github.com/SSanjeevi/dokployaction/blob/main/QUICK_START.md)
- [Examples](https://github.com/SSanjeevi/dokployaction/tree/main/examples)
- [API Reference](https://github.com/SSanjeevi/dokployaction/blob/main/docs/API_REFERENCE.md)
- [Contributing Guide](https://github.com/SSanjeevi/dokployaction/blob/main/CONTRIBUTING.md)

### 🔧 Quick Start

```yaml
- name: Deploy to Dokploy
  uses: SSanjeevi/dokployaction@v1.2.6
  with:
    dokploy-url: 
    api-key: 
    application-id: 'your-app-id'
    docker-image: 'ghcr.io/user/app:latest'
```

### ✨ Key Features

- 🚀 **Zero-downtime deployments** with health checks
- 🔄 **Automatic rollback** on deployment failure
- 🏥 **Health monitoring** with configurable retry logic
- 🧹 **Container cleanup** to manage resources
- 🔒 **SSL/TLS setup** for secure connections
- 🌐 **Domain configuration** automation
- 📊 **Comprehensive logging** and GitHub step summaries

### 📋 What's Changed

See [CHANGELOG.md](https://github.com/SSanjeevi/dokployaction/blob/main/CHANGELOG.md) for detailed changes.

### 🙏 Support

If you find this action helpful, please ⭐ star the repository and share it with others!

