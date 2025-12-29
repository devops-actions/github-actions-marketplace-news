---
title: VulnPath - Package Usage Security Scanner
date: 2025-12-29 13:12:58 +00:00
tags:
  - bashebr
  - GitHub Actions
draft: false
repo: https://github.com/bashebr/vulnpath-action
marketplace: https://github.com/marketplace/actions/vulnpath-package-usage-security-scanner
version: v0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/bashebr/vulnpath-action** to version **v0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vulnpath-package-usage-security-scanner) to find the latest changes.

## Action Summary

The VulnPath GitHub Action helps prioritize security fixes by analyzing your codebase to determine if vulnerable dependencies flagged by Dependabot are actually being used. It supports Node.js and PHP projects, scans dependency files, and performs usage analysis to identify active imports or namespaces. The action provides actionable insights through PR comments, enabling developers to focus on addressing high-risk vulnerabilities efficiently.

## Release notes

### 🚀 Release: VulnPath Security Scan v1.0.0
We are excited to announce the first production release of VulnPath, a GitHub Action designed to help you prioritize security fixes by identifying if vulnerable packages are actually imported in your code.

## **✨ Key Features**

- 🛡️ Multi-Ecosystem Scanning: Seamlessly scans both 

     package.json
     (.Node.js) and 
     composer.json
       (PHP) for known vulnerabilities using the [OSV.dev](https://osv.dev/) database.
- 🔍 Intelligent Usage Analysis:
JS/TS: Uses Babel AST parsing to detect exactly where import or require statements are used.
PHP: Uses namespace-aware heuristics to detect use statements and fully qualified class calls in your 
.php
 files.
- 💬 Automated PR Feedback: Posts (and updates) detailed comments on your Pull Requests, categorizing vulnerabilities into 🚨 Package In Use and ⚠️ Package Unused.
- ⚙️ Configurable Enforcement: Optionally fail your CI/CD pipeline only if vulnerable packages are actively being used in the code.
- 🚀 Zero Configuration: Works out of the box with standard Node.js and PHP project structures.
## **📦 What's Included**
- **Core Scanner**: Orchestrates ecosystem-specific checks.
- **Analyzers**: High-performance AST and Regex-based code analyzers.
- **Action Bundle**: A minified, single-file distribution (
    dist/index.js) for fast execution.
- **Documentation**: Comprehensive README.md
## 🛠️ How to Use
Add the following step to your GitHub Actions workflow:

```
yaml
- name: VulnPath Security Scan
  uses: your-username/vulnpath-action@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    fail-on-vulnerability: true
```
