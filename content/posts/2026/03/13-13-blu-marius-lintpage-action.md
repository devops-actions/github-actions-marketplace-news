---
title: LintPage SEO Check
date: 2026-03-13 13:34:16 +00:00
tags:
  - blu-marius
  - GitHub Actions
draft: false
repo: https://github.com/blu-marius/lintpage-action
marketplace: https://github.com/marketplace/actions/lintpage-seo-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/blu-marius/lintpage-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lintpage-seo-check) to find the latest changes.

## Action Summary

The **LintPage Action** is a GitHub Action designed to automate SEO audits for preview deployments or specified URLs, identifying potential SEO issues before they reach production. It integrates with deployment workflows and highlights issues directly as annotations in pull requests, helping developers maintain SEO standards effortlessly. Key capabilities include automatic URL detection, customizable configurations, and the ability to fail builds on critical issues or warnings.

## Release notes

Catch SEO issues on preview deployments before they reach production.

  ## Features

  - Automatic URL detection from Vercel/Netlify `deployment_status` events
  - Manual URL input for staging or localhost builds
  - GitHub annotations — issues appear inline on your PR
  - Custom config file support (`.lintpagerc.json`)
  - Optional `fail-on-warning` to enforce stricter checks
  - Optional dashboard reporting via API key

  ## Quick start

  ```yaml
  name: SEO Check
  on: deployment_status

  jobs:
    lintpage:
      if: github.event.deployment_status.state == 'success'
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: lintpage/action@v1
