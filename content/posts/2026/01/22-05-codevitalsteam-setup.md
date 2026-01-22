---
title: Code Vitals SEO and Performance Audit
date: 2026-01-22 05:57:40 +00:00
tags:
  - codevitalsteam
  - GitHub Actions
draft: false
repo: https://github.com/codevitalsteam/setup
marketplace: https://github.com/marketplace/actions/code-vitals-seo-and-performance-audit
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/codevitalsteam/setup** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-vitals-seo-and-performance-audit) to find the latest changes.

## Action Summary

The **CodeVitals SEO and Performance Audit** GitHub Action automates post-deployment performance and SEO audits for live sites using Lighthouse and custom SEO checks. It helps teams identify and address performance regressions and SEO issues immediately after deployment, preventing negative impacts on user experience, search rankings, and revenue. The action provides configurable thresholds, rules, and routes, making it adaptable to various project needs, and integrates seamlessly with GitHub Actions workflows.

## Release notes

Added support to generate a consolidated report in json and md formats that can be used to render a report in actions run summary page.

To add a report summary, add these to your job steps
```
- name: Add Job Summary
        run: cat artifacts/summary.md >> "$GITHUB_STEP_SUMMARY"
      - name: Upload CodeVitals artifacts
        uses: actions/upload-artifact@v4
        with:
          name: codevitals-artifacts
          path: artifacts/
```

Here's an example of the full job steps
```
post_deploy_audit:
  needs: deploy
  runs-on: ubuntu-latest
  permissions:
    contents: read
  steps:
    - uses: actions/checkout@v4
    - name: Run CodeVitals post-deploy audit
      uses: codevitalsteam/setup@v1.0.1
      with:
        host: https://example.com
        user_agent: CodeVitalsBot/1.0
        config_path: .codevitals/config.js
        routes_path: .codevitals/routes.js
    - name: Add Job Summary
        run: cat artifacts/summary.md >> "$GITHUB_STEP_SUMMARY"
    - name: Upload CodeVitals artifacts
        uses: actions/upload-artifact@v4
        with:
          name: codevitals-artifacts
          path: artifacts/
````
Here's a sample report 
<img width="1032" height="1019" alt="Screenshot 2026-01-21 at 3 49 39 PM" src="https://github.com/user-attachments/assets/8598225c-d4af-4071-aaf7-e78dbde2df8c" />


