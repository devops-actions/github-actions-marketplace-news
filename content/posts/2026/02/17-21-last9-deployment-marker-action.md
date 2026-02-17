---
title: Last9 Deployment Marker
date: 2026-02-17 21:34:42 +00:00
tags:
  - last9
  - GitHub Actions
draft: false
repo: https://github.com/last9/deployment-marker-action
marketplace: https://github.com/marketplace/actions/last9-deployment-marker
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/last9/deployment-marker-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/last9-deployment-marker) to find the latest changes.

## Action Summary

The Last9 Deployment Marker GitHub Action enables automatic tracking of deployments by sending deployment markers to Last9's Change Events API. It simplifies integration with observability dashboards, captures rich GitHub metadata, and automates retries for transient failures. This action helps teams monitor deployment events efficiently, ensuring visibility and flexibility with support for custom attributes and multiple deployment stages.

## Release notes

## 🎉 Initial Release

Send deployment markers to Last9's Change Events API for observability tracking.

### ✨ Features

- **OAuth Token Management**: Automatic refresh token exchange with caching (SHA-256 cache keys)
- **Deployment Tracking**: Send start, stop, or both deployment markers
- **Automatic Context**: Captures GitHub repository, commit, workflow, and actor information
- **Custom Attributes**: Add custom metadata to deployment markers (JSON format)
- **Resilient**: Exponential backoff retry logic with jitter for transient failures
- **Secure**: Automatic sensitive data redaction in logs (Bearer tokens, API keys)
- **Type-Safe**: Written in TypeScript with strict mode enabled

### 📦 Usage

```yaml
- name: Mark Deployment
  uses: last9/deployment-marker-action@v1
  with:
    refresh_token: ${{ secrets.LAST9_REFRESH_TOKEN }}
    org_slug: ${{ secrets.LAST9_ORG_SLUG }}
    event_state: stop
    custom_attributes: |
      {
        "environment": "production",
        "version": "${{ github.sha }}"
      }
```

### 🔧 Configuration

**Required:**
- `refresh_token` - Last9 API refresh token (Admin scope required)
- `org_slug` - Last9 organization slug

**Optional:**
- `event_state` - `start`, `stop`, or `both` (default: `stop`)
- `event_name` - Event name (default: `deployment`)
- `custom_attributes` - JSON object with custom metadata
- `include_github_attributes` - Include GitHub context (default: `true`)
- `max_retry_attempts` - Maximum retry attempts (default: `3`)
- And more... see [README](https://github.com/last9/deployment-marker-action#readme)

### 📚 Documentation

- **[Complete Documentation](https://github.com/last9/deployment-marker-action#readme)**
- **[Refresh Token Setup Guide](https://github.com/last9/deployment-marker-action#1-generate-a-last9-refresh-token)** (Admin user instructions)
- **[Last9 Change Events Docs](https://last9.io/docs/change-events/)**
- **[Last9 API Docs](https://last9.io/docs/getting-started-with-api/)**

### 🧪 Quality

- **Tests**: 57/58 passing with comprehensive coverage
- **Security**: 0 vulnerabilities (updated dependencies)
- **Bundle Size**: 649KB (optimized with ncc)
- **Node Version**: 20.x
- **License**: MIT

### 🔒 Security

- Updated `@actions/github` to 8.0.0
- Updated `@actions/http-client` to 4.0.0
- Updated `undici` to 6.23.0 (patched CVE)
- Automatic sensitive data redaction
- Secure token caching with SHA-256

### 🛠️ Technical Details

Built with:
- TypeScript (strict mode)
- Native Node 20 fetch() API
- `@actions/core` for GitHub Actions integration
- `@actions/github` for context
- `zod` for input validation

### 🙏 Credits

Built with ❤️ by the [Last9](https://last9.io) team for the observability community.

### 📄 License

MIT License - see [LICENSE](https://github.com/last9/deployment-marker-action/blob/main/LICENSE)
