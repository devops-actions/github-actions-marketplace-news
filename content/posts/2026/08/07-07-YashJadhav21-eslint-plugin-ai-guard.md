---
title: ESLint AI Guard
date: 2026-08-07 07:08:20 +00:00
tags:
  - YashJadhav21
  - GitHub Actions
draft: false
repo: https://github.com/YashJadhav21/eslint-plugin-ai-guard
marketplace: https://github.com/marketplace/actions/eslint-ai-guard
version: v1.3.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
actionSummary: |
  **Purpose and Functionality:** The GitHub Action **ai-guard** is designed to prevent AI-generated code from introducing reliability and security bugs into your project by identifying and flagging patterns that are consistently incorrect. 
  
  **Problems Solved:** It helps catch errors such as missing error handling, asynchronous callback errors, insecure API usage, and dead scaffolding in generated code.
  
  **Key Capabilities:** 
  - **Inline PR Annotations:** Highlights issues directly within GitHub pull requests.
  - **SARIF Reports for Code Scanning:** Provides detailed reports for GitHub Code Scanning to support automated security audits.
  - **Blocking Merges:** Prevents the merge of potentially risky changes until issues are addressed.
  
  **Installation and Quick Start:** No additional configuration is required; it automatically integrates with GitHub workflows.
---


Version updated for **https://github.com/YashJadhav21/eslint-plugin-ai-guard** to version **v1.3.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eslint-ai-guard) to find the latest changes.

## Action Summary

**Purpose and Functionality:** The GitHub Action **ai-guard** is designed to prevent AI-generated code from introducing reliability and security bugs into your project by identifying and flagging patterns that are consistently incorrect. 

**Problems Solved:** It helps catch errors such as missing error handling, asynchronous callback errors, insecure API usage, and dead scaffolding in generated code.

**Key Capabilities:** 
- **Inline PR Annotations:** Highlights issues directly within GitHub pull requests.
- **SARIF Reports for Code Scanning:** Provides detailed reports for GitHub Code Scanning to support automated security audits.
- **Blocking Merges:** Prevents the merge of potentially risky changes until issues are addressed.

**Installation and Quick Start:** No additional configuration is required; it automatically integrates with GitHub workflows.

## What's Changed

# AI Guard v1.3.0

This release focuses on improving reliability, developer experience, and GitHub integration.

## What's new

- Reduced false positives after validation against multiple real-world repositories.
- Improved `ai-guard init --yes` for one-command project setup.
- Better GitHub Actions integration with SARIF output and PR annotations.
- Added FAQs, troubleshooting guides, and benchmark documentation.
- Improved self-validation and workflow reliability.

## GitHub Action

Run AI Guard directly in your CI:

```yaml
- uses: YashJadhav21/eslint-plugin-ai-guard@v1
  with:
    preset: recommended
```

The Action can:

- Review changed files in pull requests
- Generate SARIF reports
- Upload results to GitHub Code Scanning
- Add inline PR annotations
- Fail builds based on severity thresholds

## Package

```bash
npm install --save-dev eslint-plugin-ai-guard
```

or

```bash
npx ai-guard init --yes
```

## Resources

- **GitHub:** https://github.com/YashJadhav21/eslint-plugin-ai-guard
- **npm:** https://www.npmjs.com/package/eslint-plugin-ai-guard

## Demo

<img width="1348" height="600" alt="ezgif com-speed" src="https://github.com/user-attachments/assets/81b9ae6c-fb0f-4492-8d94-9869bcbea505" />


---

Thanks to everyone who has tried AI Guard, opened discussions, shared feedback, or adopted it in their projects. Every suggestion has helped improve the rules and reduce false positives.
