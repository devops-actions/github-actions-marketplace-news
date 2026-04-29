---
title: GraphRisk Security Scan
date: 2026-04-29 22:04:21 +00:00
tags:
  - ioilmio
  - GitHub Actions
draft: false
repo: https://github.com/ioilmio/graphrisk-action
marketplace: https://github.com/marketplace/actions/graphrisk-security-scan
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ioilmio/graphrisk-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graphrisk-security-scan) to find the latest changes.

## Action Summary

GraphRisk Security Scan is a GitHub Action designed to automate deep dependency security scanning within CI/CD pipelines. It identifies vulnerabilities, including transitive ones often missed by other tools, and integrates directly with GitHub's Security tab via SARIF reports, enabling seamless visibility of issues in pull requests. This action simplifies dependency monitoring across multiple ecosystems with zero-configuration support for standard projects and real-time progress tracking.

## What's Changed

✨ What's New in v1.0.3
Configurable Timeout: New timeout input parameter lets you customize maximum wait time for scan completion (default: 600 seconds / 10 minutes). Perfect for large projects with many dependencies.
```yaml
- -uses: ioilmio/graphrisk-action@v1.0.3
    with:
      api-key: ${{ secrets.GRAPHRISK_API_KEY }}
      timeout: 900  # 15 minutes for large monorepos
```

🚀 Features from v1.0.2
- Real-Time Progress Tracking: Watch live scan updates showing:
- Current step (parsing manifest → building dependency graph → scanning vulnerabilities → completed)
- Progress percentage (0-100%)
- Total dependencies being processed
- Vulnerabilities found during scan
- Smart Path Filtering: Scans only trigger when dependency manifest files change, saving CI minutes:
  npm: package.json, package-lock.json, pnpm-lock.yaml, yarn.lock
  pip: requirements.txt
  poetry: pyproject.toml, poetry.lock
  pipenv: Pipfile, Pipfile.lock
  Go: go.mod, go.sum
  Ruby: Gemfile, Gemfile.lock
- SARIF Export Options: Documentation for uploading results to:
- GitHub Security tab (github/codeql-action/upload-sarif)
- Artifact storage (actions/upload-artifact)
- Node.js 24 Ready: Updated to actions/checkout@v5 (fixes Node.js 20 deprecation warning)

🔧 v1.0.1 Improvements
- Added project-id input support
- Polling error limits (max 5 errors before failing)
- Handle empty SARIF results gracefully
- Multi-ecosystem support: npm, pip, pypi, poetry, pipenv, go, rubygems, bundler
- Migrated to Node.js 24 runtime

```yml
- uses: ioilmio/graphrisk-action@v1.0.3
  with:
    api-key: ${{ secrets.GRAPHRISK_API_KEY }}
    ecosystem: 'npm'  # optional, default: npm
    timeout: 600      # optional, default: 600 (10 min)
    ```
