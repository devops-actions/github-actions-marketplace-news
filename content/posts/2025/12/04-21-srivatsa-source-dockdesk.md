---
title: dock-desk
date: 2025-12-04 21:55:38 +00:00
tags:
  - srivatsa-source
  - GitHub Actions
draft: false
repo: https://github.com/srivatsa-source/dockdesk
marketplace: https://github.com/marketplace/actions/dock-desk
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/srivatsa-source/dockdesk** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dock-desk) to find the latest changes.

## Release notes

# 🚀 DockDesk v1.0.1: Initial Launch

**DockDesk** is the AI-powered auditor that ensures your code never drifts from your documentation. This is the first official release for the GitHub Marketplace.

## ✨ Key Features
* **🤖 AI-Powered Analysis:** Runs on **Google Gemini 2.0 Flash** (Fast & Free) or OpenAI models.
* **🧠 Smart Scan Mode:** Automatically detects which code files changed in a Pull Request—no need to list them manually.
* **🗣️ Active Feedback:** Blocks the Pull Request and comments directly on the line of code that contradicts the documentation.
* **🛠️ Auto-Fix Suggestions:** Provides the exact Markdown text needed to update your docs.
* **🛡️ Robust Fallback:** Automatically retries across multiple AI models (`gemini-2.0-flash`, `gemini-1.5-flash`, `gemini-pro`) to ensure reliability.

## 📦 How to Use
Add this to your `.github/workflows/dockdesk.yml`:

```yaml
name: DockDesk Audit
on: [pull_request]

jobs:
  audit:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
    steps:
      - uses: actions/checkout@v3
      - name: Run AI Auditor
        uses: srivatsa-source/dockdesk@v1.0.1
        with:
          openai_api_key: ${{ secrets.OPENAI_API_KEY }} # Supports Gemini Keys
          github_token: ${{ secrets.GITHUB_TOKEN }}
          code_file: 'AUTO'
          doc_file: 'README.md'
