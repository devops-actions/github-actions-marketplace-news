---
title: TestFlight PM - Enhanced Issue Management
date: 2025-07-28 08:59:08 +00:00
tags:
  - vishrutkmr7
  - GitHub Actions
draft: false
repo: https://github.com/vishrutkmr7/testflight-pm
marketplace: https://github.com/marketplace/actions/testflight-pm-enhanced-issue-management
version: 1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/vishrutkmr7/testflight-pm** to version **1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testflight-pm-enhanced-issue-management) to find the latest changes.

## Release notes

# TestFlight PM - Enhanced Issue Management v1.0.0

Intelligently process TestFlight feedback and crash reports with automated issue creation for GitHub and Linear.

## 🚀 Features

- **Smart Crash Processing**: Automatically detects and processes TestFlight crash reports
- **Feedback Analysis**: Processes user feedback with intelligent categorization  
- **LLM Enhancement**: Optional AI-powered issue enhancement with multiple provider support (OpenAI, Anthropic, Google, DeepSeek, xAI)
- **Dual Platform Support**: Creates issues in both GitHub and Linear
- **Duplicate Detection**: Prevents duplicate issues with intelligent matching
- **Codebase Analysis**: Correlates feedback with relevant code areas
- **Cost Controls**: Built-in LLM cost management and budgeting

## 🔧 Quick Start

```yaml
- uses: vishrutkmr7/testflight-pm@v1.0.0
  with:
    testflight_issuer_id: ${{ secrets.TESTFLIGHT_ISSUER_ID }}
    testflight_key_id: ${{ secrets.TESTFLIGHT_KEY_ID }}
    testflight_private_key: ${{ secrets.TESTFLIGHT_PRIVATE_KEY }}
    app_id: ${{ secrets.APP_ID }}
    github_token: ${{ secrets.GITHUB_TOKEN }}
```

## 📋 Requirements

- App Store Connect API access
- GitHub or Linear account for issue management
- Optional: LLM API keys for enhanced processing
