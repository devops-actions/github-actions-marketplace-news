---
title: Telegram Bot Notifier
date: 2026-03-15 05:58:06 +00:00
tags:
  - crasivo
  - GitHub Actions
draft: false
repo: https://github.com/crasivo/telegram-action
marketplace: https://github.com/marketplace/actions/telegram-bot-notifier
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/crasivo/telegram-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/telegram-bot-notifier) to find the latest changes.

## Action Summary

The Telegram Notifier Action is a GitHub Action designed to automate the process of sending text messages and files to Telegram. It simplifies communication by allowing developers to seamlessly notify Telegram users or channels about events such as build completions or report availability directly from their CI/CD workflows. Key capabilities include sending messages, files, and inline buttons with customizable formatting and notification preferences, all with a focus on ease of use and transparency.

## Release notes

## 🚀 Release v1.1.0: Technical Modernization & Node.js 24 Support

This version brings a major overhaul of the internal architecture, moving the project to a modern tech stack and ensuring long-term compatibility with GitHub Actions environments.

### 🛠 Improvements
- **Node.js 24 Support**: Upgraded the runtime engine to v24, staying ahead of GitHub's upcoming infrastructure transitions.
- **Native ESM**: The project is now fully converted to ECMAScript Modules (ESM), utilizing `NodeNext` resolution for better performance and standards compliance.
- **Vitest Migration**: Replaced Jest with Vitest for significantly faster test execution and native TypeScript/ESM support.
- **Dependency Refresh**: All core libraries, including `@actions/*`, have been updated to their latest major versions to ensure security and stability.

### 📦 Technical Changes
- Optimized the build pipeline with Rollup to output clean ES modules.
- Refined the test suite to use `vi` mocking system, improving reliability in asynchronous test cases.

### ⚠️ Internal Note for Developers

If you are contributing to this repository, please ensure you are using **Node.js 24** or higher and run `npm install` to update your local development environment to use **Vitest** instead of Jest.

