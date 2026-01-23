---
title: Create Umami report
date: 2026-01-23 21:18:53 +00:00
tags:
  - boly38
  - GitHub Actions
draft: false
repo: https://github.com/boly38/action-umami-report
marketplace: https://github.com/marketplace/actions/create-umami-report
version: v7.0.0
dependentsNumber: "10"
---


Version updated for **https://github.com/boly38/action-umami-report** to version **v7.0.0**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-umami-report) to find the latest changes.

## Action Summary

The `action-umami-report` GitHub Action automates the generation of periodic analytics reports from Umami (v3.x) for a specified domain. It provides insights such as page views, events, sessions, and URLs over configurable time periods, outputting results as actionable data or formatted files. This action streamlines tracking website performance and integrating analytics into workflows without manual reporting.

## Release notes

## What's Changed
* feat: migrate to Umami v3.x API (breaking change) - fix #105 by @boly38 in https://github.com/boly38/action-umami-report/pull/106

**Full Changelog**: https://github.com/boly38/action-umami-report/compare/v6.0.2...v7.0.0

---

## 🚀 Major Update: Umami v3.x Support

This release upgrades **action-umami-report** to support **Umami v3.x**, bringing compatibility with the latest Umami analytics platform.

### 📦 Updated Dependencies

- **umami-api-client** upgraded to [v3.0.3-beta.1](https://github.com/boly38/umami-api-client/releases/tag/v3.0.3-beta.1)
  - Full Umami v3.x API compatibility
  - Updated response structure handling
  - Improved error handling and type safety

### 💡 What's New in Umami v3

Umami v3 brings significant improvements:
- Enhanced API performance
- Modernized data structures
- Better reliability and consistency

### ⚠️ Breaking Changes

**Umami v2.x is no longer supported**. If you're still using Umami v2.x servers, please stay on `v6.0.2`.

| Your Umami Version | Recommended Action Version |
|-------------------|---------------------------|
| **v3.x** (Cloud or Self-hosted) | ✅ **v7.0.0** (this release) |
| v2.x (Legacy) | ⚠️ **v6.0.2** ([last v2 compatible](https://github.com/boly38/action-umami-report/releases/tag/v6.0.2)) |

### 🔄 How to Upgrade

**No code changes required!** Simply update your workflow to use the Umami-compatible tag:

```yaml
# Before (Umami v2.x compatible)
- uses: boly38/action-umami-report@umami-server-2.17.0

# After (Umami v3.x compatible)
- uses: boly38/action-umami-report@umami-server-3.0.3
```

💡 **Why this format?** The tag name clearly indicates which Umami server version it supports!

**Full example:**

```yaml
jobs:
  umami-report:
    runs-on: ubuntu-latest
    steps:
      - name: Generate Umami Report
        uses: boly38/action-umami-report@umami-server-3.0.3
        with:
          # Umami Cloud
          umami-cloud-api-key: ${{ secrets.UMAMI_CLOUD_API_KEY }}
          umami-site-domain: ${{ secrets.UMAMI_SITE_DOMAIN }}
          # OR Self-hosted
          # umami-server: ${{ secrets.UMAMI_SERVER }}
          # umami-user: ${{ secrets.UMAMI_USER }}
          # umami-password: ${{ secrets.UMAMI_PASSWORD }}
```

### 🎯 Key Benefits

- ✅ **Future-proof**: Compatible with latest Umami versions
- ✅ **Drop-in replacement**: Same inputs/outputs as v6
- ✅ **Maintained**: Active support for Umami v3.x ecosystem
- ✅ **Tested**: Full CI/CD coverage with real Umami v3 instances

### 📚 Resources

- [Migration Guide](https://github.com/boly38/action-umami-report#migration-from-v6-to-v7) (README)
- [Umami v3 Release Notes](https://umami.is/blog/umami-v3)
- [Contributing Guide](https://github.com/boly38/action-umami-report/blob/main/.github/CONTRIBUTING.md)

---

**Ready to upgrade?** Update to `@v7` and enjoy Umami v3 compatibility! 🎉

