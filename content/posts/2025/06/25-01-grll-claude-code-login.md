---
title: Claude Code OAuth Login
date: 2025-06-25 01:13:37 +00:00
tags:
  - grll
  - GitHub Actions
draft: false
repo: https://github.com/grll/claude-code-login
marketplace: https://github.com/marketplace/actions/claude-code-oauth-login
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/grll/claude-code-login** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-code-oauth-login) to find the latest changes.

## Release notes

🚀 **Claude Code OAuth Action - Latest Release**

## Latest Updates
- **Latest commit**: `aab8f29`
- **Changes**: more clean cache deletion only if exists
- **Updated**: 2025-06-24 23:16:27

## Features
- Complete OAuth 2.0 + PKCE authentication flow  
- Two-step GitHub Actions workflow (URL generation → token exchange)
- Secure credential storage with proper error handling
- TypeScript implementation with comprehensive test suite
- Ready for GitHub Marketplace publication
- **Custom branding** with log-in icon and orange color
- **Optimized for GitHub Actions** environment

## Usage
Create `.github/workflows/claude-oauth.yml`:

```yaml
name: Claude OAuth
on:
  workflow_dispatch:
    inputs:
      code:
        description: 'Authorization code (leave empty for step 1)'
        required: false

jobs:
  auth:
    runs-on: ubuntu-latest
    steps:
      - uses: grll/claude-code-login@v1
        with:
          code: ${{ inputs.code }}
```

## What's Included
- OAuth URL generation with PKCE security
- Authorization code exchange for access tokens  
- Credential persistence to credentials.json
- GitHub Actions integration with proper outputs
- Comprehensive error handling and user guidance
- **Optimized action configuration**

## Files
- `action.yml` - GitHub Action definition with proper setup
- `index.ts` - Main OAuth implementation  
- `index.test.ts` - Test suite (25 tests, 100% pass)
- `README.md` - Documentation and usage guide
- `scripts/` - Automation scripts

## Getting Started
1. Copy the workflow YAML above to your repository
2. Run the workflow without code parameter to get login URL
3. Follow the OAuth flow and get your authorization code
4. Run the workflow again with the authorization code
5. Your credentials will be saved to `credentials.json`

Perfect for CI/CD workflows that need Claude Code authentication!

---
*This release was automatically updated to include the latest changes.*
