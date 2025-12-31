---
title: Ridvay Security Review
date: 2025-12-31 13:08:04 +00:00
tags:
  - ridvay-ai
  - GitHub Actions
draft: false
repo: https://github.com/ridvay-ai/security-review
marketplace: https://github.com/marketplace/actions/ridvay-security-review
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/ridvay-ai/security-review** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ridvay-security-review) to find the latest changes.

## Action Summary

The Ridvay Security Review GitHub Action automates security vulnerability analysis for pull requests using AI-powered large language models (LLMs). It streamlines the process of identifying complex security flaws in code changes, ensuring fast and secure reviews by leveraging the Ridvay API. This action helps developers maintain secure codebases by providing an automated, provider-agnostic solution for detecting potential vulnerabilities during the development workflow.

## Release notes

# 🛡️ Ridvay Security Guard: AI-Powered Code Auditor v1.1.1

## Release Description

**Stop worrying about vulnerabilities and focus on the vibe.**

Ridvay Security Guard is the ultimate AI-driven security auditor for your GitHub repository. Designed for high-velocity teams and modern "vibe coders," it automatically scans your code changes for security flaws (OWASP Top 10, Secrets, SQLi, XSS, etc.) and provides instant feedback exactly where you need it.

---

### 🚀 Key Features

*   **Inline PR Reviews**: Get high-context security feedback directly on the lines you changed. 
*   **Comparison Range Scanning**: Deep diff analysis between commits on your main branch for total visibility.
*   **The "Shield of Truth"**: Configure your build to fail on `High` or `Critical` issues for branch merges.
*   **Zero Data Retention**: We prioritize your privacy. Ridvay processes your code for analysis only—**nothing is stored on our side**.
*   **Auto-Cleanup**: Keeps your PRs clean by automatically removing stale reports before posting fresh ones.

---

### 📸 Visuals
<img width="910" height="650" alt="Screenshot 2025-12-30 at 10 08 20 PM" src="https://github.com/user-attachments/assets/776cea8a-c1ae-41f9-8c06-51b8c11673de" />
<img width="823" height="336" alt="Screenshot 2025-12-30 at 10 08 34 PM" src="https://github.com/user-attachments/assets/67c57c91-c08d-4ca2-a5fc-1b5baf8f7ad3" />

---

### 🛠 How to Level Up Your Workflow

#### 1. Instant Pull Request Protection
Add this to your `.github/workflows/security.yml` to audit every code change before it hits your codebase.

```yaml
on:
  pull_request:
    types: [opened, synchronize, reopened]

jobs:
  security-review:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
      issues: write
    steps:
      - name: Audit Changes
        uses: ridvay-ai/security-review@v1
        with:
          ridvay-api-key: ${{ secrets.RIDVAY_API_KEY }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

#### 2. The "Shield of Truth" for Main Merges
Ensure your source of truth stays secure. Set a severity threshold to **fail the build** if vulnerabilities are detected during a branch push.

```yaml
on:
  push:
    branches: [main]

jobs:
  main-branch-audit:
    runs-on: ubuntu-latest
    permissions:
      contents: read
    steps:
      - name: Compare & Guard
        uses: ridvay-ai/security-review@v1
        with:
          ridvay-api-key: ${{ secrets.RIDVAY_API_KEY }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
          fail-on-severity: High # Fails the build for branch scans
```

---

### 🔐 Required Permissions

For the action to function correctly, your job needs the following permissions:

*   **`contents: read`**: Required to read the code changes for analysis.
*   **`pull-requests: write`**: Required to post inline review comments on your Pull Requests.
*   **`issues: write`**: Required to post report summaries on your PR/Issue timeline.

**Example Minimal Permissions Block:**
```yaml
permissions:
  contents: read
  pull-requests: write
  issues: write
```

---

### ⚙️ Action Configuration

| Input | Description | Default |
| :--- | :--- | :--- |
| `ridvay-api-key` | Your unique API key from ridvay.com | **Required** |
| `github-token` | Your GitHub Secret Token | `secrets.GITHUB_TOKEN` |
| `fail-on-severity` | Fail threshold (`Low`, `Medium`, `High`, `Critical`) | `None` |

> **Note**: The `fail-on-severity` setting is optimized for branch scans. For Pull Requests, we use **Actionable Inline Comments** so you can fix the vibe without stopping the build.

---

### 🔒 Privacy First
Your code is your IP. Ridvay functions as a stateless auditor. **We do not store your code, diffs, or repository data.** Our analysis happens in real-time, and once the report is generated, the data is purged from our systems immediately.

**Build fast. Build secure. Ride the [Ridvay](https://ridvay.com) wave. 🌊**


